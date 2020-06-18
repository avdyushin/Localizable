<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">

<xsl:output indent="no" omit-xml-declaration="yes"/>

<xsl:key name="lang_id" match="/strings/string/node()" use="name(.)"/>
<xsl:variable name="all" select="/strings/string/node()[generate-id() = generate-id(key('lang_id',name(.))[1])]"/>

<xsl:template match="/strings/*">
<xsl:if test="count(*) != count($all) - 1">
<xsl:text>missing id: </xsl:text><xsl:value-of select="@id"/>
</xsl:if>
</xsl:template>
</xsl:stylesheet>
