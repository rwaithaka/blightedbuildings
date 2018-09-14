


INSERT INTO ListOfBuildingsIdentified(city, `GeoMap`,311Complaints)

SELECT 
    distinct
   
    `detroit_311complainttickets`.`city`, concat(`detroit_311complainttickets`.`lat`,',', `detroit_311complainttickets`.`lng`) as GeoMap,
    '311Complaints'
   
FROM
    `dataimports`.`detroit_311complainttickets`
WHERE
    issue_type IN ('Running Water in a Home or Building' , 'Graffiti',
        'Graffiti Abatement (internal use only, public issue)')
        
          
union 
        
select distinct MailingAddress,GeoMap_1, 'BlightViolations' from detroit_blightviolations where 
 ( ViolDescription like '%building%'  or  ViolDescription like '%dwelling%' or  
 ViolDescription like '%Rodent%' or ViolDescription like '%property%') 
 
 union
 
 select  Address, GeoMap_1, 'Crime' from   detroit_crime where Category in (
'DAMAGE TO PROPERTY'
'BURGLARY',
'ARSON',
'KIDNAPING',
'STOLEN PROPERTY',
'OTHER BURGLARY',
'CONSPIRACY BY COMPUTER'
) and Offensedescription NOT LIKE '%MOTOR VEHICLE%' and Offensedescription NOT LIKE '%TRAFFIC VIOLATION%'
and Offensedescription NOT LIKE '%VEHICLE%';

