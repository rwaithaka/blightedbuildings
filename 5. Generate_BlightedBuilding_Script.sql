

select distinct * from ListOfBuildingsIdentified;


select *,substring(GeoMap,locate(' ',GeoMap)+1) ,SUBSTRING_INDEX(GeoMap,' ',1) from ListOfBuildingsIdentified
where locate(' ',GeoMap)>0 and  locate(',',GeoMap)=0;




-- update ListOfBuildingsIdentified set
-- 
-- latx = SUBSTRING_INDEX(GeoMap,' ',1), longy= substring(GeoMap,locate(' ',GeoMap)+1)
-- where locate(' ',GeoMap)>0 and  locate(',',GeoMap)=0;


select lat, `long`,latX1,longY1,latX2,longY2
from detroit_demolitionpermits;



select distinct * from ListOfBuildingsIdentified ;



create table IterationReport as 
select  * from ListOfBuildingsIdentified limit 10;

truncate table IterationReport;


select * from IterationReport;
-- 
-- UPDATE detroit_demolitionpermits set latX1=(lat + (20 * 0.0000089)), longY1=(`long` + ((20 * 0.0000089)/ COS(lat * 0.018))),
-- 
-- latX2=(lat - (20 * 0.0000089)) , longY2= (`long` - ((20 * 0.0000089)/ COS(lat * 0.018)));



