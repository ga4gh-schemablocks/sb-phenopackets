
## Disease

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - ____

<!--more-->

### Source

* raw source [[JSON](./Disease.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/working/Disease.yaml)

### Attributes
  
__Type:__ object  
__Description:__ Message to indicate a disease (diagnosis) and its recorded onset.


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>ageOfOnset</td>
    <td>https://schemablocks.org/schemas/ga4gh/Age/v0.0.1</td>
  </tr>
  <tr>
    <td>ageRangeOfOnset</td>
    <td>https://schemablocks.org/schemas/ga4gh/AgeRange/v0.0.1</td>
  </tr>
  <tr>
    <td>classOfOnset</td>
    <td>https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1</td>
  </tr>
  <tr>
    <td>term</td>
    <td>https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1</td>
  </tr>

</table>


#### ageOfOnset

* type: https://schemablocks.org/schemas/ga4gh/Age/v0.0.1

The onset of the disease. The values of this will come from the HPO onset hierarchy
i.e. subclasses of HP:0003674
FHIR mapping: Condition.onset


##### `ageOfOnset` Value Example  

```
{
   "age" : "P35Y",
   "ageClass" : {
      "id" : "HP:0003596",
      "label" : "Middle age onset"
   }
}
```

#### ageRangeOfOnset

* type: https://schemablocks.org/schemas/ga4gh/AgeRange/v0.0.1

The onset of the disease. The values of this will come from the HPO onset hierarchy
i.e. subclasses of HP:0003674
FHIR mapping: Condition.onset


##### `ageRangeOfOnset` Value Example  

```
{
   "start" : {
      "age" : "P35Y",
      "ageClass" : {
         "id" : "HP:0003596",
         "label" : "Middle age onset"
      }
   }
}
```

#### classOfOnset

* type: https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1

The onset of the disease. The values of this will come from the HPO onset hierarchy
i.e. subclasses of HP:0003674
FHIR mapping: Condition.onset


##### `classOfOnset` Value Example  

```
{
   "id" : "HP:0003596",
   "label" : "Middle age onset"
}
```

#### term

* type: https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1

The identifier of this disease
e.g. MONDO:0007043, OMIM:101600, Orphanet:710, DOID:14705 (note these are all equivalent)


##### `term` Value Example  

```
{
   "id" : "MONDO:0007043"
}
```


### `Disease` Value Example  

```
{
   "classOfOnset" : {
      "id" : "HP:0003596",
      "label" : "Middle age onset"
   },
   "term" : {
      "id" : "MONDO:0007043",
      "label" : "Pfeiffer syndrome"
   }
}
```

