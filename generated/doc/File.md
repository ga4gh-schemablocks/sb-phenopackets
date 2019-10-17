
## File

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - ____

<!--more-->

### Source

* raw source [[JSON](./File.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/working/File.yaml)

### Attributes
  
__Type:__ object  
__Description:__ A file of unspecified type


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>description</td>
    <td>string</td>
  </tr>
  <tr>
    <td>path</td>
    <td>string</td>
  </tr>
  <tr>
    <td>uri</td>
    <td>string</td>
  </tr>

</table>


#### description

* type: string

description of the file contents

##### `description` Value Example  

```
"file of project x"
```

#### path

* type: string

Full system path to the file

##### `path` Value Example  

```
"/data/genomes/file1.vcf.gz"
```

#### uri

* type: string

URI for the file

##### `uri` Value Examples  

```
"file://data/genomes/file1.vcf.gz"
```
```
"https://opensnp.org/data/60.23andme-exome-vcf.231?1341012444"
```


### `File` Value Example  

```
{
   "description" : "file of project x",
   "path" : "/data/genomes/file1.vcf.gz",
   "uri" : "file://data/genomes/file1.vcf.gz"
}
```

