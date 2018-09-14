drop procedure procCheckBlight;

DELIMITER $$
CREATE PROCEDURE procCheckBlight()
DETERMINISTIC
BEGIN
    DECLARE i int DEFAULT 0;
    
    DECLARE pcity varchar(255);
    DECLARE pGeoMap varchar(255);
    DECLARE p311Complaints varchar(255);
    DECLARE platx double;
    DECLARE plongy double;
    declare done int;
    
	
        declare cur1 cursor for 
      select city, `GeoMap`,311Complaints,latx,longy
		from ListOfBuildingsIdentified where Blighted is null;
		
	declare continue handler for not found set done=1;

    	set done = 0;
    	open cur1;
    		igmLoop: loop
				fetch cur1 into pcity,pGeoMap,p311Complaints,platx,plongy;
				if done = 1 then leave igmLoop; end if;		
					  
				IF  EXISTS(select 1 from detroit_demolitionpermits where latX1 <=platx and latX2 <=platx and longY1 >= plongy and longY2 <= plongy ) THEN
					 update 	dataimports.ListOfBuildingsIdentified set Blighted=1 where latx=platx and longy = plongy;	
					 insert into IterationReport(city,GeoMap,`311Complaints`,latx,longy,Blighted)	values (pcity,pGeoMap,p311Complaints,platx,plongy,1);
					
				ELSE
					insert into IterationExceptionReport(city,GeoMap,`311Complaints`,latx,longy,Blighted)	values (pcity,pGeoMap,p311Complaints,platx,plongy,0);
						
				END IF;
    		end loop igmLoop;
    
    	close cur1;
    
END$$
DELIMITER ;

