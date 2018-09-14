

use dataimports;


drop table detroit_blight_violations;

CREATE TABLE `detroit_blight_violations` (

`id` int(16) NOT NULL AUTO_INCREMENT,
GeoMap_1 varchar(255),Country varchar(255),MailingState varchar(255),StateFee varchar(255),
LatLongAddress_1 varchar(255),
MailingStreetName varchar(255),ViolName varchar(255),LateFee varchar(255),PaymentStatus
 varchar(255),TicketNumber varchar(255),CleanUpCost varchar(255),TicketID varchar(255),JudgmentAmt varchar(255),ViolationCode varchar(255),TicketIssuedTime varchar(255),Void varchar(255),HearingDT varchar(255),MailingZipCode varchar(255),AdminFee varchar(255),
CourtTime varchar(255),FineAmt varchar(255),ViolationCategory varchar(255),MailingAddress varchar(255),NonUsAddressCode varchar(255),
ViolationAddress
 varchar(255),TicketIssuedDT varchar(255),ViolationStreetNumber varchar(255),Disposition varchar(255),ViolationStreetName varchar(255),
 MailingCity varchar(255),MailingStreetNumber varchar(255),AgencyName varchar(255),ViolDescription varchar(255),
 
   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;