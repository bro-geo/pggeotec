<h1> PGGEOTEC </h1>

This is a PostgreSQL extension that is responsible for the phisical implementation of a Tridimensional Geotechnical Database modeled on Object Modeling Technique for Geographic Applications (OMT-G). This database is part of the thesis that will be presented in Geotechnical Pós Graduation Program in UnB with the preliminar title: "Banco tridimensional de dados geotécnicos". A sample database will be available in a (.custom) format that can be restored the database in PostgreSQL database.
 
<h3> Dependent resources </h3>
<p> Postgres v11.7 or greater + Postgis 3.0.0 or greater (Only tested with postgres instaled in de default path.)</p>
<p>GDE Extension: "pggeotec.control" and "pggeotec--1.0.sql"</p>
<p>GDE Matviews Extension (Optional): "pggeotec.control" and "pggeotec--1.0.sql" and "pggeotec_matviews.control" and "pggeotec_matviews--1.0.sql</p>
<h3> Documentation </h3>
Online documentation: Currently only availabe on this page.
Simplified database model avalable at: https://doi.org/10.28927/SR.2021.073321
Implementation: Article in development.
<h3> Instalation of GDE Extension</h3>
<ul>
  <li> To be able to run the CREATE EXTENSION pggeotec command in your database, you need two download these files:<b>pggeotec--1.0.sql</b> and <b>pggeotec.control</b> and paste in <b> C:\Program Files\PostgreSQL\1[VERSION]share\extension </b> </li> 
  <li>Access your database and run command <b>"CREATE EXTENSION postgis"</b></li> 
  <li>Access your database and run command <b>"CREATE EXTENSION postgis_sfcgal"</b></li> 
  <li>Access your database and run command <b>"CREATE EXTENSION pggeotec"</b></li> 
  <li>Now you can use all functions available.</li>
  <li>Restore your database with custom file if you wants (Not avalilable yet). Follows the rules to include new data.</li>
</ul>

<h3> Instalation of GDE Matviews Extension</h3>
<ul>
  <li>The pggeotec extension must already be instaled.</li>
  <li>To be able to run the CREATE EXTENSION pggeotec_matviews command in your database, you need two download these files:<b>pggeotec_matviews--1.0.sql</b> and <b>pggeotec_matviews.control</b> and paste in <b> C:\Program Files\PostgreSQL\1[VERSION]share\extension </b></li> 
  <li>Access your database and run command <b>"CREATE EXTENSION pggeotec_matviews"</b></li> 
</ul>

<p> License</p>
<p><b> Copyright (C) 2021 Bruno Rodrigues</b></p>

<p>This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.</p>
<p>This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details. </p>
