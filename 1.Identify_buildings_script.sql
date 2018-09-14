
## 1. complaints

SELECT 
    `detroit_311complainttickets`.`id`,
    `detroit_311complainttickets`.`ticket_status`,
    `detroit_311complainttickets`.`image`,
    `detroit_311complainttickets`.`issue_description`,
    `detroit_311complainttickets`.`address`,
    `detroit_311complainttickets`.`lng`,
    `detroit_311complainttickets`.`city`,
    `detroit_311complainttickets`.`issue_type`,
    `detroit_311complainttickets`.`rating`,
    `detroit_311complainttickets`.`ticket_closed_date_time`,
    `detroit_311complainttickets`.`ticket_id`,
    `detroit_311complainttickets`.`ticket_created_date_time`,
    `detroit_311complainttickets`.`ticket_last_updated_date_time`,
    `detroit_311complainttickets`.`location`,
    `detroit_311complainttickets`.`acknowledged_at`,
    `detroit_311complainttickets`.`lat`
FROM
    `dataimports`.`detroit_311complainttickets`
WHERE
    issue_type IN ('Running Water in a Home or Building' , 'Graffiti',
        'Graffiti Abatement (internal use only, public issue)');


SELECT DISTINCT
    `issue_description`
FROM
    `dataimports`.`detroit_311complainttickets`;
    
    
###c 2. blight buildings
select distinct * from detroit_blightviolations where 
 ( ViolDescription like '%building%'  or  ViolDescription like '%dwelling%' or  ViolDescription like '%Rodent%' or ViolDescription like '%property%') 




### 3. Crime buildings

select  * from   detroit_crime where Category in (
'DAMAGE TO PROPERTY'
'BURGLARY',
'ARSON',
'KIDNAPING',
'STOLEN PROPERTY',
'OTHER BURGLARY',
'CONSPIRACY BY COMPUTER'
) and Offensedescription NOT LIKE '%MOTOR VEHICLE%' and Offensedescription NOT LIKE '%TRAFFIC VIOLATION%'
and Offensedescription NOT LIKE '%VEHICLE%';
;



### 4. Demolition Permits

select * from detroit_demolitionpermits where CASE_DESCRIPTION like '%Building%';

select distinct BLD_PERMIT_TYPE from detroit_demolitionpermits 

/** DPW - Debris Removal
Street Light Pole Down
DPW - Other environmental
Fire Hydrant Issue
Illegal Dumping / Illegal Dump Sites
Abandoned Vehicle
Manhole Cover Issue
Water Main Break
Potholes
Curbside Solid Waste Issue
Running Water in a Home or Building
Traffic Sign Issue
Clogged Drain
Tree Issue
Traffic Signal Issue
Trash Issue - Improper placement of refuse container between collections/left at curbside
Trash Issue - Bulk waste deposited more than 24 hours before designated time
Residential Snow Removal Issue
Graffiti
Graffiti Abatement (internal use only, public issue)
Test (internal use only, public issue)
Detroit Land Bank Referral
Customer Service (internal use only, private issue)

**/