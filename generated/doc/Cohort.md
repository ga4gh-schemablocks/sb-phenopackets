
## Cohort

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - ____

<!--more-->

### Source

* raw source [[JSON](./Cohort.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/working/Cohort.yaml)

### Attributes
  
__Type:__ object  
__Description:__ A group of individuals related in some phenotypic or genotypic aspect


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>description</td>
    <td>string</td>
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
    <td>members</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/Phenopacket/v0.0.1</td>
  </tr>
  <tr>
    <td>metaData</td>
    <td></td>
  </tr>

</table>


#### description

* type: string

description about the cohort

##### `description` Value Example  

```
"this is a description about the cohort"
```

#### htsFiles

* type: array of https://schemablocks.org/schemas/ga4gh/HtsFile/v0.0.1

Pointer to the relevant HTS file(s) for the cohort


##### `htsFiles` Value Example  

```
{
   "file" : {
      "path" : "/data/genomes/file1.vcf.gz",
      "uri" : "file://data/genomes/file1.vcf.gz"
   },
   "htsFormat" : "GVCF"
}
```

#### id

* type: string

An identifier specific to the cohort

##### `id` Value Example  

```
"cohort-id-123"
```

#### members

* type: array of https://schemablocks.org/schemas/ga4gh/Phenopacket/v0.0.1

add description

##### `members` Value Example  

```
{
   "id" : "phenopacketid-123",
   "metaData" : {
      "created" : "2016-06-29T12:03:03.240Z",
      "updated" : [
         "2018-06-10T10:59:06.784Z"
      ]
   }
}
```

#### metaData

* type: 



##### `metaData` Value Example  



### `Cohort` Value Example  

```
{
   "id" : "cohort-id-123",
   "metaData" : {
      "created" : "2016-06-29T12:03:03.240Z",
      "updated" : [
         "2018-06-10T10:59:06.784Z"
      ]
   }
}
```

