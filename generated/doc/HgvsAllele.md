
## HgvsAllele

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - ____

<!--more-->

### Source

* raw source [[JSON](./HgvsAllele.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/working/HgvsAllele.yaml)

### Attributes
  
__Type:__ object  
__Description:__ A single HGVS allele.
It is recommended that the string is validated using the VariantValidator - https://variantvalidator.org/
See http://varnomen.hgvs.org/recommendations/DNA/variant/alleles/


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>hgvs</td>
    <td>string</td>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
  </tr>

</table>


#### hgvs

* type: string

add description

##### `hgvs` Value Example  

```
"NM_001848.2:c.877G>A"
```

#### id

* type: string

add description

##### `id` Value Example  

```
"add example"
```


### `HgvsAllele` Value Example  

```
{
   "hgvs" : "NM_001848.2:c.877G>A",
   "id" : "add example"
}
```

