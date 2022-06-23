/*Top 10 Be vaues, id=1873 is outlier marked with exclusion_ref=1 and comarison with commercial 4 acid digestion LOD*/
select t1.id, t1.mant,t1.expo, t5.detection_limit, t5.detection_limit_expo,t6.name 
from data t1, elements t2, samples t3, holes t4 , detection_limits t5, geochem_methods t6
where t1.element_ref=t2.id and t1.sample_ref=t3.id and t3.hole_ref=t4.id 
and t5.element_ref=t2.id and t5.method_ref=t6.id 
and t6.id in (0,1) /*method number*/
and t4.name='DDH004'   /*hole name*/
and t2.name='Be'  /*element number*/
--and t1.mant < t5.detection_limit /*only below LOD*/
order by t1.mant desc LIMIT 10;