<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:html="http://www.w3.org/TR/REC-html40" 
	xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9" 
	xmlns:image="http://www.google.com/schemas/sitemap-image/1.1"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>XML Sitemap</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<style type="text/css">body{font-family:"Lucida Grande","Lucida Sans Unicode",Tahoma,Verdana,sans-serif;font-size:13px}#header,#footer{padding:2px;margin:10px;font-size:8pt;color:gray}a{color:black}td{font-size:11px}th{text-align:left;padding-right:30px;font-size:11px}tr.high{background-color:whitesmoke}#footer img{vertical-align:bottom}</style>
</head>
<body>
	<div id="content">
		<table cellpadding="5">
			<tr class="high">
				<th>#</th>
				<th>URL</th>
			</tr>
			<xsl:variable name="lower" select="'abcdefghijklmnopqrstuvwxyz'"/>
			<xsl:variable name="upper" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
			<xsl:for-each select="sitemap:urlset/sitemap:url">
			<tr><xsl:if test="position() mod 2 != 1"><xsl:attribute  name="class">high</xsl:attribute></xsl:if>
				<td><xsl:value-of select="position()"/></td>
				<td><xsl:variable name="itemURL"><xsl:value-of select="sitemap:loc"/></xsl:variable><a href="{$itemURL}"><xsl:value-of select="sitemap:loc"/></a></td>
			</tr>
			</xsl:for-each>
		</table>
	</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
