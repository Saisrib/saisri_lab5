<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <title>Employee Data</title>
    </head>
    <body>
      <h1>Employee Information</h1>
      <table border="1">
        <tr>
          <th>Name</th>
          <th>Position</th>
          <th>Salary</th>
        </tr>
        <xsl:apply-templates select="employees/employee"/>
      </table>
    </body>
  </html>
</xsl:template>

<xsl:template match="employee">
  <tr>
    <td><xsl:value-of select="name"/></td>
    <td><xsl:value-of select="position"/></td>
    <td><xsl:value-of select="salary"/></td>
  </tr>
</xsl:template>

</xsl:stylesheet>
