<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <style>
            div
            {
                text-align:center;
                width:48%;
                border:2px solid black;
            }
            td,th
            {
                font-size:larger;
                padding:20px;
                text-align:center !important;
            }
                </style>
            </head>
            <body>
                <h1 style="text-align:center;">List of Registered users</h1>
                <div class='Registered' style="float:left;">
                    <h2>User information</h2>
                    <table border="2" align="center">
                        <tr bgcolor="light-blue">
                            <th style="text-align:left">UserId</th>
                            <th style="text-align:left">Address</th>
                            <th style="text-align:left">MNo</th>
                            <th style="text-align:left">Duration</th>
                        </tr>
                        <xsl:for-each select="Register/Registered">
                            <tr>
                                <td>
                                    <xsl:value-of select="UserId"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Address"/>
                                </td>
                                <td>
                                    <xsl:value-of select="MNo"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Duration"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>


                <div class='Users'  style="float:right;">
                    <h2> Users </h2>
                    <table border="2"  align="center">
                        <tr bgcolor="green">
                            <th style="text-align:left">Name</th>
                            <th style="text-align:left">Occupation</th>
                            <th style="text-align:left">gender</th>
                        </tr>
                        <xsl:for-each select="Register/User">
                            <tr>
                                <td>
                                    <xsl:value-of select="Name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Occupation"/>
                                </td>
                                <td>
                                    <xsl:value-of select="gender"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
