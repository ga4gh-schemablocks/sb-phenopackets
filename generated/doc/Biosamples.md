
## Biosample

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - ____

<!--more-->

### Source

* raw source [[JSON](./Biosamples.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/working/Biosample.yaml)

### Attributes
  
__Type:__ object  
__Description:__ A Biosample refers to a unit of biological material from which the substrate
molecules (e.g. genomic DNA, RNA, proteins) for molecular analyses (e.g.
sequencing, array hybridisation, mass-spectrometry) are extracted. Examples
would be a tissue biopsy, a single cell from a culture for single cell genome
sequencing or a protein fraction from a gradient centrifugation.
Several instances (e.g. technical replicates) or types of experiments (e.g.
genomic array as well as RNA-seq experiments) may refer to the same Biosample.
FHIR mapping: Specimen (http://www.hl7.org/fhir/specimen.html).


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>ageOfIndividualAtCollection</td>
    <td>https://schemablocks.org/schemas/ga4gh/Age/v0.0.1</td>
  </tr>
  <tr>
    <td>ageRangeOfIndividualAtCollection</td>
    <td>https://schemablocks.org/schemas/ga4gh/AgeRange/v0.0.1</td>
  </tr>
  <tr>
    <td>datasetId</td>
    <td>string</td>
  </tr>
  <tr>
    <td>description</td>
    <td>string</td>
  </tr>
  <tr>
    <td>diagnosticMarkers</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1</td>
  </tr>
  <tr>
    <td>histologicalDiagnosis</td>
    <td>https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1</td>
  </tr>
  <tr>
    <td>htsFiles</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/HtsFile/v0.0.1</td>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>individualId</td>
    <td>string</td>
  </tr>
  <tr>
    <td>isControlSample</td>
    <td>boolean</td>
  </tr>
  <tr>
    <td>phenotypicFeature</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/PhenotypicFeature/v0.0.1</td>
  </tr>
  <tr>
    <td>procedure</td>
    <td>https://schemablocks.org/schemas/ga4gh/Procedure/v0.0.1</td>
  </tr>
  <tr>
    <td>sampledTissue</td>
    <td>https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1</td>
  </tr>
  <tr>
    <td>taxonomy</td>
    <td>https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1</td>
  </tr>
  <tr>
    <td>tumorGrade</td>
    <td>https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1</td>
  </tr>
  <tr>
    <td>tumorProgression</td>
    <td>https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1</td>
  </tr>
  <tr>
    <td>tumorStage</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1</td>
  </tr>
  <tr>
    <td>variants</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/Variant/v0.0.1</td>
  </tr>

</table>


#### ageOfIndividualAtCollection

* type: https://schemablocks.org/schemas/ga4gh/Age/v0.0.1

An age object describing the age of the individual this biosample was
derived from at the time of collection. The Age object allows the encoding
of the age either as ISO8601 duration or time interval (preferred), or
as ontology term object.
See http://build.fhir.org/datatypes


##### `ageOfIndividualAtCollection` Value Example  

```
{
   "age" : "P48Y3M"
}
```

#### ageRangeOfIndividualAtCollection

* type: https://schemablocks.org/schemas/ga4gh/AgeRange/v0.0.1

An age range object describing the age of the individual this biosample was
derived from at the time of collection. The Age object allows the encoding
of the age either as ISO8601 duration or time interval (preferred), or
as ontology term object.
See http://build.fhir.org/datatypes


##### `ageRangeOfIndividualAtCollection` Value Example  

```
{
   "end" : {
      "age" : "P18Y"
   },
   "start" : {
      "age" : "P12Y"
   }
}
```

#### datasetId

* type: string

The ID of the dataset this Biosample belongs to

##### `datasetId` Value Example  

```
"dataset-id-123"
```

#### description

* type: string

The biosample's description. This attribute contains human readable text.
The "description" attributes should not contain any structured data.


##### `description` Value Example  

```
"THP-1; 6 hours; DMSO; Replicate 1"
```

#### diagnosticMarkers

* type: array of https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1

Clinically relevant bio markers. Most of the assays such as IHC are covered by the NCIT under the sub-hierarchy
NCIT:C25294 (Laboratory Procedure).
e.g. NCIT:C68748 (HER2/Neu Positive), NCIT:C131711 (Human Papillomavirus-18 Positive)


##### `diagnosticMarkers` Value Example  

```
[
   {
      "id" : "NCIT:C131711",
      "label" : "Human Papillomavirus-18 Positive"
   }
]
```

#### histologicalDiagnosis

* type: https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1

This is the pathologist’s diagnosis and may often represent a refinement of the clinical diagnosis given in the
Patient/Clinical module. Should use the same terminology as diagnosis, but represent the pathologist’s findings.
Normal samples would be tagged with the term "NCIT:C38757", "Negative Finding"


##### `histologicalDiagnosis` Value Example  

```
{
   "id" : "EFO:0000221",
   "label" : "Acute Monocytic Leukemia"
}
```

#### htsFiles

* type: array of https://schemablocks.org/schemas/ga4gh/HtsFile/v0.0.1

Pointer to the relevant HTS file(s) for the biosample


##### `htsFiles` Value Example  

```
[
   {
      "file" : {
         "path" : "/data/genomes/file1.vcf.gz",
         "uri" : "file://data/genomes/file1.vcf.gz"
      },
      "htsFormat" : "GVCF"
   }
]
```

#### id

* type: string

The Biosample id as a unique identifier in the local context.


##### `id` Value Example  

```
"SAMN05324082"
```

#### individualId

* type: string

The id of the individual this biosample was derived from

##### `individualId` Value Example  

```
"SAMN05324082-individual"
```

#### isControlSample

* type: boolean

if true, this sample is being use as a normal control, often in combination with
another sample that is thought to contain a pathological finding the default value is false


##### `isControlSample` Value Example  

```
""
```

#### phenotypicFeature

* type: array of https://schemablocks.org/schemas/ga4gh/PhenotypicFeature/v0.0.1

Phenotypic characteristics of the BioSample, for example histological findings of a biopsy

##### `phenotypicFeature` Value Example  

```
[
   {
      "type" : {
         "id" : "EFO:0001253",
         "label" : "THP-1"
      }
   }
]
```

#### procedure

* type: https://schemablocks.org/schemas/ga4gh/Procedure/v0.0.1

Clinical procedure performed on the subject in order to extract the biosample.


##### `procedure` Value Example  

```
{
   "bodySite" : {
      "id" : "UBERON:0003403",
      "label" : "skin of forearm"
   },
   "code" : {
      "id" : "NCIT:C28743",
      "label" : "Funch Biopsy"
   }
}
```

#### sampledTissue

* type: https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1

UBERON class describing the tissue from which the specimen was collected.
PDX-MI mapping: 'Specimen tumor tissue'
FHIR mapping: Specimen.type


##### `sampledTissue` Value Example  

```
{
   "id" : "UBERON:0000178",
   "label" : "peripheral blood"
}
```

#### taxonomy

* type: https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1

NCBI taxonomic identifier (NCBITaxon) of the sample e.g. NCBITaxon:9606

##### `taxonomy` Value Example  

```
{
   "description" : "Homo sapiens",
   "type" : "NCBITaxon:9606"
}
```

#### tumorGrade

* type: https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1

Potentially a child term of NCIT:C28076 (Disease Grade Qualifier) or equivalent
See https://www.cancer.gov/about-cancer/diagnosis-staging/prognosis/tumor-grade-fact-sheet


##### `tumorGrade` Value Example  

```
{
   "id" : "NCIT:C28091",
   "label" : "Gleason Score 7"
}
```

#### tumorProgression

* type: https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1

Is the specimen tissue from the primary tumor, a metastasis or a recurrence?
Most likely a child term of NCIT:C7062 (Neoplasm by Special Category)
NCIT:C3677 (Benign Neoplasm)
NCIT:C84509 (Primary Malignant Neoplasm)
NCIT:C95606 (Second Primary Malignant Neoplasm)
NCIT:C3261 (Metastatic Neoplasm)
NCIT:C4813 (Recurrent Malignant Neoplasm)


##### `tumorProgression` Value Example  

```
{
   "id" : "NCIT:C84509",
   "label" : "Primary Malignant Neoplasm"
}
```

#### tumorStage

* type: array of https://schemablocks.org/schemas/ga4gh/OntologyClass/v0.0.1

Cancer findings in the TNM system that is relevant to the diagnosis of cancer.
See https://www.cancer.gov/about-cancer/diagnosis-staging/staging
e.g. Child terms of NCIT:C48232 (Cancer TNM Finding)


##### `tumorStage` Value Example  

```
[
   {
      "id" : "NCIT:C48706",
      "label" : "N1 Stage Finding"
   }
]
```

#### variants

* type: array of https://schemablocks.org/schemas/ga4gh/Variant/v0.0.1

Field for variants relevant to this biosample


##### `variants` Value Example  

```
[
   {
      "background" : "add example",
      "hgvsAllele" : "add example"
   }
]
```


### `Biosample` Value Examples  

```
{
   "ageOfIndividualAtCollection" : {
      "age" : "P1Y"
   },
   "description" : "THP-1; 6 hours; DMSO; Replicate 1",
   "histologicalDiagnosis" : {
      "id" : "EFO:0000221",
      "label" : "Acute Monocytic Leukemia"
   },
   "id" : "SAMN05324082",
   "individualId" : "SAMN05324082-individual",
   "phenotypicFeature" : [
      {
         "type" : {
            "id" : "EFO:0001253",
            "label" : "THP-1"
         }
      }
   ],
   "sampledTissue" : {
      "id" : "UBERON:0000178",
      "label" : "peripheral blood"
   },
   "taxonomy" : {
      "id" : "NCBITaxon:9606",
      "label" : "Homo sapiens"
   }
}
```
```
{
   "ageOfIndividualAtCollection" : {
      "age" : "P1Y"
   },
   "diagnosticMarkers" : [
      {
         "id" : "NCIT:C131711",
         "label" : "Human Papillomavirus-18 Positive"
      }
   ],
   "histologicalDiagnosis" : {
      "id" : "EFO:0000221",
      "label" : "Acute Monocytic Leukemia"
   },
   "id" : "SAMN05324083",
   "individualId" : "SAMN05324083-individual",
   "procedure" : {
      "code" : {
         "id" : "NCIT:C15189",
         "label" : "Biopsy"
      }
   },
   "sampledTissue" : {
      "id" : "NCIT:C139196",
      "label" : "Esophageal Lymph Node"
   },
   "tumorProgression" : {
      "id" : "NCIT:C84509",
      "label" : "Primary Malignant Neoplasm"
   },
   "tumorStage" : [
      {
         "id" : "NCIT:C48724",
         "label" : "T2 Stage Finding"
      },
      {
         "id" : "NCIT:C48706",
         "label" : "N1 Stage Finding"
      },
      {
         "id" : "NCIT:C48699",
         "label" : "M0 Stage Finding"
      }
   ]
}
```

