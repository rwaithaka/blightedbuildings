


select *  from detroit_demolitionpermits where CASE_DESCRIPTION like '%Building%'

#update detroit_demolitionpermits 
#set geom = SUBSTRING(site_location,LOCATE ( '(',site_location), LOCATE ( ')',site_location))


update detroit_demolitionpermits 
set geom= replace(geom,'"','')


select distinct BLD_PERMIT_TYPE from detroit_demolitionpermits 



\
#select *,substring(geom,locate(',',geom)+1) ,SUBSTRING_INDEX(geom,',',1) from detroit_demolitionpermits;