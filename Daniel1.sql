CREATE TABLE `applications` (
  `application_id` bigint(8) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Middle_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Phone_number` int(11) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `Company_Name` varchar(50) NOT NULL,
  `EIN` int(11) NOT NULL,
  `Entity_Type` NOT NULL,
  `Company_Description` varchar(200) NOT NULL,
  
  PRIMARY KEY (`application_id`)
);

--  create applications 
-- create cert and finance


CREATE TABLE `Certifications_Financials` (
  `Cert&Finance_ID` bigint(11) NOT NULL,
  `Tax_Records(7Years)` bigint(11) NOT NULL,
  `Company_Felonies` int NOT NULL,
  `Company_Clearence_(DCSA)` int NOT NULL,
  `SF-328_Certification` varchar(11) NOT NULL,
  `CMMC_Certificate` bool NOT NULL, 
  `application_id` bigint(8) NOT NULL,
  PRIMARY KEY (`Cert&Finance_ID`),
  KEY `db_app_id` (`application_id`),
  
  CONSTRAINT `db_app_id` FOREIGN KEY (`application_id`) REFERENCES `applications` (`application_id`) ON UPDATE CASCADE
)