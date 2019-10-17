
## Gene

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - ____

<!--more-->

### Source

* raw source [[JSON](./Gene.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/working/Gene.yaml)

### Attributes
  
__Type:__ object  
__Description:__ Gene identifier


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>symbol</td>
    <td>string</td>
  </tr>

</table>


#### id

* type: string

The official gene identifier as designated by the organism gene nomenclature committee e.g. HGNC:3477 or MGI:2385071
Preferentially this should be a CURIE, however it is acceptable to use another equivalent resource identifier
such as ENSG00000120705, uc003ldc.6
refere to - https://www.genenames.org/data/gene-symbol-report/#!/hgnc_id/HGNC:3477


##### `id` Value Example  

```
"HGNC:3477"
```

#### symbol

* type: string

The official gene symbol as designated by the organism gene nomenclature committee e.g. ETF1 or Etf1


##### `symbol` Value Example  

```
"ETF1"
```


### `Gene` Value Examples  

```
{
   "id" : "HGNC:3477",
   "symbol" : "ETF1"
}
```
```
{
   "id" : "HGNC:3689",
   "symbol" : "FGFR2"
}
```

