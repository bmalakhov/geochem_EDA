<h1>Scott Halley's geochemistry data EDA</h1>

This is small data exploration from the well-known Scott Halley dataset:
<ul>
<li>statistical analysis for possible errors</li>
<li>data conversion to a normilzes database in sqlite format</li>
<li>additional statistical analysis by holes</li>
<li>data markup below the LOD (using typical LOD for method 4 acid digestion) and identified statistical errors</li>
</ul>

Files descriptions:
<ul>
<li> Porphyry Cu Geochemistry Module1.xlsx  copy of source Scott Halley's dataset</li>
<li> geochem_test2.ipynb - introductory analysis</li>
<li> Porphyry_Cu_Geochemistry_to_database_v0.1.pdf - a brief description of the database</li>
<li> sqllite_data_model.png - data model diagram</li>
<li> create_data_base.sql - formal query to create tables </li>
<li> geo3.db - database in sqllite3 format</li>
<li> geochem_sql2.ipynb - statistics calculations</li>
<li> Be_in_DDH004.sql - the mysteries of beryllium in borehole 4  (you can use free SQLiteStudio or other to run sql query)</li>
<li> Elements_below_LDO.sql - query to view data below LOD (there are 6 options for laboratory tests, with the different threshold of sensitivity for each element)</li>
</ul>

![model5](https://user-images.githubusercontent.com/1739498/174016031-3cd7b91b-ea4e-41cc-b37d-c6952880c403.png)
