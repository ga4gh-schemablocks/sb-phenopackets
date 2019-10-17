
## HtsFile

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - ____

<!--more-->

### Source

* raw source [[JSON](./HtsFile.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/working/HtsFile.yaml)

### Attributes
  
__Type:__ object  
__Description:__ A file in one of the HTS formats (https://samtools.github.io/hts-specs)


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>file</td>
    <td></td>
  </tr>
  <tr>
    <td>genomeAssembly</td>
    <td>string</td>
  </tr>
  <tr>
    <td>htsFormat</td>
    <td></td>
  </tr>
  <tr>
    <td>individualToSampleIdentifiers</td>
    <td>object</td>
  </tr>

</table>


#### file

* type: 

the actual hts file


##### `file` Value Example  

```
{
   "path" : "/data/genomes/file1.vcf.gz",
   "uri" : "file://data/genomes/file1.vcf.gz"
}
```

#### genomeAssembly

* type: string

Genome assembly the contents of this file was called against. We recommend using the Genome Reference Consortium
nomenclature e.g. GRCh37, GRCh38


##### `genomeAssembly` Value Example  

```
"GRCh37"
```

#### htsFormat

* type: 

one of UNKNOWN, SAM, BAM, CRAM, VCF, BCF, GVCF


##### `htsFormat` Value Example  

```
"SAM"
```

#### individualToSampleIdentifiers

* type: object

A map of identifiers mapping an individual to a sample in the file. The key values must correspond to the
Individual::id for the individuals in the message, the values must map to the samples in the file.


##### `individualToSampleIdentifiers` Value Example  

```
{
   "individual1" : "add example"
}
```


### `HtsFile` Value Example  

```
{
   "file" : {
      "path" : "/data/genomes/file1.vcf.gz",
      "uri" : "file://data/genomes/file1.vcf.gz"
   },
   "htsFormat" : "GVCF"
}
```

