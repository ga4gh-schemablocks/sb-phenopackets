
<div id="schema-header-title">
  <h2><span id="schema-header-title-project">sb-phenopackets</span> Disease <a href="https://github.com/ga4gh-schemablocks/sb-phenopackets" target="_BLANK">[ &nearr; ]</a></h2>
</div>

<table id="schema-header-table">
<tr>
<th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
<td><div id="schema-header-status">implemented</div></td>
</tr>
<tr><th>Provenance</th><td><ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/disease.rst">Phenopackets</a></li>
</ul></td></tr>
<tr><th>Used by</th><td><ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/disease.rst">Phenopackets</a></li>
</ul></td></tr>


<!--more-->
<tr><th>Contributors</th><td><ul>
<li>GA4GH Data Working Group</li>
<li><a href="https://orcid.org/0000-0002-3265-15918">Jules Jacobsen</a></li>
<li><a href="https://orcid.org/0000-0002-0736-91998">Peter Robinson</a></li>
<li><a href="https://orcid.org/0000-0002-9903-4248">Michael Baudis</a></li>
<li><a href="https://orcid.org/0000-0002-9551-6370">Melanie Courtot</a></li>
<li><a href="https://orcid.org/0000-0002-4839-5158">Isuru Liyanage</a></li>
</ul></td></tr>
<tr><th>Source (v1.0.0)</th><td><ul>
<li><a href="current/Disease.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Disease.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ Message to indicate a disease (diagnosis) and its recorded onset.

### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>ageOfOnset</th><td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json">LINK</a>]</td></tr>
<tr><th>ageRangeOfOnset</th><td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/AgeRange.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/AgeRange.json">LINK</a>]</td></tr>
<tr><th>classOfOnset</th><td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json">LINK</a>]</td></tr>
<tr><th>diseaseStage</th><td>array of "https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json">LINK</a>]"</td></tr>
<tr><th>term</th><td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json">LINK</a>]</td></tr>
<tr><th>tnmFinding</th><td>array of "https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json">LINK</a>]"</td></tr>
</table>


#### ageOfOnset

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json">LINK</a>]

The onset of the disease. The values of this will come from the HPO onset hierarchy
i.e. subclasses of HP:0003674
FHIR mapping: Condition.onset


##### `ageOfOnset` Value Example  

```
{
   "age" : "P35Y"
}
```

#### ageRangeOfOnset

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/AgeRange.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/AgeRange.json">LINK</a>]

The onset of the disease. The values of this will come from the HPO onset hierarchy
i.e. subclasses of HP:0003674
FHIR mapping: Condition.onset


##### `ageRangeOfOnset` Value Example  

```
{
   "start" : {
      "age" : "P35Y"
   }
}
```

#### classOfOnset

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json">LINK</a>]

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

#### diseaseStage

* type: array of "https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json">LINK</a>]"

Disease staging, the extent to which a disease has developed.
For cancers, see https://www.cancer.gov/about-cancer/diagnosis-staging/staging
Valid values include child terms of NCIT:C28108 (Disease Stage Qualifier)


##### `diseaseStage` Value Example  

```
[
   {
      "id" : "NCIT:C90529",
      "label" : "AJCC v6 Stage"
   }
]
```

#### term

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json">LINK</a>]

The identifier of this disease
e.g. MONDO:0007043, OMIM:101600, Orphanet:710, DOID:14705 (note these are all equivalent)


##### `term` Value Example  

```
{
   "id" : "MONDO:0007043"
}
```

#### tnmFinding

* type: array of "https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json">LINK</a>]"

Cancer findings in the TNM system that is relevant to the diagnosis of cancer.
See https://www.cancer.gov/about-cancer/diagnosis-staging/staging
Valid values include child terms of NCIT:C48232 (Cancer TNM Finding)


##### `tnmFinding` Value Example  

```
[
   {
      "id" : "NCIT:C48232",
      "label" : "Cancer TNM Finding"
   }
]
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

