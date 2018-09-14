
use mydatabaserw;


drop table `mydatabaserw` ;

CREATE TABLE `detroit_311_complaint_tickets` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  ticket_status varchar(255) DEFAULT NULL,
image varchar(255) DEFAULT NULL,issue_description varchar(1024) DEFAULT NULL,address varchar(512) DEFAULT NULL,lng varchar(255) DEFAULT NULL,
city varchar(255) DEFAULT NULL,issue_type varchar(255) DEFAULT NULL,rating varchar(255) DEFAULT NULL,ticket_closed_date_time varchar(255) DEFAULT NULL,
ticket_id int(16) DEFAULT NULL,ticket_created_date_time varchar(255) DEFAULT NULL,ticket_last_updated_date_time varchar(255) DEFAULT NULL,
location varchar(255) DEFAULT NULL,acknowledged_at varchar(255) DEFAULT NULL,lat float DEFAULT NULL,

  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;





LOAD DATA LOCAL INFILE 'D:\\Class - Data Science\\Data Science Certification\\Assig 1. datasets\\dataprocessd\\detroit_311_complaint_tickets.txt' IGNORE INTO TABLE `mydatabaserw`.`detroit_311_complaint_tickets` FIELDS TERMINATED BY '	' LINES TERMINATED BY '\r' IGNORE 1 LINES (`ticket_status`, `image`, `issue_description`, `address`, `lng`, `city`, `issue_type`, `rating`, `ticket_closed_date_time`, `ticket_id`, `ticket_created_date_time`, `ticket_last_updated_date_time`, `location`, `acknowledged_at`, `lat`);
