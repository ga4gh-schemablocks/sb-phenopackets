
## SpdiAllele

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - ____

<!--more-->

### Source

* raw source [[JSON](./SpdiAllele.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/working/SpdiAllele.yaml)

### Attributes
  
__Type:__ object  
__Description:__ A single SPDI allele.
The SPDI notation uses four fields and is written out as four elements delimited by colons S:P:D:I, where
S = SequenceId
P = Position , a 0-based coordinate for where the Deleted Sequence starts
D = DeletedSequence , sequence for the deletion, can be empty
I = InsertedSequence , sequence for the insertion, can be empty
The SPDI notation represents variation as deletion of a sequence (D) at a given position (P) in reference sequence (S)
followed by insertion of a replacement sequence (I) at that same position. Position 0 indicates a deletion that
starts immediately before the first nucleotide, and position 1 represents a deletion interval that starts between the
first and second residues, and so on. Either the deleted or the inserted interval can be empty, resulting a pure
insertion or deletion.
The deleted and inserted sequences in SPDI are all written on the positive strand for two-stranded molecules.
See https://www.ncbi.nlm.nih.gov/variation/notation/


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>deletedSequence</td>
    <td>string</td>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>insertedSequence</td>
    <td>string</td>
  </tr>
  <tr>
    <td>position</td>
    <td>integer</td>
  </tr>
  <tr>
    <td>seqId</td>
    <td>string</td>
  </tr>

</table>


#### deletedSequence

* type: string

add description

##### `deletedSequence` Value Example  

```
"T"
```

#### id

* type: string

add description

##### `id` Value Example  

```
"add example"
```

#### insertedSequence

* type: string

add description

##### `insertedSequence` Value Example  

```
"G"
```

#### position

* type: integer

add description

##### `position` Value Example  

```
"123256214"
```

#### seqId

* type: string

add description

##### `seqId` Value Example  

```
"NC_000010.10"
```


### `SpdiAllele` Value Example  

```
{
   "deletedSequence" : "T",
   "id" : "id_abc_123",
   "insertedSequence" : "G",
   "position" : "123256214",
   "seqId" : "NC_000010.10"
}
```

