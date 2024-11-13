<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <!-- Template for the root element -->
    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <!-- Define a simple page layout -->
                <fo:simple-page-master master-name="simple">
                    <fo:region-body margin="1in"/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <!-- Sequence of pages using the defined layout -->
            <fo:page-sequence master-reference="simple">
                <fo:flow flow-name="xsl-region-body">
                    <!-- Block for student details -->
                    <fo:block font-size="18pt" font-family="sans-serif" line-height="24pt" space-after.optimum="15pt" text-align="center">
                        <xsl:text>Student Details</xsl:text>
                    </fo:block>
                    <fo:block font-size="12pt" font-family="sans-serif" line-height="18pt" space-after.optimum="10pt">
                        <xsl:text>Name: </xsl:text>
                        <xsl:value-of select="//student/name"/>
                    </fo:block>
                    <fo:block font-size="12pt" font-family="sans-serif" line-height="18pt" space-after.optimum="10pt">
                        <xsl:text>Age: </xsl:text>
                        <xsl:value-of select="//student/age"/>
                    </fo:block>
                    <fo:block font-size="12pt" font-family="sans-serif" line-height="18pt">
                        <xsl:text>Subjects:</xsl:text>
                        <fo:block>
                            <xsl:for-each select="//student/subjects/subject">
                                <fo:block>
                                    <xsl:value-of select="."/>
                                </fo:block>
                            </xsl:for-each>
                        </fo:block>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>

</xsl:stylesheet>
