<h1> Tridimensional Geotechnical Database </h1>

This is a phisical implementation in Postgres v11.7 + Postgis 3.0.0 of a Tridimensional Geotechnical Database modeled on Object Modeling Technique for Geographic Applications (OMT-G). This database is part of the thesis that will be presented in Geotechnical Pós Graduation Program in UnB with the preliminar title: "Banco tridimensional de dados geotécnicos" and will available in a PostgreSQL extension. The current structure will be available in a (.custom) format that is needed to restore the database in PostgreSQL database.
<h3> Dependent resources </h3>
<p> Postgres v11.7 + Postgis 3.0.0 (Have to be instaled in de default path.)</p>
<p>GDE extension</p>
<h3> Documentation </h3>
Online documentation: Only availabe on this page.
<h3> Instalation </h3>
<ul>
  <li> To be able to run the CREATE EXTENSION GDE command in your database, you need two download these files:<b>gde--0.1.sql</b> and <b>gde.control</b> and paste in <b> C:\Program Files\PostgreSQL\11\share\extension </b> </li> 
  <li>Access your database and run command <b>"CREATE EXTENSION gde"</b></li> 
  <li>Now you can use all functions available.</li>
  <li>Restore your database with custom file (Not avalilable yet).</li>
</ul>

<p> License</p>
<p><b> Copyright (C) 2021 Bruno Rodrigues</b></p>

<p>This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.</p>
<p>This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details. </p>
