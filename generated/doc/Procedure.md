
## Procedure

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - ____

<!--more-->

### Source

* raw source [[JSON](./Procedure.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/working/Procedure.yaml)

### Attributes
  
__Type:__ object  
__Description:__ A clinical procedure performed on a subject. By preference a single concept to indicate both the procedure and the
body site should be used. In cases where this is not possible, the body site should be indicated using a separate
ontology class.


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>bodySite</td>
    <td>https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1</td>
  </tr>
  <tr>
    <td>code</td>
    <td>https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1</td>
  </tr>

</table>


#### bodySite

* type: https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1

FHIR mapping - Procedure.bodySite


##### `bodySite` Value Example  

```
{
   "id" : "UBERON:0003403",
   "label" : "skin of forearm"
}
```

#### code

* type: https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1

FHIR mapping - Procedure.code


##### `code` Value Example  

```
{
   "id" : "NCIT:C28743",
   "label" : "Funch Biopsy"
}
```


### `Procedure` Value Example  

```
{
   "bodySite" : {
      "id" : "UBERON:0003403",
      "label" : "skin of forearm"
   },
   "code" : {
      "id" : "NCIT:C28743",
      "label" : "Funch Biopsy"
   }
}
```

