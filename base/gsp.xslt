<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" />

    <xsl:strip-space elements="*"/>

	<!-- gsp.xslt
		This xslt defines all of the core rules for a transformation.  This also defines
		the basic types of UI elements that are available for the .gsp format.
	 -->

	 <!-- Get started with the root transform -->
    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>

    <!-- Copy all nodes and attributes (Identity transform),
    This ensures any unmatched tags are still copied-->
    <xsl:template match="@*|node()">
      <xsl:copy>
        <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
    </xsl:template>

    <!-- Strip out any comments in the transformed files -->
    <xsl:template match="comment()"/>


 

</xsl:stylesheet>
