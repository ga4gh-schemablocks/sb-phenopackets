
## VcfAllele

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - ____

<!--more-->

### Source

* raw source [[JSON](./VcfAllele.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/working/VcfAllele.yaml)

### Attributes
  
__Type:__ object  
__Description:__ A single VCF allele.
For structural variation the INFO field should contain the relevant information e.g.
END=43500;SVTYPE=DUP;CHR2=1;SVLEN=29000;
See https://samtools.github.io/hts-specs/VCFv4.3.pdf


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>alt</td>
    <td>string</td>
  </tr>
  <tr>
    <td>chr</td>
    <td>string</td>
  </tr>
  <tr>
    <td>genomeAssembly</td>
    <td>string</td>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>info</td>
    <td>string</td>
  </tr>
  <tr>
    <td>pos</td>
    <td>integer</td>
  </tr>
  <tr>
    <td>ref</td>
    <td>string</td>
  </tr>

</table>


#### alt

* type: string

add description

##### `alt` Value Example  

```
"G"
```

#### chr

* type: string

add description

##### `chr` Value Example  

```
"10"
```

#### genomeAssembly

* type: string

Genome assembly the allele was called against. We recommend using the Genome Reference Consortium
nomenclature e.g. GRCh37, GRCh38


##### `genomeAssembly` Value Example  

```
"GRCh37"
```

#### id

* type: string

add description

##### `id` Value Example  

```
"add example"
```

#### info

* type: string

add description

##### `info` Value Example  

```
"add example"
```

#### pos

* type: integer

add description

##### `pos` Value Example  

```
"123256215"
```

#### ref

* type: string

add description

##### `ref` Value Example  

```
"T"
```


### `VcfAllele` Value Example  

```
{
   "alt" : "G",
   "chr" : "10",
   "genomeAssembly" : "GRCh37",
   "pos" : "123256215",
   "ref" : "T"
}
```

