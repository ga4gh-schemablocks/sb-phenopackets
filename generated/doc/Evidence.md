
## Evidence

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - ____

<!--more-->

### Source

* raw source [[JSON](./Evidence.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/working/Evidence.yaml)

### Attributes
  
__Type:__ object  
__Description:__ Evidence, FHIR mapping: Condition.evidence (https://www.hl7.org/fhir/condition-definitions.html#Condition.evidence)


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>evidenceCode</td>
    <td>https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1</td>
  </tr>
  <tr>
    <td>reference</td>
    <td>https://schemablocks.org/schemas/ga4gh/ExternalReference/v0.0.1</td>
  </tr>

</table>


#### evidenceCode

* type: https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1

The encoded evidence type using, for example the Evidence & Conclusion Ontology
(ECO - http://purl.obolibrary.org/obo/eco.owl)
FHIR mapping - Condition.evidence.code


##### `evidenceCode` Value Example  

```
{
   "id" : "add example",
   "label" : "add example"
}
```

#### reference

* type: https://schemablocks.org/schemas/ga4gh/ExternalReference/v0.0.1

FHIR mapping - Condition.evidence.detail


##### `reference` Value Example  

```
{
   "description" : "COL6A1 mutation leading to Bethlem myopathy with recurrent hematuria: a case report.",
   "id" : "PMID:30808312"
}
```


### `Evidence` Value Example  

```
{
   "evidenceCode" : {
      "id" : "add example",
      "label" : "add example"
   },
   "reference" : {
      "description" : "COL6A1 mutation leading to Bethlem myopathy with recurrent hematuria: a case report.",
      "id" : "PMID:30808312"
   }
}
```

