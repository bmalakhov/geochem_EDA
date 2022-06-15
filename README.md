Scott Halley's geochemistry data EDA

This is small data exploration from the well-known Scott Halley dataset : 
- statistical analysis for possible errors
- data conversion to a normilzes database in sqlite format
- additional statistical analysis by holes
- data markup below the LOD (using typical LOD for method 4 acid digestion) and identified statistical errors

files description:
- Porphyry Cu Geochemistry Module1.xlsx  copy of source Scott Halley's dataset
- geochem_test2.ipynb - introductory analysis
- Porphyry_Cu_Geochemistry_to_database_v0.1.pdf - a brief description of the database
- sqllite_data_model.png data model diagram
- create_data_base.sql - formal query to create tables 
- geo3.db database in sqllite3 format
- geochem_sql2.ipynb - statistics calculations
- Be_in_DDH004.sql - the mysteries of beryllium in borehole 4
- Elements_below_LDO.sql - query to view data below LOD (there are 6 options for laboratory tests, with the different threshold of sensitivity for each element)
