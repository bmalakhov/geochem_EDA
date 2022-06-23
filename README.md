<h1>Scott Halley's geochemistry data EDA</h1>

This is exploratory data analysis notebook based on Scott Halley's porphyry geochemistry dataset:o
<ul>  
<li>statistical analysis for possible outliers and non-normal distributions </li>
<li>data conversion to a database in sqllite format</li>
<li>additional statistical analysis by drill holes</li>
<li>data markup below the LOD for the "4 acid digestion method" and identified statistical errors</li>
</ul>

Files descriptions:
<ul>
<li> Porphyry Cu Geochemistry Module1.xlsx  copy of source Scott Halley's dataset</li>
<li> geochem_test2.ipynb - EDA analysis</li>
<li> Porphyry_Cu_Geochemistry_to_database_v0.1.pdf - a brief description of the database</li>
<li> 144_diagrams.zip - a picture set generated by geochem_sql2.ipynb for the statistical anomaly finding</li>
<li> create_data_base.sql - formal query to create tables </li>
<li> geo3.db - database in sqllite3 format</li>
<li> geochem_sql2.ipynb - statistical calculations</li>
<li> how_to_get_clear_data.sql - final sql query to retrieve labeled data </li>
<li> how_to_get_clear_data.ipynb - example how to use labeled data in the notebook </li>
<li> Be_in_DDH004.sql - the mysteries of beryllium in borehole 4  (you can use free SQLiteStudio or other to run sql query)</li>
<li> Elements_below_LDO.sql - query to view data below LOD (there are 6 options for laboratory tests and one for current dataset LOD, with the different threshold of sensitivity for each element)</li>
<li> how_to_get_clear_data.ipynb - an example of using labeled data in notebook, need get_clear_data.sql, geo3.db files in the notebook default folder</li>  
</ul>

![model6](https://user-images.githubusercontent.com/1739498/175022473-3669dab6-f690-45f7-8533-a2cd7bddf84f.png)
Free personal edition of sqlite expert may be used to operate with sql
