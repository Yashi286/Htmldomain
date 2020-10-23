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
            
                <h1 style="text-align:center;">Employee management details</h1>
                <div class='Employee' style="float:left;">
                    
                    <table border="4" align="center">
                        <tr bgcolor="light-blue">
                            <!-- <th style="text-align:left">Id</th> -->
                            <th style="text-align:left">Name</th>
                            <th style="text-align:left">age</th>
                             <th style="text-align:left">salary</th>
                            <th style="text-align:left">emailid</th>
                            <th style="text-align:left">Phonenum</th>
                            <th style="text-align:left">designation</th>
                        </tr>
                        <xsl:for-each select="Company/Employee">
                            <tr>
                                <!-- <td> -->
                                    <!-- <xsl:value-of select="Id"/> -->
                                <!-- </td> -->
                                <td>
                                    <xsl:value-of select="Name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="age"/>
                                </td>
                                <td>
                                    <xsl:value-of select="salary"/>
                                </td>
                                <td>
                                    <xsl:value-of select="emailid"/>
                                </td>
                                <td>
                                 <xsl:value-of select="Phonenum"/>
                                </td>
                                <td>
                                    <xsl:value-of select="designation"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>


                

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
