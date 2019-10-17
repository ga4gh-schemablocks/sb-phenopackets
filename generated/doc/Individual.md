
## Individual

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - ____

<!--more-->

### Source

* raw source [[JSON](./Individual.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/working/Individual.yaml)

### Attributes
  
__Type:__ object  
__Description:__ An individual is a single organism (here typically a human).


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>ageAtCollection</td>
    <td>https://schemablocks.org/schemas/ga4gh/Age/v0.0.1</td>
  </tr>
  <tr>
    <td>ageRangeAtCollection</td>
    <td>https://schemablocks.org/schemas/ga4gh/AgeRange/v0.0.1</td>
  </tr>
  <tr>
    <td>datasetId</td>
    <td>string</td>
  </tr>
  <tr>
    <td>dateOfBirth</td>
    <td>string</td>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>karyotypicSex</td>
    <td>https://schemablocks.org/schemas/ga4gh/KaryotypicSex/v0.0.1</td>
  </tr>
  <tr>
    <td>sex</td>
    <td></td>
  </tr>
  <tr>
    <td>taxonomy</td>
    <td>https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1</td>
  </tr>

</table>


#### ageAtCollection

* type: https://schemablocks.org/schemas/ga4gh/Age/v0.0.1

An age object describing the age of the individual at the time of collection.
The Age object allows the encoding of the age either as ISO8601 duration or
time interval (preferred), or as ontology term object.


##### `ageAtCollection` Value Example  

```
{
   "age" : "P14Y"
}
```

#### ageRangeAtCollection

* type: https://schemablocks.org/schemas/ga4gh/AgeRange/v0.0.1

An age object describing the age of the individual at the time of collection.
The Age object allows the encoding of the age either as ISO8601 duration or
time interval (preferred), or as ontology term object.


##### `ageRangeAtCollection` Value Example  

```
{
   "start" : {
      "age" : "P14Y"
   }
}
```

#### datasetId

* type: string

The ID of the dataset this Individual belongs to.

##### `datasetId` Value Example  

```
"ABCD1234"
```

#### dateOfBirth

* type: string

The date of birth of the individual as an ISO8601 UTC timestamp - rounded down to the closest known
year/month/day/hour/minute


##### `dateOfBirth` Value Example  

```
"2018-03-01T00:00:00Z"
```

#### id

* type: string

The local-unique identifier of this individual

##### `id` Value Example  

```
"AM_BS__NCBISKYCGH-1993"
```

#### karyotypicSex

* type: https://schemablocks.org/schemas/ga4gh/KaryotypicSex/v0.0.1

Karyotypic sex of the individual,
one of UNKNOWN_KARYOTYPE, XX, XY, XO, XXY, XXX, XXYY, XXXY, XXXX, XYY, OTHER_KARYO,


##### `karyotypicSex` Value Example  

```
"XX"
```

#### sex

* type: 

The phenotypic/ administrative sex of the individual, one of UNKNOWN_SEX, FEMALE, MALE, OTHER_SEX

##### `sex` Value Example  

```
"FEMALE"
```

#### taxonomy

* type: https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1

NCBI taxonomic identifier. For resources where there may be more than one organism being studied
it is advisable to indicate the taxonomic identifier of that organism, to its most specific level


##### `taxonomy` Value Example  

```
{
   "id" : "NCBITaxon:9606",
   "label" : "Homo sapiens"
}
```


### `Individual` Value Example  

```
{
   "id" : "SAMN05324082-individual",
   "sex" : "MALE",
   "taxonomy" : {
      "id" : "NCBITaxon:9606",
      "label" : "Homo sapiens"
   }
}
```

