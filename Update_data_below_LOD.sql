/*View data below current method LOD*/
select count(t1.id)
--select t1.id, t3.id, t3.name, t1.mant, t2.detection_limit, t1.exclusion_ref, t1.expo
from data t1, detection_limits t2 , elements t3
where t1.element_ref=t2.element_ref and t2.method_ref=0 and t1.element_ref=t3.id 
--and t3.name='Ta' 
and t1.mant<t2.detection_limit 
--and t1.mant>0 
and t1.exclusion_ref=2
order by t1.mant asc

/*Update data below LOD it will be marked exclusion_ref=2  */
update data 
set exclusion_ref=2 
where data.exclusion_ref=0 and data.id in (
select t1.id
from data t1, detection_limits t2 , elements t3
where t1.element_ref=t2.element_ref and t2.method_ref=0 and t1.element_ref=t3.id 
--and t3.name='Ta' 
and t1.mant<t2.detection_limit 
--and t1.mant>0 
and t1.exclusion_ref=0
)