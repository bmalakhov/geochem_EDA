/*Example sql to extract all data from Scott Halley's geochemistry dataset*/
select 
       t1.id, 
       t3.east,
       t3.north,
       t3.elevation,
       t2.name as "hole",
       t3.from1 as "from",
       t3.to1 as "to",
       t4.name as "element",
       t1.mant,  /*mantissa value*/
       t1.expo, /*exponent -2 pct and -6 ppm*/
--       t1.mant*pow(10,t1.expo) as concentration, /*uncomment line, if your version sqllite3.dll contains math functions*/
       t1.exclusion_ref,
       t5.name   as "exclusion reasons"
from 
     data t1, /*data table*/
     holes t2,  /*holes table*/
     samples t3, /*samles table*/
     elements t4, /*elements table*/
     exclusion_reasons t5 /*exlusion reasons table*/
where 
      t1.sample_ref=t3.id  /* join samples and data */
      and t3.hole_ref=t2.id   /* join samples and holes */
      and t1.element_ref=t4.id   /* join elements and data */
      and t1.exclusion_ref=t5.id /* join data and exclusion_reasons */
      /*if label exclusion_ref=0 then only unequivocal data will be retrieved, exclusion_ref<>0 to view exclusions or remove next line if you need all */
      and t1.exclusion_ref=0 
order by t1.id asc 