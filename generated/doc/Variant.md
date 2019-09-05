
## Variant

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - ____

<!--more-->

### Source

* raw source [[JSON](./Variant.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/working/Variant.yaml)

### Attributes
  
__Type:__ object  
__Description:__ A variant allele. Alleles can be listed using HGVS, VCF, SPDI or ISCN notation.
SPDI format is the exchange standard used for ClinVar, dbSNP and soon the EVA
Tools for interconversion between SPDI, HGVS and VCF exist at https://api.ncbi.nlm.nih.gov/variation/v0/


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>background</td>
    <td>string</td>
  </tr>
  <tr>
    <td>hgvsAllele</td>
    <td>https://schemablocks.org/schemas/ga4gh/HgvsAllele/v0.0.1</td>
  </tr>
  <tr>
    <td>iscnAllele</td>
    <td>https://schemablocks.org/schemas/ga4gh/IscnAllele/v0.0.1</td>
  </tr>
  <tr>
    <td>murineAllele</td>
    <td>https://schemablocks.org/schemas/ga4gh/MurineAllele/v0.0.1</td>
  </tr>
  <tr>
    <td>spdiAllele</td>
    <td>https://schemablocks.org/schemas/ga4gh/SpdiAllele/v0.0.1</td>
  </tr>
  <tr>
    <td>vcfAllele</td>
    <td>https://schemablocks.org/schemas/ga4gh/VcfAllele/v0.0.1</td>
  </tr>
  <tr>
    <td>zygosity</td>
    <td>https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1</td>
  </tr>

</table>


#### background

* type: string

add description

##### `background` Value Example  

```
"involves: 129S1/Sv * 129X1/SvJ * C57BL/6J"
```

#### hgvsAllele

* type: https://schemablocks.org/schemas/ga4gh/HgvsAllele/v0.0.1

add description

##### `hgvsAllele` Value Example  

```
"add example"
```

#### iscnAllele

* type: https://schemablocks.org/schemas/ga4gh/IscnAllele/v0.0.1

add description

##### `iscnAllele` Value Example  

```
"add example"
```

#### murineAllele

* type: https://schemablocks.org/schemas/ga4gh/MurineAllele/v0.0.1

add description

##### `murineAllele` Value Example  

```
{
   "alleleSymbol" : "tm1Hcd",
   "gene" : "Fbn1",
   "id" : "MGI:3690325"
}
```

#### spdiAllele

* type: https://schemablocks.org/schemas/ga4gh/SpdiAllele/v0.0.1

add description

##### `spdiAllele` Value Example  

```
{
   "deletedSequence" : "T",
   "id" : "id_abc_123",
   "insertedSequence" : "G",
   "position" : "123256214",
   "seqId" : "NC_000010.10"
}
```

#### vcfAllele

* type: https://schemablocks.org/schemas/ga4gh/VcfAllele/v0.0.1

add description

##### `vcfAllele` Value Example  

```
{
   "alt" : "G",
   "chr" : "10",
   "genomeAssembly" : "GRCh37",
   "pos" : "123256215",
   "ref" : "T"
}
```

#### zygosity

* type: https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1

add description

##### `zygosity` Value Example  

```
{
   "id" : "GENO:0000135",
   "label" : "heterozygous"
}
```


### `Variant` Value Examples  

```
{
   "background" : "involves: 129S1/Sv * 129X1/SvJ * C57BL/6J",
   "description" : "description of variant",
   "id" : "ID_12345",
   "murineAllele" : {
      "alleleSymbol" : "tm1Hcd",
      "gene" : "Fbn1",
      "id" : "MGI:3690325"
   },
   "zygosity" : {
      "id" : "GENO:0000135",
      "label" : "heterozygous"
   }
}
```
```
{
   "description" : "description of variant",
   "id" : "ID_12345",
   "vcfAllele" : {
      "alt" : "G",
      "chr" : "10",
      "genomeAssembly" : "GRCh37",
      "pos" : "123256215",
      "ref" : "T"
   }
}
```

