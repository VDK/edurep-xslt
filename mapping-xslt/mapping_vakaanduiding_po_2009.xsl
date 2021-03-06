<xsl:stylesheet xmlns="http://www.imsglobal.org/xsd/imsmd_v1p2" xmlns:czp="http://www.imsglobal.org/xsd/imsmd_v1p2" xmlns:oai_czp="http://www.imsglobal.org/xsd/imsmd_v1p2" xmlns:oai_dc="http://www.imsglobal.org/xsd/imsmd_v1p2" xmlns:oai_lom="http://www.imsglobal.org/xsd/imsmd_v1p2" xmlns:oai_gkn="http://www.imsglobal.org/xsd/imsmd_v1p2" xmlns:oai_kn="http://www.imsglobal.org/xsd/imsmd_v1p2" xmlns:lom_ims="http://www.imsglobal.org/xsd/imsmd_v1p2" xmlns:nllom="http://www.imsglobal.org/xsd/imsmd_v1p2" xmlns:lom="http://www.imsglobal.org/xsd/imsmd_v1p2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="xml" indent="no" encoding="UTF-8" standalone="no"/>

<xsl:key name="classification-by-newIdvdex_classification_vakaanduidingen_po_2009" match="*[local-name() = 'classification'][child::*[local-name() = 'purpose']/*[local-name() = 'value']/*[local-name() = 'langstring'] = 'discipline']/*[local-name() = 'taxonpath'][contains(child::*[local-name()='source']/*[local-name()='langstring'], 'begrippenkader')]/*[local-name() = 'taxon']" use="*[local-name() = 'id']"/>
<xsl:key name="classification-by-oldIdvdex_classification_vakaanduidingen_po_2009" match="*[local-name() = 'classification'][child::*[local-name() = 'purpose']/*[local-name() = 'value']/*[local-name() = 'langstring'] = 'discipline']/*[local-name() = 'taxonpath'][contains(child::*[local-name()='source']/*[local-name()='langstring'], 'vdex_classification_vakaanduidingen_po_2009')]/*[local-name() = 'taxon']" use="*[local-name() = 'id']"/>
<!-- Vervangt oude VDEX waarden voor waarden uit het begrippenkader -->
<xsl:template name="vdex_classification_vakaanduidingen_po_2009_oldToNew">

<!-- Bepaal of er een waarde vervangen moet worden en dus een classificatie moet worden aangemaakt -->
<xsl:variable name="createClassification">
<xsl:for-each select="key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009',descendant::*[local-name() = 'id'])">
<xsl:choose>
<xsl:when test="descendant::*[local-name() = 'id'] = 'nederlands' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','3401cf6e-82e4-404c-b216-b980ff407159') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'schrijven' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','ddae0006-230f-4f00-b407-9d358a90a27e') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'lezen' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','534ac9f4-f71d-4b46-89e0-dc3f6813da6d') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'taal' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','3401cf6e-82e4-404c-b216-b980ff407159') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'fries' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','93a7126d-7307-4b6a-b55a-f4f78e92f680') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'engels' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','18f53978-1118-4051-a778-b8d7f60ca982') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'duits' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','81a1f605-db58-448d-a1dc-da682316c505') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'frans' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','9f4710e3-f173-404e-b12e-577657a5da04') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'spaans' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','952bf604-cc38-44e3-889a-a9e74a18da8e') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'rekenen en wiskunde' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','b48fa351-4561-44c7-a071-ebfd6103eec3') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'wereldorientatie' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','8b194f4d-d757-440d-b8a2-e7427849a6db') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'aardrijkskunde' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','c001f86a-4f8f-4420-bd78-381c615ecedc') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'geschiedenis' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','ef3a0b2e-0843-4e0a-b45b-788be6e1ec8d') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'natuur' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','f97e788f-5aa6-4ab4-9448-9e27b79daa9e') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'techniek' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','c6971373-aa44-4de9-91ef-aca886d42a6a') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'milieu' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','c001f86a-4f8f-4420-bd78-381c615ecedc') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'verkeer' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','d45cf1d7-3d8e-476a-a4ef-a39440820199') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'gezond en redzaam gedrag' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','04058361-4e9e-4c02-a057-41605a7f37b5') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'burgerschapsvorming' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','70c518f8-5719-4d0a-b3d8-6589073b9887') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'levensbeschouwing' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','e605402f-4cc2-46bb-9026-d1d49bde17bf') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'godsdienst' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','e605402f-4cc2-46bb-9026-d1d49bde17bf') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'geestelijke stromingen' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','fbf55a0b-41b6-4dc7-848d-ec41378c9c53') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'sociaal-emotionele ontwikkeling' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','35d0e3ed-d62e-40a5-8bff-46f1de51e47a') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'kunstzinnige orientatie' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','4aa16ae7-48c6-4f96-b48d-a67389a7050d') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'handvaardigheid' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','f1116b34-14c9-4098-85fb-aed1b9473894') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'tekenen' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','5cb7f440-c370-4056-b30d-f57130cccede') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'muziek' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','7aa6f577-b02d-484a-90d6-72fc80199f9a') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'drama' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','904a6dbc-c236-42c8-aaa9-a5d7eaa9639f') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'bewegingsonderwijs' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','34f8bed2-b9f1-4de9-8db7-ee3d9bbb10f2') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'computervaardigheden%2FICT' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','e8e7fa96-dfc6-4d6d-a41b-a44c1b5b4138') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'filosofie' and key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','d35b903f-1598-4bdd-a2fa-8aba854df762') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] != 'nederlands' and descendant::*[local-name() = 'id'] != 'schrijven' and descendant::*[local-name() = 'id'] != 'lezen' and descendant::*[local-name() = 'id'] != 'taal' and descendant::*[local-name() = 'id'] != 'fries' and descendant::*[local-name() = 'id'] != 'engels' and descendant::*[local-name() = 'id'] != 'duits' and descendant::*[local-name() = 'id'] != 'frans' and descendant::*[local-name() = 'id'] != 'spaans' and descendant::*[local-name() = 'id'] != 'rekenen en wiskunde' and descendant::*[local-name() = 'id'] != 'wereldorientatie' and descendant::*[local-name() = 'id'] != 'aardrijkskunde' and descendant::*[local-name() = 'id'] != 'geschiedenis' and descendant::*[local-name() = 'id'] != 'natuur' and descendant::*[local-name() = 'id'] != 'techniek' and descendant::*[local-name() = 'id'] != 'milieu' and descendant::*[local-name() = 'id'] != 'verkeer' and descendant::*[local-name() = 'id'] != 'gezond en redzaam gedrag' and descendant::*[local-name() = 'id'] != 'burgerschapsvorming' and descendant::*[local-name() = 'id'] != 'levensbeschouwing' and descendant::*[local-name() = 'id'] != 'godsdienst' and descendant::*[local-name() = 'id'] != 'geestelijke stromingen' and descendant::*[local-name() = 'id'] != 'sociaal-emotionele ontwikkeling' and descendant::*[local-name() = 'id'] != 'kunstzinnige orientatie' and descendant::*[local-name() = 'id'] != 'handvaardigheid' and descendant::*[local-name() = 'id'] != 'tekenen' and descendant::*[local-name() = 'id'] != 'muziek' and descendant::*[local-name() = 'id'] != 'drama' and descendant::*[local-name() = 'id'] != 'bewegingsonderwijs' and descendant::*[local-name() = 'id'] != 'computervaardigheden%2FICT' and descendant::*[local-name() = 'id'] != 'filosofie'"/>
<xsl:otherwise>
<xsl:text>unmatched</xsl:text>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
</xsl:variable>

<xsl:if test="contains($createClassification, 'unmatched')">
<xsl:element name="{$usedNamespace}:classification">
<xsl:element name="{$usedNamespace}:purpose">
<xsl:element name="{$usedNamespace}:source">
<xsl:element name="{$usedNamespace}:langstring">
<xsl:attribute name="xml:lang">
<xsl:text>x-none</xsl:text>
</xsl:attribute>
<xsl:text>http://purl.edustandaard.nl/vdex_classification_purpose_czp_20060628.xml</xsl:text>
</xsl:element>
</xsl:element>
<xsl:element name="{$usedNamespace}:value">
<xsl:element name="{$usedNamespace}:langstring">
<xsl:attribute name="xml:lang">
<xsl:text>x-none</xsl:text>
</xsl:attribute>
<xsl:text>discipline</xsl:text>
</xsl:element>
</xsl:element>
</xsl:element>
<xsl:element name="{$usedNamespace}:taxonpath">
<xsl:element name="{$usedNamespace}:source">
<xsl:element name="{$usedNamespace}:langstring">
<xsl:attribute name="xml:lang">
<xsl:text>x-none</xsl:text>
</xsl:attribute>
<xsl:text>http://purl.edustandaard.nl/begrippenkader</xsl:text>
</xsl:element>
</xsl:element>
<xsl:call-template name="writeTaxonsOldToNewvdex_classification_vakaanduidingen_po_2009"/>
</xsl:element>
</xsl:element>
</xsl:if>

</xsl:template>


<xsl:template name="writeTaxonsOldToNewvdex_classification_vakaanduidingen_po_2009">
<!-- Map de individuele oude taxons naar nieuwe begrippenkader waarden -->
<xsl:for-each select="//*[local-name() = 'classification']/*[local-name() = 'taxonpath']/*[local-name() = 'taxon']/*[local-name() = 'id'][ancestor::*[local-name() = 'classification']/*[local-name() = 'purpose']/*[local-name() = 'value']/*[local-name() = 'langstring'] = 'discipline'][contains(ancestor::*[local-name()='taxonpath']/*[local-name()='source']/*[local-name()='langstring'], 'vdex_classification_vakaanduidingen_po_2009')]">
<xsl:choose>
<xsl:when test="node() = 'nederlands' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','3401cf6e-82e4-404c-b216-b980ff407159'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'3401cf6e-82e4-404c-b216-b980ff407159'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Nederlandse taal'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'schrijven' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','ddae0006-230f-4f00-b407-9d358a90a27e'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'ddae0006-230f-4f00-b407-9d358a90a27e'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Technisch schrijven'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'lezen' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','534ac9f4-f71d-4b46-89e0-dc3f6813da6d'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'534ac9f4-f71d-4b46-89e0-dc3f6813da6d'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Lezen'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'taal' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','3401cf6e-82e4-404c-b216-b980ff407159'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'3401cf6e-82e4-404c-b216-b980ff407159'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Nederlandse taal'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'fries' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','93a7126d-7307-4b6a-b55a-f4f78e92f680'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'93a7126d-7307-4b6a-b55a-f4f78e92f680'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Fries'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'engels' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','18f53978-1118-4051-a778-b8d7f60ca982'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'18f53978-1118-4051-a778-b8d7f60ca982'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Engels'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'duits' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','81a1f605-db58-448d-a1dc-da682316c505'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'81a1f605-db58-448d-a1dc-da682316c505'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Duits'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'frans' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','9f4710e3-f173-404e-b12e-577657a5da04'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'9f4710e3-f173-404e-b12e-577657a5da04'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Frans'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'spaans' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','952bf604-cc38-44e3-889a-a9e74a18da8e'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'952bf604-cc38-44e3-889a-a9e74a18da8e'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Spaans'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'rekenen en wiskunde' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','b48fa351-4561-44c7-a071-ebfd6103eec3'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'b48fa351-4561-44c7-a071-ebfd6103eec3'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Rekenen'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'wereldorientatie' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','8b194f4d-d757-440d-b8a2-e7427849a6db'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'8b194f4d-d757-440d-b8a2-e7427849a6db'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Wereldoriëntatie'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'aardrijkskunde' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','c001f86a-4f8f-4420-bd78-381c615ecedc'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'c001f86a-4f8f-4420-bd78-381c615ecedc'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Aardrijkskunde'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'geschiedenis' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','ef3a0b2e-0843-4e0a-b45b-788be6e1ec8d'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'ef3a0b2e-0843-4e0a-b45b-788be6e1ec8d'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Geschiedenis'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'natuur' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','f97e788f-5aa6-4ab4-9448-9e27b79daa9e'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'f97e788f-5aa6-4ab4-9448-9e27b79daa9e'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Natuur'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'techniek' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','c6971373-aa44-4de9-91ef-aca886d42a6a'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'c6971373-aa44-4de9-91ef-aca886d42a6a'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Techniek'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'milieu' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','c001f86a-4f8f-4420-bd78-381c615ecedc'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'c001f86a-4f8f-4420-bd78-381c615ecedc'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Aardrijkskunde'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'verkeer' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','d45cf1d7-3d8e-476a-a4ef-a39440820199'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'d45cf1d7-3d8e-476a-a4ef-a39440820199'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Verkeer'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'gezond en redzaam gedrag' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','04058361-4e9e-4c02-a057-41605a7f37b5'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'04058361-4e9e-4c02-a057-41605a7f37b5'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Gezond en redzaam gedrag'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'burgerschapsvorming' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','70c518f8-5719-4d0a-b3d8-6589073b9887'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'70c518f8-5719-4d0a-b3d8-6589073b9887'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Burgerschapsvorming'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'levensbeschouwing' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','e605402f-4cc2-46bb-9026-d1d49bde17bf'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'e605402f-4cc2-46bb-9026-d1d49bde17bf'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Godsdienst'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'godsdienst' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','e605402f-4cc2-46bb-9026-d1d49bde17bf'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'e605402f-4cc2-46bb-9026-d1d49bde17bf'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Godsdienst'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'geestelijke stromingen' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','fbf55a0b-41b6-4dc7-848d-ec41378c9c53'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'fbf55a0b-41b6-4dc7-848d-ec41378c9c53'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Geestelijke stromingen'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'sociaal-emotionele ontwikkeling' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','35d0e3ed-d62e-40a5-8bff-46f1de51e47a'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'35d0e3ed-d62e-40a5-8bff-46f1de51e47a'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Sociaal-emotionele ontwikkeling'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'kunstzinnige orientatie' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','4aa16ae7-48c6-4f96-b48d-a67389a7050d'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'4aa16ae7-48c6-4f96-b48d-a67389a7050d'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Kunstzinnige oriëntatie'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'handvaardigheid' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','f1116b34-14c9-4098-85fb-aed1b9473894'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'f1116b34-14c9-4098-85fb-aed1b9473894'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Handvaardigheid'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'tekenen' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','5cb7f440-c370-4056-b30d-f57130cccede'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'5cb7f440-c370-4056-b30d-f57130cccede'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Tekenen'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'muziek' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','7aa6f577-b02d-484a-90d6-72fc80199f9a'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'7aa6f577-b02d-484a-90d6-72fc80199f9a'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Muziek'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'drama' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','904a6dbc-c236-42c8-aaa9-a5d7eaa9639f'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'904a6dbc-c236-42c8-aaa9-a5d7eaa9639f'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Drama'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'bewegingsonderwijs' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','34f8bed2-b9f1-4de9-8db7-ee3d9bbb10f2'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'34f8bed2-b9f1-4de9-8db7-ee3d9bbb10f2'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Bewegingsonderwijs'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'computervaardigheden%2FICT' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','e8e7fa96-dfc6-4d6d-a41b-a44c1b5b4138'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'e8e7fa96-dfc6-4d6d-a41b-a44c1b5b4138'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Computervaardigheden/ ICT'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'filosofie' and not(key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009','d35b903f-1598-4bdd-a2fa-8aba854df762'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'d35b903f-1598-4bdd-a2fa-8aba854df762'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Filosofie'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
</xsl:choose>
</xsl:for-each>
</xsl:template>


<!-- Vervangt indien nodig waarden van het begrippenkader voor waarden uit de oude VDEX -->
<xsl:template name="vdex_classification_vakaanduidingen_po_2009_newToOld">

<!-- Bepaal of er een waarde vervangen moet worden en dus een classificatie moet worden aangemaakt -->
<xsl:variable name="createClassification">
<xsl:for-each select="key('classification-by-newIdvdex_classification_vakaanduidingen_po_2009',descendant::*[local-name() = 'id'])">
<xsl:choose>
<xsl:when test="descendant::*[local-name() = 'id'] = '3401cf6e-82e4-404c-b216-b980ff407159' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','nederlands') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'ddae0006-230f-4f00-b407-9d358a90a27e' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','schrijven') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = '534ac9f4-f71d-4b46-89e0-dc3f6813da6d' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','lezen') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = '3401cf6e-82e4-404c-b216-b980ff407159' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','taal') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = '93a7126d-7307-4b6a-b55a-f4f78e92f680' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','fries') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = '18f53978-1118-4051-a778-b8d7f60ca982' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','engels') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = '81a1f605-db58-448d-a1dc-da682316c505' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','duits') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = '9f4710e3-f173-404e-b12e-577657a5da04' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','frans') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = '952bf604-cc38-44e3-889a-a9e74a18da8e' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','spaans') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'b48fa351-4561-44c7-a071-ebfd6103eec3' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','rekenen en wiskunde') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = '8b194f4d-d757-440d-b8a2-e7427849a6db' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','wereldorientatie') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'c001f86a-4f8f-4420-bd78-381c615ecedc' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','aardrijkskunde') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'ef3a0b2e-0843-4e0a-b45b-788be6e1ec8d' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','geschiedenis') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'f97e788f-5aa6-4ab4-9448-9e27b79daa9e' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','natuur') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'c6971373-aa44-4de9-91ef-aca886d42a6a' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','techniek') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'c001f86a-4f8f-4420-bd78-381c615ecedc' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','milieu') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'd45cf1d7-3d8e-476a-a4ef-a39440820199' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','verkeer') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = '04058361-4e9e-4c02-a057-41605a7f37b5' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','gezond en redzaam gedrag') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = '70c518f8-5719-4d0a-b3d8-6589073b9887' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','burgerschapsvorming') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'e605402f-4cc2-46bb-9026-d1d49bde17bf' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','levensbeschouwing') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'e605402f-4cc2-46bb-9026-d1d49bde17bf' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','godsdienst') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'fbf55a0b-41b6-4dc7-848d-ec41378c9c53' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','geestelijke stromingen') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = '35d0e3ed-d62e-40a5-8bff-46f1de51e47a' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','sociaal-emotionele ontwikkeling') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = '4aa16ae7-48c6-4f96-b48d-a67389a7050d' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','kunstzinnige orientatie') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'f1116b34-14c9-4098-85fb-aed1b9473894' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','handvaardigheid') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = '5cb7f440-c370-4056-b30d-f57130cccede' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','tekenen') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = '7aa6f577-b02d-484a-90d6-72fc80199f9a' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','muziek') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = '904a6dbc-c236-42c8-aaa9-a5d7eaa9639f' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','drama') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = '34f8bed2-b9f1-4de9-8db7-ee3d9bbb10f2' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','bewegingsonderwijs') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'e8e7fa96-dfc6-4d6d-a41b-a44c1b5b4138' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','computervaardigheden%2FICT') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] = 'd35b903f-1598-4bdd-a2fa-8aba854df762' and key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','filosofie') != ''"/>
<xsl:when test="descendant::*[local-name() = 'id'] != '3401cf6e-82e4-404c-b216-b980ff407159' and descendant::*[local-name() = 'id'] != 'ddae0006-230f-4f00-b407-9d358a90a27e' and descendant::*[local-name() = 'id'] != '534ac9f4-f71d-4b46-89e0-dc3f6813da6d' and descendant::*[local-name() = 'id'] != '3401cf6e-82e4-404c-b216-b980ff407159' and descendant::*[local-name() = 'id'] != '93a7126d-7307-4b6a-b55a-f4f78e92f680' and descendant::*[local-name() = 'id'] != '18f53978-1118-4051-a778-b8d7f60ca982' and descendant::*[local-name() = 'id'] != '81a1f605-db58-448d-a1dc-da682316c505' and descendant::*[local-name() = 'id'] != '9f4710e3-f173-404e-b12e-577657a5da04' and descendant::*[local-name() = 'id'] != '952bf604-cc38-44e3-889a-a9e74a18da8e' and descendant::*[local-name() = 'id'] != 'b48fa351-4561-44c7-a071-ebfd6103eec3' and descendant::*[local-name() = 'id'] != '8b194f4d-d757-440d-b8a2-e7427849a6db' and descendant::*[local-name() = 'id'] != 'c001f86a-4f8f-4420-bd78-381c615ecedc' and descendant::*[local-name() = 'id'] != 'ef3a0b2e-0843-4e0a-b45b-788be6e1ec8d' and descendant::*[local-name() = 'id'] != 'f97e788f-5aa6-4ab4-9448-9e27b79daa9e' and descendant::*[local-name() = 'id'] != 'c6971373-aa44-4de9-91ef-aca886d42a6a' and descendant::*[local-name() = 'id'] != 'c001f86a-4f8f-4420-bd78-381c615ecedc' and descendant::*[local-name() = 'id'] != 'd45cf1d7-3d8e-476a-a4ef-a39440820199' and descendant::*[local-name() = 'id'] != '04058361-4e9e-4c02-a057-41605a7f37b5' and descendant::*[local-name() = 'id'] != '70c518f8-5719-4d0a-b3d8-6589073b9887' and descendant::*[local-name() = 'id'] != 'e605402f-4cc2-46bb-9026-d1d49bde17bf' and descendant::*[local-name() = 'id'] != 'e605402f-4cc2-46bb-9026-d1d49bde17bf' and descendant::*[local-name() = 'id'] != 'fbf55a0b-41b6-4dc7-848d-ec41378c9c53' and descendant::*[local-name() = 'id'] != '35d0e3ed-d62e-40a5-8bff-46f1de51e47a' and descendant::*[local-name() = 'id'] != '4aa16ae7-48c6-4f96-b48d-a67389a7050d' and descendant::*[local-name() = 'id'] != 'f1116b34-14c9-4098-85fb-aed1b9473894' and descendant::*[local-name() = 'id'] != '5cb7f440-c370-4056-b30d-f57130cccede' and descendant::*[local-name() = 'id'] != '7aa6f577-b02d-484a-90d6-72fc80199f9a' and descendant::*[local-name() = 'id'] != '904a6dbc-c236-42c8-aaa9-a5d7eaa9639f' and descendant::*[local-name() = 'id'] != '34f8bed2-b9f1-4de9-8db7-ee3d9bbb10f2' and descendant::*[local-name() = 'id'] != 'e8e7fa96-dfc6-4d6d-a41b-a44c1b5b4138' and descendant::*[local-name() = 'id'] != 'd35b903f-1598-4bdd-a2fa-8aba854df762'"/>
<xsl:otherwise>
<xsl:text>unmatched</xsl:text>
</xsl:otherwise></xsl:choose>
</xsl:for-each>
</xsl:variable>

<xsl:if test="contains($createClassification, 'unmatched')">
<xsl:element name="{$usedNamespace}:classification">
<xsl:element name="{$usedNamespace}:purpose">
<xsl:element name="{$usedNamespace}:source">
<xsl:element name="{$usedNamespace}:langstring">
<xsl:attribute name="xml:lang">
<xsl:text>x-none</xsl:text>
</xsl:attribute>
<xsl:text>http://purl.edustandaard.nl/vdex_classification_purpose_czp_20060628.xml</xsl:text>
</xsl:element>
</xsl:element>
<xsl:element name="{$usedNamespace}:value">
<xsl:element name="{$usedNamespace}:langstring">
<xsl:attribute name="xml:lang">
<xsl:text>x-none</xsl:text>
</xsl:attribute>
<xsl:text>discipline</xsl:text>
</xsl:element>
</xsl:element>
</xsl:element>
<xsl:element name="{$usedNamespace}:taxonpath">
<xsl:element name="{$usedNamespace}:source">
<xsl:element name="{$usedNamespace}:langstring">
<xsl:attribute name="xml:lang">
<xsl:text>x-none</xsl:text>
</xsl:attribute>
<xsl:text>http://purl.edustandaard.nl/vdex_classification_vakaanduidingen_po_2009.xml</xsl:text>
</xsl:element>
</xsl:element>
<xsl:call-template name="writeTaxonsNewToOldvdex_classification_vakaanduidingen_po_2009"/>
</xsl:element>
</xsl:element>
</xsl:if>
</xsl:template>


<!-- Map de individuele begrippenkader taxons naar oude VDEX waarden -->
<xsl:template name="writeTaxonsNewToOldvdex_classification_vakaanduidingen_po_2009">
<xsl:for-each select="//*[local-name() = 'classification']/*[local-name() = 'taxonpath']/*[local-name() = 'taxon']/*[local-name() = 'id'][ancestor::*[local-name() = 'classification']/*[local-name() = 'purpose']/*[local-name() = 'value']/*[local-name() = 'langstring'] = 'discipline'][contains(ancestor::*[local-name()='taxonpath']/*[local-name()='source']/*[local-name()='langstring'], 'http://purl.edustandaard.nl/begrippenkader')]">
<xsl:choose>
<xsl:when test="node() = '3401cf6e-82e4-404c-b216-b980ff407159' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','nederlands'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'nederlands'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Nederlandse taal'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'ddae0006-230f-4f00-b407-9d358a90a27e' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','schrijven'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'schrijven'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Technisch schrijven'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = '534ac9f4-f71d-4b46-89e0-dc3f6813da6d' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','lezen'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'lezen'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Lezen'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = '3401cf6e-82e4-404c-b216-b980ff407159' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','taal'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'taal'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Nederlandse taal'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = '93a7126d-7307-4b6a-b55a-f4f78e92f680' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','fries'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'fries'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Fries'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = '18f53978-1118-4051-a778-b8d7f60ca982' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','engels'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'engels'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Engels'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = '81a1f605-db58-448d-a1dc-da682316c505' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','duits'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'duits'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Duits'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = '9f4710e3-f173-404e-b12e-577657a5da04' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','frans'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'frans'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Frans'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = '952bf604-cc38-44e3-889a-a9e74a18da8e' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','spaans'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'spaans'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Spaans'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'b48fa351-4561-44c7-a071-ebfd6103eec3' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','rekenen en wiskunde'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'rekenen en wiskunde'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Rekenen'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = '8b194f4d-d757-440d-b8a2-e7427849a6db' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','wereldorientatie'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'wereldorientatie'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Wereldoriëntatie'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'c001f86a-4f8f-4420-bd78-381c615ecedc' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','aardrijkskunde'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'aardrijkskunde'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Aardrijkskunde'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'ef3a0b2e-0843-4e0a-b45b-788be6e1ec8d' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','geschiedenis'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'geschiedenis'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Geschiedenis'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'f97e788f-5aa6-4ab4-9448-9e27b79daa9e' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','natuur'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'natuur'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Natuur'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'c6971373-aa44-4de9-91ef-aca886d42a6a' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','techniek'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'techniek'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Techniek'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'c001f86a-4f8f-4420-bd78-381c615ecedc' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','milieu'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'milieu'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Aardrijkskunde'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'd45cf1d7-3d8e-476a-a4ef-a39440820199' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','verkeer'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'verkeer'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Verkeer'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = '04058361-4e9e-4c02-a057-41605a7f37b5' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','gezond en redzaam gedrag'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'gezond en redzaam gedrag'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Gezond en redzaam gedrag'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = '70c518f8-5719-4d0a-b3d8-6589073b9887' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','burgerschapsvorming'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'burgerschapsvorming'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Burgerschapsvorming'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'e605402f-4cc2-46bb-9026-d1d49bde17bf' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','levensbeschouwing'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'levensbeschouwing'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Godsdienst'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'e605402f-4cc2-46bb-9026-d1d49bde17bf' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','godsdienst'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'godsdienst'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Godsdienst'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'fbf55a0b-41b6-4dc7-848d-ec41378c9c53' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','geestelijke stromingen'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'geestelijke stromingen'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Geestelijke stromingen'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = '35d0e3ed-d62e-40a5-8bff-46f1de51e47a' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','sociaal-emotionele ontwikkeling'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'sociaal-emotionele ontwikkeling'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Sociaal-emotionele ontwikkeling'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = '4aa16ae7-48c6-4f96-b48d-a67389a7050d' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','kunstzinnige orientatie'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'kunstzinnige orientatie'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Kunstzinnige oriëntatie'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'f1116b34-14c9-4098-85fb-aed1b9473894' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','handvaardigheid'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'handvaardigheid'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Handvaardigheid'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = '5cb7f440-c370-4056-b30d-f57130cccede' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','tekenen'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'tekenen'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Tekenen'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = '7aa6f577-b02d-484a-90d6-72fc80199f9a' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','muziek'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'muziek'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Muziek'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = '904a6dbc-c236-42c8-aaa9-a5d7eaa9639f' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','drama'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'drama'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Drama'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = '34f8bed2-b9f1-4de9-8db7-ee3d9bbb10f2' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','bewegingsonderwijs'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'bewegingsonderwijs'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Bewegingsonderwijs'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'e8e7fa96-dfc6-4d6d-a41b-a44c1b5b4138' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','computervaardigheden%2FICT'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'computervaardigheden%2FICT'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Computervaardigheden/ ICT'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
<xsl:when test="node() = 'd35b903f-1598-4bdd-a2fa-8aba854df762' and not(key('classification-by-oldIdvdex_classification_vakaanduidingen_po_2009','filosofie'))">
<xsl:element name="{$usedNamespace}:taxon">
<xsl:element name="{$usedNamespace}:id">
<xsl:value-of select="'filosofie'"/>
</xsl:element>
<xsl:element name="{$usedNamespace}:entry">
<xsl:element name="{$usedNamespace}:langstring"><xsl:attribute name="xml:lang"><xsl:text>nl</xsl:text></xsl:attribute><xsl:value-of select="'Filosofie'"/></xsl:element>
</xsl:element>
</xsl:element>
</xsl:when>
</xsl:choose>
</xsl:for-each>
</xsl:template>




</xsl:stylesheet>

