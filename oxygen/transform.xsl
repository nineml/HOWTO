<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:cs="http://nineml.com/ns/coffeesacks"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                exclude-result-prefixes="#all"
                version="3.0">

<xsl:output method="xml" encoding="utf-8" indent="yes"/>

<xsl:param name="grammar" as="xs:string" required="true"/>
<xsl:param name="input" as="xs:string" required="true"/>

<xsl:template name="main">
  <xsl:variable name="uri" select="resolve-uri($grammar, static-base-uri())"/>
  <xsl:variable name="parser" select="cs:load-grammar($uri)"/>
  <xsl:sequence select="$parser(unparsed-text($input))"/>
</xsl:template>

</xsl:stylesheet>
