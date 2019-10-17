
## AgeRange

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - ____

<!--more-->

### Source

* raw source [[JSON](./AgeRange.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/working/AgeRange.yaml)

### Attributes
  
__Type:__ object  
__Description:__ Age range

### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>end</td>
    <td>https://schemablocks.org/schemas/ga4gh/Age/v0.0.1</td>
  </tr>
  <tr>
    <td>start</td>
    <td>https://schemablocks.org/schemas/ga4gh/Age/v0.0.1</td>
  </tr>

</table>


#### end

* type: https://schemablocks.org/schemas/ga4gh/Age/v0.0.1

Age as ISO8601 string or OntologyClass

##### `end` Value Examples  

```
{
   "ageClass" : {
      "id" : "HsapDv:0000086",
      "label" : "adolescent stage"
   }
}
```
```
{
   "age" : "P16Y6M"
}
```

#### start

* type: https://schemablocks.org/schemas/ga4gh/Age/v0.0.1

Age as ISO8601 string or OntologyClass

##### `start` Value Example  

```
{
   "age" : "P12Y"
}
```


### `AgeRange` Value Example  

```
{
   "end" : {
      "age" : "P18Y"
   },
   "start" : {
      "age" : "P12Y",
      "ageClass" : {
         "id" : "HsapDv:0000086",
         "label" : "adolescent stage"
      }
   }
}
```

