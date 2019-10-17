
## Phenopacket

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - ____

<!--more-->

### Source

* raw source [[JSON](./Phenopacket.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/working/Phenopacket.yaml)

### Attributes
  
__Type:__ object  
__Description:__ An anonymous phenotypic description of an individual or biosample with potential genes of interest and/or diagnoses.
This is a bundle of high-level concepts with no specifically defined relational concepts. It is expected that the
resources sharing the phenopackets will define and enforce their own semantics and level of requirements for included
fields.


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>biosamples</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/Biosample/v0.0.1</td>
  </tr>
  <tr>
    <td>diseases</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/Disease/v0.0.1</td>
  </tr>
  <tr>
    <td>genes</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/Gene/v0.0.1</td>
  </tr>
  <tr>
    <td>htsFiles</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/HtsFile/v0.0.1</td>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>metaData</td>
    <td></td>
  </tr>
  <tr>
    <td>phenotypicFeatures</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/PhenotypicFeature/v0.0.1</td>
  </tr>
  <tr>
    <td>subject</td>
    <td></td>
  </tr>
  <tr>
    <td>variants</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/Variant/v0.0.1</td>
  </tr>

</table>


#### biosamples

* type: array of https://schemablocks.org/schemas/ga4gh/Biosample/v0.0.1

Biosample(s) derived from the patient or a collection of biosamples in isolation


##### `biosamples` Value Example  

```
[
   {
      "description" : "THP-1; 6 hours; DMSO; Replicate 1",
      "id" : "SAMN05324082",
      "individualId" : "SAMN05324082-individual",
      "sampledTissue" : {
         "id" : "UBERON:0000178",
         "label" : "peripheral blood"
      }
   }
]
```

#### diseases

* type: array of https://schemablocks.org/schemas/ga4gh/Disease/v0.0.1

Field for disease identifiers - could be used for listing either diagnosed or suspected conditions. The
resources using these fields should define what this represents in their context.


##### `diseases` Value Example  

```
[
   {
      "classOfOnset" : {
         "id" : "HP:0003596",
         "label" : "Middle age onset"
      },
      "id" : "MONDO:0007043",
      "label" : "Pfeiffer syndrome",
      "term" : null
   }
]
```

#### genes

* type: array of https://schemablocks.org/schemas/ga4gh/Gene/v0.0.1

Field for gene identifiers - could be used for listing either candidate genes or causative genes. The
resources using these fields should define what this represents in their context. This could be used in order to
obfuscate the specific causative/candidate variant.


##### `genes` Value Example  

```
[
   {
      "id" : "HGNC:3477",
      "symbol" : "ETF1"
   }
]
```

#### htsFiles

* type: array of https://schemablocks.org/schemas/ga4gh/HtsFile/v0.0.1

Pointer to the relevant HTS file(s) for the patient


##### `htsFiles` Value Example  

```
[
   {
      "file" : {
         "path" : "/data/genomes/file1.vcf.gz",
         "uri" : "file://data/genomes/file1.vcf.gz"
      },
      "htsFormat" : "GVCF"
   }
]
```

#### id

* type: string

An identifier specific for this phenopacket

##### `id` Value Example  

```
"phenopacketid123"
```

#### metaData

* type: 



##### `metaData` Value Example  


#### phenotypicFeatures

* type: array of https://schemablocks.org/schemas/ga4gh/PhenotypicFeature/v0.0.1

Phenotypic features relating to the subject of the phenopacket


##### `phenotypicFeatures` Value Example  

```
[
   {
      "description" : "add example",
      "type" : {
         "id" : "add example",
         "label" : "add example"
      }
   }
]
```

#### subject

* type: 



##### `subject` Value Example  


#### variants

* type: array of https://schemablocks.org/schemas/ga4gh/Variant/v0.0.1

Field for genetic variants - could be used for listing either candidate variants or diagnosed causative
variants. The resources using these fields should define what this represents in their context.


##### `variants` Value Example  

```
[
   {
      "description" : "description of variant",
      "id" : "ID_12345",
      "murineAllele" : {
         "alleleSymbol" : "tm1Hcd",
         "gene" : "Fbn1",
         "id" : "MGI:3690325"
      }
   }
]
```


### `Phenopacket` Value Example  

```
{
   "biosamples" : [
      {
         "description" : "THP-1; 6 hours; DMSO; Replicate 1",
         "id" : "SAMN05324082",
         "individualId" : "SAMN05324082-individual",
         "sampledTissue" : {
            "id" : "UBERON:0000178",
            "label" : "peripheral blood"
         }
      }
   ],
   "id" : "phenopacketid-123",
   "metaData" : {
      "created" : "2016-06-29T12:03:03.240Z",
      "updated" : [
         "2018-06-10T10:59:06.784Z"
      ]
   },
   "subject" : {
      "id" : "SAMN05324082-individual",
      "sex" : "MALE",
      "taxonomy" : {
         "id" : "NCBITaxon:9606",
         "label" : "Homo sapiens"
      }
   }
}
```

