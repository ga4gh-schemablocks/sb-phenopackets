
## Pedigree

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - ____

<!--more-->

### Source

* raw source [[JSON](./Pedigree.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/working/Pedigree.yaml)

### Attributes
  
__Type:__ object  
__Description:__ https://software.broadinstitute.org/gatk/documentation/article?id=11016


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>person</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/Person/v0.0.1</td>
  </tr>

</table>


#### person

* type: array of https://schemablocks.org/schemas/ga4gh/Person/v0.0.1

add description

##### `person` Value Example  

```
[
   {
      "individualId" : "add example"
   }
]
```


### `Pedigree` Value Example  

```
{
   "person" : [
      {
         "individualId" : "add example"
      }
   ]
}
```

