
<div id="schema-header-title">
  <h2><span id="schema-header-title-project">sb-phenopackets</span> AgeRange <a href="https://github.com/ga4gh-schemablocks/sb-phenopackets" target="_BLANK">[ &nearr; ]</a></h2>
</div>

<table id="schema-header-table">
<tr>
<th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
<td><div id="schema-header-status">implemented</div></td>
</tr>
<tr><th>Provenance</th><td><ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/agerange.rst">Phenopackets</a></li>
</ul></td></tr>
<tr><th>Used by</th><td><ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/agerange.rst">Phenopackets</a></li>
</ul></td></tr>


<!--more-->
<tr><th>Contributors</th><td><ul>
<li><a href="https://orcid.org/0000-0002-3265-15918">Jules Jacobsen</a></li>
<li><a href="https://orcid.org/0000-0002-0736-91998">Peter Robinson</a></li>
<li><a href="https://orcid.org/0000-0002-9903-4248">Michael Baudis</a></li>
<li><a href="https://orcid.org/0000-0002-4839-5158">Isuru Liyanage</a></li>
</ul></td></tr>
<tr><th>Source (v1.0.0)</th><td><ul>
<li><a href="current/AgeRange.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/AgeRange.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ Age range
### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>end</th><td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json">LINK</a>]</td></tr>
<tr><th>start</th><td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json">LINK</a>]</td></tr>
</table>


#### end

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json">LINK</a>]

Age as an ISO8601 string.


##### `end` Value Example  

```
{
   "age" : "P16Y6M"
}
```

#### start

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json">LINK</a>]

Age as an ISO8601 string.


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
      "age" : "P12Y"
   }
}
```

