
## Family

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - ____

<!--more-->

### Source

* raw source [[JSON](./Family.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/working/Family.yaml)

### Attributes
  
__Type:__ object  
__Description:__ Phenotype, sample and pedigree data required for a genomic diagnosis.
Equivalent to the Genomics England InterpretationRequestRD
https://github.com/genomicsengland/GelReportModels/blob/master/schemas/IDLs/org.gel.models.report.avro/5.0.0/InterpretationRequestRD.avdl


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
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
    <td>pedigree</td>
    <td></td>
  </tr>
  <tr>
    <td>proband</td>
    <td></td>
  </tr>
  <tr>
    <td>relatives</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/Phenopacket/v0.0.1</td>
  </tr>

</table>


#### htsFiles

* type: array of https://schemablocks.org/schemas/ga4gh/HtsFile/v0.0.1

Pointer to the relevant HTS file(s) for the family. These should be files relating to one or more of the family
members e.g a multi-sample VCF


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

An identifier specific for this family

##### `id` Value Example  

```
"family-id-123"
```

#### metaData

* type: 



##### `metaData` Value Example  


#### pedigree

* type: 



##### `pedigree` Value Example  


#### proband

* type: 



##### `proband` Value Example  


#### relatives

* type: array of https://schemablocks.org/schemas/ga4gh/Phenopacket/v0.0.1

Individuals related in some way to the patient. For instance, the individuals may be genetically related or may
be members of a cohort. If this field is used, then  it is expected that a pedigree will be included for
genetically related individuals for use cases such as genomic diagnostics. If a phenopacket is being used to
describe one member of a cohort, then in general one phenopacket will be created for each of the individuals in
the cohort.


##### `relatives` Value Example  

```
[
   {
      "id" : "phenopacketid-123",
      "metaData" : {
         "created" : "2016-06-29T12:03:03.240Z",
         "updated" : [
            "2018-06-10T10:59:06.784Z"
         ]
      }
   }
]
```


### `Family` Value Example  

```
{
   "htsFiles" : [
      {
         "file" : {
            "path" : "/data/genomes/file1.vcf.gz",
            "uri" : "file://data/genomes/file1.vcf.gz"
         },
         "tsFormat" : "GVCF"
      }
   ],
   "id" : "family-id-123",
   "metaData" : {
      "created" : "2016-06-29T12:03:03.240Z",
      "updated" : [
         "2018-06-10T10:59:06.784Z"
      ]
   },
   "proband" : {
      "id" : "phenopacketid-123",
      "metaData" : {
         "created" : "2016-06-29T12:03:03.240Z",
         "updated" : [
            "2018-06-10T10:59:06.784Z"
         ]
      }
   }
}
```

