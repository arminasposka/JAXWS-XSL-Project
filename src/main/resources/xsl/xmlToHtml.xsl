<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Student Information</title>
            </head>
            <body>
                <h1>Student Details</h1>
                <table border="1">
                    <tr>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Subjects</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="StudentResponse/name"/></td>
                        <td><xsl:value-of select="StudentResponse/age"/></td>
                        <td>
                            <xsl:for-each select="StudentResponse/subjects/subject">
                                <xsl:value-of select="."/>
                                <br/>
                            </xsl:for-each>
                        </td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
