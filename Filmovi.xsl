<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

		<xsl:template match="/">
		<xsl:variable name="BrojFilmova" select="count(//Film)"/>
		
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Gangsterski filmovi</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="http://fonts.googleapis.com/css?family=Raleway:400,200,500,600,700,800,300" rel="stylesheet">
<link href="default.css" rel="stylesheet" type="text/css" media="all">
<link href="fonts.css" rel="stylesheet" type="text/css" media="all">
</head>
 <body>
        <nav>
            <ul class="container">
                <li><h2><a name="naslovnica"><a href="Kontakt/Kontakt.html"><i class="fas fa-phone-square"></i>  KONTAKT</a></a></h2></li>
                <li><h2><a name="naslovnica"><a href="O_nama/o_nama.html"><i class="fas fa-address-card"></i></i> O NAMA</a></a></h2></li>
                <li><h2><a name="naslovnica"><a href="Novosti/novosti.html"><i class="fas fa-newspaper"></i> NOVOSTI</a></a></h2></li>
            </ul>
        </nav>
	
	<div id="page" class="container">
				<p>Izaberite neke od <xsl:value-of select="$BrojFilmova"/> ponuđenih filmova</p>
				<xsl:template match="/">
					<xsl:apply-templates select="//Film"/>
				</xsl:template>
				
				
				<xsl:template match="//Film">
				<div class="title"><h2><xsl:apply-templates select="NaslovIzvornika"/></h2></div>
					<br/>
					<p>Redatelj: <b><xsl:apply-templates select="Redatelj"/></b></p>
					<p>Producent: <xsl:apply-templates select="Producent"/></p>
					<p>Scenarij: <xsl:apply-templates select="Scenarij"/></p>
					<p>Glavne Uloge: <xsl:apply-templates select="GlavneUloge"/></p>
					<p>Distributer: <xsl:apply-templates select="Distributer"/></p>
					<p>Godina Izdanja: <xsl:apply-templates select="GodinaIzdanja"/></p>
					<br/>
				<a href="#">Nazad</a></br>
				</xsl:template>	
		

<footer>Luka Matić 
           <br/>
           JMBAG=0246097926
       </footer>

</body></html>
		
		
</xsl:template>
</xsl:stylesheet>