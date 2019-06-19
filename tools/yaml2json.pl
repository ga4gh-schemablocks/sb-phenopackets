#!/usr/bin/perl

use diagnostics;
=pod

TODO: Fix the Boolean etc. value type 2 string bug.

=cut

use File::Basename;
use JSON::XS;
use YAML::XS qw(LoadFile DumpFile);
use Data::Dumper;
$Data::Dumper::Sortkeys = 1;

binmode STDOUT, ":utf8";

my $here_path   =   File::Basename::dirname( eval { ( caller() )[1] } );
our $config     =   LoadFile($here_path.'/config.yaml') or die "¡No config.yaml file in this path!";

# command line input
my %args        =   @ARGV;
$args{-filter}	||= q{};

# clean-up
foreach my $dir (grep{ /_rel/} keys %{$config->{paths}}) {
  if ($config->{generator_prefix} =~ /.../) {
    my $delCMD  =   'rm '.$config->{paths}->{$dir}.'/'.$config->{generator_prefix}.$args{-filter}.'*';
    print $delCMD."\n";
    `$delCMD`;
  }
}

opendir DIR, $config->{paths}->{'yaml_path_rel'};
foreach (grep{ /ya?ml$/ } readdir(DIR)) { _process_yaml($_) }
close DIR;

exit;

################################################################################
################################################################################
################################################################################
# subs
################################################################################
################################################################################
################################################################################

sub _process_yaml {

  my $file_name =   shift;
  my $base_name =   $file_name;
  my $yaml_file =   $config->{paths}->{'yaml_path_rel'}.'/'.$file_name;

  print "Reading YAML file \"$yaml_file\"\n";

  my $data      =   LoadFile($yaml_file);
  my %classes   =   %{ $data->{definitions} };

  foreach my $className (sort keys %classes) {
  
  	if ($args{-filter} =~ /.../) {
  		if ($className !~ /$args{-filter}/) {
  			next } }

    my $class   =   $classes{$className};
    my $json_file =   $config->{paths}->{'json_path_rel'}.'/'.$config->{generator_prefix}.$className.'.json';
    my $md_file   =   $config->{paths}->{'md_path_rel'}.'/'.$config->{generator_prefix}.$className.'.md';
    # the web file gets a prefix, to ensure that auto-generated
    # and normal pages can be separated w/o using separate logics for the site
    my $md_web_file   =   $config->{paths}->{'md_web_path_rel'}.'/'.$config->{generator_prefix}.$className.'.md';
    my $yaml_src_web_link =   $config->{paths}->{github_repository_path}.'/src/yaml/'.$file_name;

    print "Writing JSON file \"$json_file\"\n";
    open  (FILE, ">", $json_file) || warn 'output file '.$json_file.' could not be created.';
    print FILE  JSON::XS->new->pretty( 1 )->canonical()->encode( $class )."\n";
    close FILE;

    my $jekyll_header =   <<END;
---
title: '$className'
layout: default
permalink: "/schemas/blocks/$className.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---
END

    my $provlabel   =   join(' & ', map{ $_->{description} } @{$data->{info}->{provenance}});
    if ($provlabel !~ /.../) {
      $provlabel    =   q{} }
    else {
      $provlabel    =   '##### From '.$provlabel }
    my $markdown    =   <<END;
## $className
$provlabel

#### Status: __$class->{status}__

<!--more-->

END

    foreach my $attr (qw(provenance used_by)) {
      if ($data->{info}->{$attr}) {
        my $label =   $attr;
        $label  =~  s/\_/ /g;
        $markdown .=  "\n\n#### ".ucfirst($label)."  \n";
        foreach (@{$data->{info}->{$attr}}) {
          my $this  =   $_->{description} ;
          if ($_->{url} =~ /\/\w/) {
            $this =   '['.$this.']('.$_->{url}.')' }
          $markdown .=  "\n* ".$this."  ";

    }}}

    $markdown  	.=   "\n\n";
    $markdown  	.=   '#### Authors'."\n\n* ".join(', ', @{$data->{info}->{authors}})."\n\n";
    $markdown  	.=   '#### Schema source: [YAML file]('.$yaml_src_web_link.')    '."\n";
    $markdown  	.=   '#### Properties of the _'.$className.'_ class    '."\n";
    $markdown  	.=   <<END;

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Format</th>
    <th>Description</th>
  </tr>
END

    foreach my $property ( sort keys %{ $class->{properties} } ) {
    
      my $type  =   $class->{properties}->{$property}->{type};
      if ($class->{properties}->{$property}->{'ref'} =~ /.../) {
        $type   =   $class->{properties}->{$property}->{'ref'};
        if ($type =~  /^\.\/.../) {
          $type =   ':&nbsp;<a href="'.$type.'.html">'.$type.'</a>';
        }     
      }
      my $format  =   $class->{properties}->{$property}->{'format'};
      if ($class->{properties}->{$property}->{items}->{'ref'} =~ /.../) {
        $format   =   $class->{properties}->{$property}->{items}->{'ref'};
        if ($format =~  /^\.\/.../) {
          $format =   ':&nbsp;<a href="'.$format.'.html">'.$format.'</a>';
        }     
      }
      
      $markdown .=  <<END;
  <tr>
    <td>$property</td>
    <td>$type</td>
    <td>$format</td>
    <td>$class->{properties}->{$property}->{description}</td>
  </tr>
END
    }

    $markdown   .=  "\n".'</table>'."\n";

    if ($class->{description}) {
      $markdown .=  "\n\n".'#### Description '."\n".$class->{description}."\n"}

    if ($class->{examples}) {
      $markdown .=  "\n\n".'#### Examples'."\n";

      for my $i (0..$#{ $class->{examples} }) {
        my $printout    =   JSON::XS->new->pretty( 1 )->canonical()->encode( $class->{examples}->[$i] )."\n";
        $printout       =   _clean_numbers_booleans_from_text($printout);
        $markdown .=  '
```
'.$printout.'
```';
        my $expl_file   = $config->{paths}->{'json_examples_path_rel'}.'/'.$config->{generator_prefix}.$base_name.'-'.$className.'-example-'.$i.'.json';
        open  (FILE, ">", $expl_file) || warn 'output file '.$expl_file.' could not be created.';
        print FILE  $printout;
        close FILE;
      }
    }

    $markdown.=  <<END;

--------------------------------------------------------------------------------

<h4>Notes and examples on the <i>$className</i> properties</h4>
END

    foreach my $property ( sort keys %{ $class->{properties} } ) {

      my $md_example  =   _reformat_example($class->{properties}->{$property}->{example});
      $markdown .=  <<END;

##### $property

* $class->{properties}->{$property}->{description}
* example:

```
'$property' : $md_example
```
END

    if ($class->{properties}->{$property}->{queries}) {
      $markdown   .=  '
* Queries:  ';
      foreach my $query (@{$class->{properties}->{$property}->{queries}}) {
        $markdown .=  <<END;
$query->{description}
```
$query->{query}
```
END

    }}
  
  }

  open  (FILE, ">", $md_file) || warn 'output file '. $md_file.' could not be created.';
  print FILE  $markdown."\n";
  close FILE;
  
  print "writing website file $md_web_file\n";
  open  (FILE, ">", $md_web_file) || warn 'output file '. $md_web_file.' could not be created.';
  print FILE  $jekyll_header.$markdown."\n";
  close FILE;
  }
}

################################################################################

sub _reformat_example {

  my $example   =   shift;
  my $md_example    =   Dumper($example);
  $md_example	  =~  s/\$VAR1 \= //;
  $md_example	  =~  s/\n {8}/\n/g;
  $md_example	  =~  s/\;//g;
  $md_example	  =~  s/\n$//;
  if (ref( $example) eq "ARRAY" || ref( $example) eq "HASH") {
    $md_example	=		$md_example }
  else {
    $md_example	=~  s/\'//g;
    $md_example	=		'"'.$md_example.'"' }

  return $md_example;

}

################################################################################

sub _clean_numbers_booleans_from_text {

  my $printout  =   shift;

  my @cleaned;

  foreach my $line (split("\n", $printout)) {
    $line       =~  s/\=\>/:/;
    $line       =~  s/\: [\'\"](\d+?(?:\.\d+?)?)[\'\"]/: $1/;
    push(@cleaned, $line);
  }

  return join("\n", @cleaned);

}
