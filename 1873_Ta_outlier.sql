/*Top 10 tantalum vaues, id=1873 is outlier marked with exclusion_ref=1*/
select * from data t where  
t.element_ref=37 
ORDER BY t.mant DESC LIMIT 10;