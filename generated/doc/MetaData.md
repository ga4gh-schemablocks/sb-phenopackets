
## Metadata

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - ____

<!--more-->

### Source

* raw source [[JSON](./MetaData.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/working/MetaData.yaml)

### Attributes
  
__Type:__ object  
__Description:__ metadata


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>created</td>
    <td>string</td>
  </tr>
  <tr>
    <td>createdBy</td>
    <td>string</td>
  </tr>
  <tr>
    <td>externalReferences</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/ExternalReference/v0.0.1</td>
  </tr>
  <tr>
    <td>resources</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/Resource/v0.0.1</td>
  </tr>
  <tr>
    <td>submittedBy</td>
    <td>string</td>
  </tr>
  <tr>
    <td>updated</td>
    <td>array of array</td>
  </tr>

</table>


#### created

* type: string

ISO8601 UTC timestamp for when this phenopacket was created in ISO "2018-03-01T00:00:00Z"

##### `created` Value Example  

```
"2018-03-01T00:00:00Z"
```

#### createdBy

* type: string

some kind of identifier for the contributor/ program

##### `createdBy` Value Example  

```
"samuel_jackson"
```

#### externalReferences

* type: array of https://schemablocks.org/schemas/ga4gh/ExternalReference/v0.0.1

External identifiers for this message. These are considered different representation of the same record, not
records which are in some other relation with the record at hand. For example this might be a PubMed reference
to a study in which the individuals are reported.


##### `externalReferences` Value Example  

```
[
   {
      "description" : "Cellosaurus cell line identifier",
      "id" : "cellosaurus:CVCL_0312"
   }
]
```

#### resources

* type: array of https://schemablocks.org/schemas/ga4gh/Resource/v0.0.1

A listing of the ontologies/resources referenced in the phenopacket


##### `resources` Value Example  

```
[
   {
      "id" : "12345",
      "name" : "The Human Phenotype Ontology",
      "url" : "http://purl.obolibrary.org/obo/hp.owl"
   },
   {
      "id" : "12345",
      "name" : "The Human Phenotype Ontology",
      "url" : "http://purl.obolibrary.org/obo/hp.owl"
   }
]
```

#### submittedBy

* type: string

Information about the person/organisation/network that has submitted this phenopacket


##### `submittedBy` Value Example  

```
"add example"
```

#### updated

* type: array of array

ISO8601 UTC timestamps at which this record was updated,
in the format YYYY-MM-DDTHH:MM:SS.SSSZ e.g. 2007-12-03T10:15:30.00Z


##### `updated` Value Example  

```
[
   "2007-12-03T10:15:30.00Z",
   "2008-12-03T10:15:30.00Z"
]
```


### `Metadata` Value Examples  

```
{
   "created" : "2016-06-29T12:03:03.240Z",
   "updated" : [
      "2018-06-10T10:59:06.784Z"
   ]
}
```
```
{
   "created" : "2016-06-29T12:03:03.240Z",
   "createdBy" : "samuel_jackson",
   "resources" : [
      {
         "id" : "geno",
         "iriPrefix" : "http://purl.obolibrary.org/obo/GENO_",
         "name" : "Genotype Ontology",
         "namespacePrefix" : "GENO",
         "url" : "http://purl.obolibrary.org/obo/geno.owl",
         "version" : "19-03-2018"
      }
   ],
   "updated" : [
      "2018-06-10T10:59:06.784Z"
   ]
}
```

