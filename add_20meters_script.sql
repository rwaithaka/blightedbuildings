SELECT 
    *, lat + (20 * 0.0000089) as building_latitude, LON + ((20 * 0.0000089)/ COS(lat * 0.018)) as building_longitude
FROM
    dataimports.detroit_crime
WHERE
    category IN ('BURGLARY' , 'ARSON',
        'ENVIRONMENT',
        'HEALTH-SAFETY',
        'OTHER BURGLARY') aND ( OFFENSEDESCRIPTION like '%BUILDING%' or OFFENSEDESCRIPTION like '%RESIDENCE%');
        
        

SELECT DISTINCT
    category
FROM
    dataimports.detroit_crime;
