
## MurineAllele

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - ____

<!--more-->

### Source

* raw source [[JSON](./MurineAllele.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/working/MurineAllele.yaml)

### Attributes
  
__Type:__ object  
__Description:__ Message specifically for encoding mouse alleles in accordance with the
International Committee on Standardized Genetic Nomenclature for Mice
The example given here encodes the allele Fbn1<tm1Hcd>
See http://informatics.jax.org/mgihome/nomen/


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>alleleSymbol</td>
    <td>string</td>
  </tr>
  <tr>
    <td>gene</td>
    <td>string</td>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
  </tr>

</table>


#### alleleSymbol

* type: string

The alleleSymbol should be used for denoting the unformatted allele symbol, which is written
in superscript according to the International Committee on Standardized Genetic
Nomenclature for Mice. In written text it is customary to enclose the allele symbol in angled brackets to
denote the superscript e.g. <tm1Hcd>. However in this field the allele code should be stored here as without the
angled brackets e.g. tm1Hcd in order to allow software to correctly format the symbol


##### `alleleSymbol` Value Example  

```
"tm1Hcd"
```

#### gene

* type: string

add description

##### `gene` Value Example  

```
"Fbn1"
```

#### id

* type: string

add description

##### `id` Value Example  

```
"MGI:3690325"
```


### `MurineAllele` Value Example  

```
{
   "alleleSymbol" : "tm1Hcd",
   "gene" : "Fbn1",
   "id" : "MGI:3690325"
}
```

