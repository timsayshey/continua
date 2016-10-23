
DROP TABLE IF EXISTS `_default`;

CREATE TABLE `_default` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdat` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updatedat` datetime DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedat` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;



# Dump of table api_notes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `api_notes`;

CREATE TABLE `api_notes` (
  `createby` int(11) DEFAULT NULL,
  `updateby` int(11) DEFAULT NULL,
  `deleteby` int(11) DEFAULT NULL,
  `createdat` datetime DEFAULT NULL,
  `updatedat` datetime DEFAULT NULL,
  `deletedat` datetime DEFAULT NULL,
  `siteid` int(11) NOT NULL DEFAULT '60',
  `globalized` int(11) NOT NULL DEFAULT '0',
  `sortorder` int(11) NOT NULL DEFAULT '9999',
  `encounterId` int(11) NOT NULL,
  `encounterType` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `followUpNeeded` int(1) DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `clientOutlook` int(11) DEFAULT NULL,
  `noteId` int(11) NOT NULL AUTO_INCREMENT,
  `entryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `staffInvolved` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`noteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `api_notes` WRITE;
/*!40000 ALTER TABLE `api_notes` DISABLE KEYS */;

INSERT INTO `api_notes` (`createby`, `updateby`, `deleteby`, `createdat`, `updatedat`, `deletedat`, `siteid`, `globalized`, `sortorder`, `encounterId`, `encounterType`, `followUpNeeded`, `note`, `clientOutlook`, `noteId`, `entryDate`, `staffInvolved`)
VALUES
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,20,'Full intake',0,'Loss of employment due to layoff, which resulted in the loss of client\'s health insurance and the exacerbation of client\'s pre-existing MDD. Client was referred to BHR, SLATE, and Employment Connection.',4,1,'2016-05-01 00:00:00','Effrem'),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,20,'Client meeting',0,'First meeting between client and assigned case manager. Reviewed client\'s recent history and past history at PPCS. Discussed client\'s perception of his mental state (client states that his MDD symptoms have worsened since the loss of his insurance and the sudden withdrawal from his medications; client does not report any suicidal thoughts or ideation). Client has contacted BHR and has an intake appointment on 5/7/16. Client has not contacted employment referrals yet, as he wants regain a healthy mental state first. Reviewed coping mechanisms with client, and what to do if his symptoms seemed to worsen.',4,2,'2016-05-03 00:00:00','Liz'),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,20,'Check In',0,'Spoke with client briefly; he reports that his appointment at BHR was cancelled without notification by the provider. Client has rescheduled appointment for 5/18/16.',3,3,'2016-05-07 00:00:00','Delores'),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,20,'Staff Observation',0,'Client told another resident that he was having thoughts of suicidal ideation. I confirmed this with the client, who gave permission for me to call 911 and BHR. BHR arrived before the ambulance and left in the ambulance with the client. Client is expected to be placed on a 72 hour hold.',1,4,'2016-05-13 00:00:00','Matt'),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,20,'Client meeting',0,'Client returned to the shelter today after the mandatory 72 hour hold, which, due to a psych bed shortage, was conducted entirely in the Missouri Baptist Emergency Department. Client reports that he is working with BHR, and has an assigned therapist and psychiatrist. Client feels that the sudden withdrawal of his long-term medications was the primary trigger for his suicidal thoughts, and client reports that he no longer feels suicidal. Will check in with client after his next BHR appointment on 5/19/16.',6,5,'2016-05-17 00:00:00','Liz'),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,20,'Check In',0,'Spoke with client; he is feeling much better about his mental health and his future employment prospects. Client is looking for positions on his own, and is uninterested in further referrals at this time.',7,6,'2016-05-22 00:00:00','Liz'),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,20,'Status Update',0,'Spoke briefly with client; he reports that nothing has changed and he is uninterested in any referrals.',7,7,'2016-06-01 00:00:00','Liz'),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,20,'Status Update',0,'Spoke briefly with client; he reports that nothing has changed and he is uninterested in any referrals.',7,8,'2016-06-13 00:00:00','Liz'),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,20,'Check In',0,'Spoke with client; he has started submitting applications to positions he located online (primarily Craig\'s List). He has no interest in referrals at this time.',7,9,'2016-06-29 00:00:00','Liz'),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,20,'Staff Observation',0,'I noticed that client seems to be in a consistently stable, positive mood.',8,10,'2016-07-11 00:00:00','Matt'),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,20,'Check In',0,'Spoke with client; he has heard back from a few positions that he has applied to through Craig\'s List, and he has scheduled a few interviews, but he hasn\'t received any offers yet. Client reports that he is happy with BHR\'s continued services, and he has kept all of his appointments.',6,11,'2016-07-23 00:00:00','Liz'),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,20,'Status update',0,'Spoke briefly with client; he reports that nothing has changed and he is uninterested in any referrals.',7,12,'2016-08-02 00:00:00','Liz'),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,20,'Check In',0,'Spoke with client; he has expanded his job sourcing to include warehouse-specific job listings, and he has also asked other clients to let him know if they hear of anything suitable. Client is keeping up with BHR, and has no interest in employment referrals at this time.',NULL,13,'2016-08-12 00:00:00','Liz'),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,20,'Check In',0,'Spoke with client; he has decided to pursue employment referrals. I provided client with referrals to Employment Connection and SLATE.',6,14,'2016-08-19 00:00:00','Liz'),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,20,'Status update',0,'Client reported in passing that he followed up on a previous referral from his case manager to Employment Connection, and stated that he is no longer working with them because he does not want to pursue temporary work; he wants to concentrate on finding permanent work. Encouraged client to follow-up on the SLATE referral he also received.',6,15,'2016-08-30 00:00:00','Kate'),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,20,'Status update',0,'Client reported in passing that he is working with SLATE, and he is happy with their assistance.',7,16,'2016-09-06 00:00:00','Effrem'),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,20,'Check In',0,'Spoke with client; he feels that he is getting a lot of benefits by working with SLATE, and that they have helped him write a new resume and practice for job interviews. Client is also satisfied with BHR\'s services. ',7,17,'2016-09-14 00:00:00','Liz'),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,20,'Check In',0,'Spoke with client; he received a warehouse forklift operator job offer last week, and he starts work tomorrow. The position is full-time, paid weekly, and with a union. Client plans to put his first paycheck towards a deposit on an apartment that he has viewed and liked.',NULL,18,'2016-10-01 00:00:00','Liz'),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,20,'Status update',0,'Client has signed a lease on an apartment, and plans to move in on 10/20/16.',9,19,'2016-10-16 00:00:00','Liz'),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,20,'Exit Intervew',0,'Client obtained a full-time job as a forklift operator, with union benefits, which allowed to save enough money to rent a studio apartment in Benton Park West.',9,20,'2016-10-23 06:51:07','Liz');

/*!40000 ALTER TABLE `api_notes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table api_provider
# ------------------------------------------------------------

DROP TABLE IF EXISTS `api_provider`;

CREATE TABLE `api_provider` (
  `siteid` int(11) NOT NULL DEFAULT '60',
  `globalized` int(1) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortorder` int(11) NOT NULL DEFAULT '9999',
  `createby` int(11) DEFAULT NULL,
  `updateby` int(11) DEFAULT NULL,
  `deleteby` int(11) DEFAULT NULL,
  `createdat` datetime DEFAULT NULL,
  `updatedat` datetime DEFAULT NULL,
  `deletedat` datetime DEFAULT NULL,
  `latitude` float NOT NULL DEFAULT '0',
  `longitude` float NOT NULL DEFAULT '0',
  `expected_demographic` varchar(255) DEFAULT NULL,
  `available_beds` int(11) NOT NULL DEFAULT '0',
  `used_beds` int(11) NOT NULL DEFAULT '0',
  `expected_used_beds` int(11) NOT NULL DEFAULT '0',
  `hours_open_mon` int(11) DEFAULT NULL,
  `hours_open_tue` int(11) DEFAULT NULL,
  `hours_open_wed` int(11) DEFAULT NULL,
  `hours_open_thur` int(11) DEFAULT NULL,
  `hours_open_fri` int(11) DEFAULT NULL,
  `hours_open_sat` int(11) DEFAULT NULL,
  `hours_open_sun` int(11) DEFAULT NULL,
  `hours_closed_mon` int(11) DEFAULT NULL,
  `hours_closed_tue` int(11) DEFAULT NULL,
  `hours_closed_wed` int(11) DEFAULT NULL,
  `hours_closed_thur` int(11) DEFAULT NULL,
  `hours_closed_fri` int(11) DEFAULT NULL,
  `hours_closed_sat` int(11) DEFAULT NULL,
  `hours_closed_sun` int(11) DEFAULT NULL,
  `short_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `api_provider` WRITE;
/*!40000 ALTER TABLE `api_provider` DISABLE KEYS */;

INSERT INTO `api_provider` (`siteid`, `globalized`, `id`, `name`, `website`, `address`, `phone_number`, `sortorder`, `createby`, `updateby`, `deleteby`, `createdat`, `updatedat`, `deletedat`, `latitude`, `longitude`, `expected_demographic`, `available_beds`, `used_beds`, `expected_used_beds`, `hours_open_mon`, `hours_open_tue`, `hours_open_wed`, `hours_open_thur`, `hours_open_fri`, `hours_open_sat`, `hours_open_sun`, `hours_closed_mon`, `hours_closed_tue`, `hours_closed_wed`, `hours_closed_thur`, `hours_closed_fri`, `hours_closed_sat`, `hours_closed_sun`, `short_name`)
VALUES
	(60,0,1,'Community Action Agency of St. Louis County','www.caastlc.org','2709 Woodson Rd. 63114','314-863-0015',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'recently paroled offenders',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CAASTLC'),
	(60,0,2,'Catholic Charitis of St. Louis: Midtown Center','https://www.ccstl.org/organizations/st-francis-community-services/','1202 S. Boyle Avenue, 63110','314-534-1180',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'youth',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Catholic Charities'),
	(60,0,3,'Catholic Charitis of St. Louis: Midtown Center','https://www.ccstl.org/organizations/st-francis-community-services/','1202 S. Boyle Avenue, 63110','314-534-1180',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'all',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Catholic Charities'),
	(60,0,4,'Catholic Charitis of St. Louis: Midtown Center','https://www.ccstl.org/organizations/st-francis-community-services/','1202 S. Boyle Avenue, 63110','314-534-1180',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'all',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Catholic Charities'),
	(60,0,5,'Catholic Charitis of St. Louis: Midtown Center','https://www.ccstl.org/organizations/st-francis-community-services/','1202 S. Boyle Avenue, 63110','314-534-1180',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'all',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Catholic Charities'),
	(60,0,6,'Catholic Charitis of St. Louis: Midtown Center','https://www.ccstl.org/organizations/st-francis-community-services/','1202 S. Boyle Avenue, 63110','314-534-1180',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'all',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Catholic Charities'),
	(60,0,7,'Doorways Housing','http://www.doorwayshousing.org/','4385 Maryland Avenue, 63108','314-535-1919',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'HIV/AIDS',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Doorways '),
	(60,0,8,'Employment Connection St. Louis','www.employmentstl.org/','2838 Market St., 63103','314-333-5627',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'all',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Employment Connection'),
	(60,0,9,'Epworth Children and Family Services','www.epworth.org/','110 N Elm Ave, 63119','314-961-5718',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'youth, families',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Epworth'),
	(60,0,10,'Every Child\'s Hope','https://everychildshope.org/','8240 St. Charles Rock Road, 63114','314-427-3755',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'youth, families',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ECH'),
	(60,0,11,'Family Resource Center','https://www.frcmo.org/','3309 S Kingshighway Blvd, 63139','314-534-9350',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'youth, families',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Family Resource Center'),
	(60,0,12,'Good Shepherd Children and Family Services','https://goodshepherdstl.org/','1340 Partridge Ave, 63130','314-854-5700',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'youth, families',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Good Shepherd'),
	(60,0,13,'Hazelwood School District','http://www.hazelwoodschools.org/','15955 New Halls Ferry Road, 63031','314-953-5000',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'youth, families',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hazelwood'),
	(60,0,14,'Humanitri','http://humanitri.org/','1447 East Grand Avenue, 63107','314.772.7720',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'all',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Humanitri'),
	(60,0,15,'Legal Services of Eastern Missouri','lsem.org/','4232 Forest Park Ave, 63108','314-534-4200',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'all',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'LSEM'),
	(60,0,16,'Lemay Housing Partnership, Inc.','www.lemayhousing.org/','336 E Ripa Ave, 63125','314-631-9905',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'all',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Lemay Housing Partnership, Inc.'),
	(60,0,17,'Loaves and Fishes for St. Louis','loavesandfishes-stl.org/','2750 McKelvey Rd, 63043','314-291-3857',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'all',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Loaves and Fishes'),
	(60,0,18,'Loaves and Fishes for St. Louis','loavesandfishes-stl.org/','2750 McKelvey Rd, 63043','314-291-3857',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'families',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Loaves and Fishes'),
	(60,0,19,'Paraquad','www.paraquad.org/','5240 Oakland Ave, 63110','314-289-4200',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'clients with disabilities',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Paraquad'),
	(60,0,20,'Peter and Paul Community Services','https://www.ppcsinc.org/','2612 Wyoming St, 63118','314-588-7111',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'men',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Peter and Paul Community Services'),
	(60,0,21,'Urban League of Metropolitan St. Louis','http://nul.iamempowered.com/affiliate/urban-league-metropolitan-saint-louis','3701 Grandel Square, 63108','314-615-3600',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'all',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Urban League'),
	(60,0,22,'Behavioral Health Response','bhrstl.org/','12647 Olive Blvd, 63141','314-469-4908',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'all',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'BHR'),
	(60,0,23,'St. Louis Agency on Training and Employment','https://www.stlouis-mo.gov/government/departments/slate/','1200 Market Street, 63103','314-622-4800',9999,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'all',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SLATE');

/*!40000 ALTER TABLE `api_provider` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table api_provider_encounter
# ------------------------------------------------------------

DROP TABLE IF EXISTS `api_provider_encounter`;

CREATE TABLE `api_provider_encounter` (
  `createby` int(11) DEFAULT NULL,
  `updateby` int(11) DEFAULT NULL,
  `deleteby` int(11) DEFAULT NULL,
  `createdat` datetime DEFAULT NULL,
  `updatedat` datetime DEFAULT NULL,
  `deletedat` datetime DEFAULT NULL,
  `siteid` int(11) NOT NULL DEFAULT '60',
  `globalized` int(11) NOT NULL DEFAULT '0',
  `sortorder` int(11) NOT NULL DEFAULT '9999',
  `userid` int(11) NOT NULL DEFAULT '0',
  `providerid` int(11) NOT NULL,
  `encounterid` int(11) NOT NULL,
  `encounterDate` date DEFAULT NULL,
  `departureDate` date DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `reason_entered` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `chronically_homeless` int(1) DEFAULT '0',
  `services_provided` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `interviews_practice` int(11) NOT NULL DEFAULT '0',
  `interviews_realworld` int(11) DEFAULT '0',
  `gathered_references` char(7) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `discharge_type` char(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `discharge_details` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `medications` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`userid`,`providerid`,`encounterid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `api_provider_encounter` WRITE;
/*!40000 ALTER TABLE `api_provider_encounter` DISABLE KEYS */;

INSERT INTO `api_provider_encounter` (`createby`, `updateby`, `deleteby`, `createdat`, `updatedat`, `deletedat`, `siteid`, `globalized`, `sortorder`, `userid`, `providerid`, `encounterid`, `encounterDate`, `departureDate`, `clientid`, `reason_entered`, `chronically_homeless`, `services_provided`, `interviews_practice`, `interviews_realworld`, `gathered_references`, `discharge_type`, `discharge_details`, `medications`)
VALUES
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,0,8,4,'2016-09-01','2016-09-28',6,'Loss of employment due to layoff',0,'job referrals to local temp agencies',0,0,'','Voluntary','Client was unhappy with the referrals provided, as he wished to pursue permanent employment instead of temporary positions.',''),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,0,20,2,'2016-05-01','2016-10-20',6,'Loss of employment due to layoff, which resulted in the loss of client\'s health insurance and the exacerbation of client\'s pre-existing MDD',0,'emergency housing, intake, evaluation, case management, employment referrals, mental health referrals, permanent housing referrals',0,0,'','Voluntary','Client obtained a full-time job as a forklift operator, with union benefits, which allowed to save enough money to rent a studio apartment in Benton Park West.',''),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,0,20,5,'2016-06-13','2016-10-20',6,'End of relationship led to the loss of client\'s ability to stay in his previous residence, and lack of financial means prevented client from renting his own apartment. ',0,'intake, evaluation, employment referrals',0,0,'','Attrition','Client missed two nights out of seven without explanation or notification; current status/location is unknown.',''),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,0,20,6,'2016-08-20','2016-08-29',6,'Loss of employment and lack of financial means prevented client from maintaing his previous residence.',0,'intake, evaluation, employment referrals',0,0,'','Voluntary','Client is leaving the shelter to move into his girlfriend\'s home.',''),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,0,20,7,'2015-07-05','2015-07-17',6,'End of client\'s marriage led to the loss of client\'s ability to stay in his previous residence and an inablity to access most of his current savings.',0,'intake, evaluation, housing referrals',0,0,'','Voluntary','Client has secured an apartment in his price range in Tower Grove East, and he moved in today.',''),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,0,20,8,'2012-03-14','2012-06-10',6,'Loss of employment led to a lack of financial means to afford his previous residence with his spouse.',0,'intake, evaluation, employment referrals, housing referrals.',0,0,'','Voluntary',' Client and his spouse have rented and affordable apartment in Vista Village.',''),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,0,20,10,'2008-09-10','2008-09-24',6,'Client reports that his previously diagnosed MDD has become severe, preventing him from working and causing him to lose his home.',0,'intake, evaluation, mental health referrals',0,0,'','Involuntary','Client was asked to leave the shelter after coming in while severely intoxicated and attempting to physically assault another residence. Client will not be allowed to return to the shelter for one calendar year after his discharge date (first date client can return is 4/27/02).',''),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,0,22,3,'2005-02-23','2005-05-23',6,'Loss of employment due to layoff, which resulted in the loss of client\'s health insurance and the exacerbation of client\'s pre-existing MDD',0,'intake, evaluation, weekly therapist appointments, monthly psychiatrist appointments, medication vouchers',0,0,'','Voluntary','Client obtained a full-time job as a forklift operator, with union benefits, including medical insurance which requires that client see an in-network provider.','Fluozetine 40mg 1qd, desvenlafaxine 100mg 1qd'),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,0,22,9,'2001-04-02','2001-04-29',6,'Client reports that his previously diagnosed MDD has become severe, preventing him from working and causing him to lose his home.',0,'intake, evaluation, weekly therapist appointments, monthly psychiatrist appointments, medication vouchers',0,0,'','Attrition','Client stopped attending his appointments. PPCS reports that client was involuntarily terminated from the shelter two days before his first missed appointment.',''),
	(NULL,NULL,NULL,NULL,NULL,NULL,60,0,9999,0,23,1,'2001-03-23','2001-04-27',6,'Loss of employment due to layoff',0,'resume preparation, practice interviews, basic computer skills training, job referrals to suitable positions',3,7,'','Voluntary','Client obtained a job as a full-time forklift operator','');

/*!40000 ALTER TABLE `api_provider_encounter` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table api_provider_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `api_provider_type`;

CREATE TABLE `api_provider_type` (
  `id` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `globalized` int(1) NOT NULL DEFAULT '0',
  `sortorder` int(11) NOT NULL DEFAULT '9999',
  `siteid` int(11) NOT NULL DEFAULT '60',
  `createby` int(11) DEFAULT NULL,
  `updateby` int(11) DEFAULT NULL,
  `deleteby` int(11) DEFAULT NULL,
  `createdat` datetime DEFAULT NULL,
  `updatedat` datetime DEFAULT NULL,
  `deletedat` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `api_provider_type` WRITE;
/*!40000 ALTER TABLE `api_provider_type` DISABLE KEYS */;

INSERT INTO `api_provider_type` (`id`, `type`, `globalized`, `sortorder`, `siteid`, `createby`, `updateby`, `deleteby`, `createdat`, `updatedat`, `deletedat`)
VALUES
	(1,'Re-Entry',0,9999,60,NULL,NULL,NULL,NULL,NULL,NULL),
	(2,'Youth Services',0,9999,60,NULL,NULL,NULL,NULL,NULL,NULL),
	(3,'Health Care',0,9999,60,NULL,NULL,NULL,NULL,NULL,NULL),
	(4,'Employment',0,9999,60,NULL,NULL,NULL,NULL,NULL,NULL),
	(5,'Financial Counseling',0,9999,60,NULL,NULL,NULL,NULL,NULL,NULL),
	(6,'Utility Assistance',0,9999,60,NULL,NULL,NULL,NULL,NULL,NULL),
	(7,'Housing',0,9999,60,NULL,NULL,NULL,NULL,NULL,NULL),
	(8,'Employment',0,9999,60,NULL,NULL,NULL,NULL,NULL,NULL),
	(9,'Youth Services',0,9999,60,NULL,NULL,NULL,NULL,NULL,NULL),
	(10,'Youth Services',0,9999,60,NULL,NULL,NULL,NULL,NULL,NULL),
	(11,'Youth Services',0,9999,60,NULL,NULL,NULL,NULL,NULL,NULL),
	(12,'Youth Services',0,9999,60,NULL,NULL,NULL,NULL,NULL,NULL),
	(13,'Youth Services',0,9999,60,NULL,NULL,NULL,NULL,NULL,NULL),
	(14,'Housing',0,9999,60,NULL,NULL,NULL,NULL,NULL,NULL),
	(15,'Legal Assistance',0,9999,60,NULL,NULL,NULL,NULL,NULL,NULL),
	(16,'Housing',0,9999,60,NULL,NULL,NULL,NULL,NULL,NULL),
	(17,'Nutrition',0,9999,60,NULL,NULL,NULL,NULL,NULL,NULL),
	(18,'Housing',0,9999,60,NULL,NULL,NULL,NULL,NULL,NULL),
	(19,'Disability Services',0,9999,60,NULL,NULL,NULL,NULL,NULL,NULL),
	(20,'Emergency Housing',0,9999,60,NULL,NULL,NULL,NULL,NULL,NULL),
	(21,'Employment',0,9999,60,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `api_provider_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `categoryType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlid` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `description` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `defaultpublic` int(1) DEFAULT '0',
  `defaultadmin` int(1) DEFAULT '0',
  `sortorder` int(11) NOT NULL DEFAULT '0',
  `siteid` int(11) DEFAULT '1',
  `globalized` int(1) DEFAULT '0',
  `createdAt` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `deletedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `name`, `categoryType`, `urlid`, `parentid`, `description`, `defaultpublic`, `defaultadmin`, `sortorder`, `siteid`, `globalized`, `createdAt`, `createdBy`, `updatedAt`, `updatedBy`, `deletedAt`, `deletedBy`)
VALUES
	(1,'Public Videos','video','public-videos',NULL,'Welcome to the videos',1,0,2,60,0,'2014-11-17 11:10:38',1,'2014-11-17 11:14:11',1,NULL,NULL),
	(2,'CFWheels','video','cfwheels',1,'CFWheels Training Videos',0,0,3,60,0,'2014-11-17 11:13:52',1,'2014-11-17 11:14:11',1,NULL,NULL);

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table clients_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `clients_categories`;

CREATE TABLE `clients_categories` (
  `categoryid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`categoryid`,`clientid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table emailoptouts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `emailoptouts`;

CREATE TABLE `emailoptouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table emails
# ------------------------------------------------------------

DROP TABLE IF EXISTS `emails`;

CREATE TABLE `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(1255) DEFAULT NULL,
  `lastname` varchar(1255) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table forms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `forms`;

CREATE TABLE `forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `siteid` int(11) DEFAULT NULL,
  `successcontent` text,
  `successembed` text,
  `failcontent` text,
  `failembed` text,
  `createdat` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updatedat` datetime DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedat` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `globalized` int(1) DEFAULT '0',
  `templated` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `forms` WRITE;
/*!40000 ALTER TABLE `forms` DISABLE KEYS */;

INSERT INTO `forms` (`id`, `name`, `siteid`, `successcontent`, `successembed`, `failcontent`, `failembed`, `createdat`, `createdby`, `updatedat`, `updatedby`, `deletedat`, `deletedby`, `globalized`, `templated`)
VALUES
	(1,'Contact',60,'Thanks for contacting us!','<!-- google success conversion js here -->','Whoopsies there was an issue!','<!-- google fail conversion js here -->','2014-11-17 15:55:18',1,'2014-11-17 15:55:18',1,NULL,NULL,0,0);

/*!40000 ALTER TABLE `forms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table forms_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `forms_users`;

CREATE TABLE `forms_users` (
  `formid` int(11) NOT NULL DEFAULT '1',
  `userid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'to',
  `createdat` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updatedat` datetime DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`formid`,`userid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `forms_users` WRITE;
/*!40000 ALTER TABLE `forms_users` DISABLE KEYS */;

INSERT INTO `forms_users` (`formid`, `userid`, `type`, `createdat`, `createdby`, `updatedat`, `updatedby`)
VALUES
	(1,1,'to','2014-11-17 15:55:18',1,'2014-11-17 15:55:18',1);

/*!40000 ALTER TABLE `forms_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table formsubmissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `formsubmissions`;

CREATE TABLE `formsubmissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formid` int(11) DEFAULT NULL,
  `submission` text,
  `followup` text,
  `referrer` text,
  `entryPage` text,
  `fromPage` text,
  `isSpam` varchar(3000) DEFAULT NULL,
  `optin` int(11) DEFAULT NULL,
  `mobile` varchar(3000) DEFAULT NULL,
  `siteid` int(11) DEFAULT '1',
  `ip` text,
  `useragent` text,
  `createdAt` datetime DEFAULT NULL,
  `createdBy` int(255) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `deletedBy` int(11) DEFAULT NULL,
  `globalized` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `formsubmissions` WRITE;
/*!40000 ALTER TABLE `formsubmissions` DISABLE KEYS */;

INSERT INTO `formsubmissions` (`id`, `formid`, `submission`, `followup`, `referrer`, `entryPage`, `fromPage`, `isSpam`, `optin`, `mobile`, `siteid`, `ip`, `useragent`, `createdAt`, `createdBy`, `updatedAt`, `updatedBy`, `deletedAt`, `deletedBy`, `globalized`)
VALUES
	(1,1,NULL,NULL,'','/','','false',NULL,'false',60,'12.232.137.226','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36','2014-12-10 14:21:49',1,'2014-12-10 14:21:49',1,NULL,NULL,0);

/*!40000 ALTER TABLE `formsubmissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `logs`;

CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `modelid` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `savetype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteid` int(11) DEFAULT NULL,
  `createdat` datetime DEFAULT NULL,
  `ip` varchar(800) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useragent` varchar(800) COLLATE utf8_unicode_ci DEFAULT NULL,
  `globalized` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;

INSERT INTO `logs` (`id`, `userid`, `modelid`, `savetype`, `model`, `controller`, `action`, `siteid`, `createdat`, `ip`, `useragent`, `globalized`)
VALUES
	(175,1,'61','Create','Site','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(176,1,'home_id','Create','Option','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(177,1,'seo_blog_description','Create','Option','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(178,1,'seo_blog_keywords','Create','Option','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(179,1,'seo_blog_title','Create','Option','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(180,1,'seo_description','Create','Option','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(181,1,'seo_homepage_description','Create','Option','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(182,1,'seo_homepage_keywords','Create','Option','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(183,1,'seo_homepage_title','Create','Option','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(184,1,'seo_keywords','Create','Option','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(185,1,'seo_subpage_title','Create','Option','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(186,1,'seo_title','Create','Option','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(187,1,'site_logo','Create','Option','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(188,1,'site_settings','Create','Option','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(189,1,'site_logo','Update','Option','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(190,1,'seo_blog_keywords','Update','Option','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(191,1,'seo_blog_title','Update','Option','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(192,1,'seo_homepage_keywords','Update','Option','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(193,1,'seo_title','Update','Option','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(194,1,'seo_blog_description','Update','Option','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(195,1,'seo_homepage_title','Update','Option','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(196,1,'seo_subpage_title','Update','Option','Sites','save',60,'2016-10-22 02:02:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(197,1,'2','Delete','Menu','Menus','delete',60,'2016-10-22 23:53:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(198,1,'1','Update','Menu','Menus','saveRearrange',60,'2016-10-22 23:53:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(199,1,'4','Update','Menu','Menus','saveRearrange',60,'2016-10-22 23:53:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(200,1,'3','Update','Menu','Menus','saveRearrange',60,'2016-10-22 23:53:26','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(201,1,'1','Delete','Menu','Menus','delete',60,'2016-10-22 23:53:28','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(202,1,'4','Update','Menu','Menus','saveRearrange',60,'2016-10-22 23:53:28','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(203,1,'3','Update','Menu','Menus','saveRearrange',60,'2016-10-22 23:53:28','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(204,1,'3','Delete','Menu','Menus','delete',60,'2016-10-22 23:53:31','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(205,1,'4','Update','Menu','Menus','saveRearrange',60,'2016-10-22 23:53:31','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(206,1,'5','Create','Menu','Menus','save',60,'2016-10-22 23:53:46','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(207,1,'4','Update','Menu','Menus','saveRearrange',60,'2016-10-22 23:53:47','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(208,1,'5','Update','Menu','Menus','saveRearrange',60,'2016-10-22 23:53:47','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(209,1,'60','Update','Site','Sites','save',60,'2016-10-23 01:07:42','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(210,1,'seo_homepage_description','Update','Option','Sites','save',60,'2016-10-23 01:07:42','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(211,1,'site_logo','Update','Option','Sites','save',60,'2016-10-23 01:07:42','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(212,1,'seo_blog_keywords','Update','Option','Sites','save',60,'2016-10-23 01:07:42','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(213,1,'seo_blog_title','Update','Option','Sites','save',60,'2016-10-23 01:07:42','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(214,1,'seo_homepage_keywords','Update','Option','Sites','save',60,'2016-10-23 01:07:42','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(215,1,'seo_title','Update','Option','Sites','save',60,'2016-10-23 01:07:42','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(216,1,'seo_blog_description','Update','Option','Sites','save',60,'2016-10-23 01:07:42','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(217,1,'seo_homepage_title','Update','Option','Sites','save',60,'2016-10-23 01:07:42','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(218,1,'seo_subpage_title','Update','Option','Sites','save',60,'2016-10-23 01:07:42','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(219,1,'4','Delete','Menu','Menus','delete',60,'2016-10-23 01:20:28','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(220,1,'5','Update','Menu','Menus','saveRearrange',60,'2016-10-23 01:20:28','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(221,1,'5','Update','Menu','Menus','save',60,'2016-10-23 01:24:08','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(222,1,'5','Update','Menu','Menus','saveRearrange',60,'2016-10-23 01:24:11','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(223,1,'5','Delete','Menu','Menus','delete',60,'2016-10-23 01:37:29','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(224,1,'2','Create','Usergroup','Usergroups','save',60,'2016-10-23 03:15:42','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(225,1,'1','Update','Usergroup','Usergroups','save',60,'2016-10-23 03:20:39','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(226,1,'1','Update','Usergroup','Usergroups','save',60,'2016-10-23 03:20:48','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(227,1,'2','Update','Usergroup','Usergroups','save',60,'2016-10-23 03:20:54','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(228,1,'3','Create','Usergroup','Usergroups','save',60,'2016-10-23 05:46:20','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0),
	(229,1,'4','Create','Usergroup','Usergroups','save',60,'2016-10-23 05:46:45','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36',0);

/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table majorcities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `majorcities`;

CREATE TABLE `majorcities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) DEFAULT NULL,
  `state_acronym` varchar(2) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `templateid` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `siteid` int(11) DEFAULT '1',
  `globalized` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `majorcities` WRITE;
/*!40000 ALTER TABLE `majorcities` DISABLE KEYS */;

INSERT INTO `majorcities` (`id`, `state`, `state_acronym`, `city`, `templateid`, `type`, `siteid`, `globalized`)
VALUES
	(9,'Alabama','AL','Huntsville',2,'city',1,0),
	(8,'Alabama','AL','Birmingham',1,'city',1,0),
	(10,'Alabama','AL','Mobile',3,'city',1,0),
	(11,'Alabama','AL','Montgomery',4,'city',1,0),
	(12,'Alaska','AK','Anchorage',5,'city',1,0),
	(13,'Arizona','AZ','Chandler',1,'city',1,0),
	(14,'Arizona','AZ','Gilbert',2,'city',1,0),
	(15,'Arizona','AZ','Glendale',3,'city',1,0),
	(16,'Arizona','AZ','Mesa',4,'city',1,0),
	(17,'Arizona','AZ','Peoria',5,'city',1,0),
	(18,'Arizona','AZ','Phoenix',1,'city',1,0),
	(19,'Arizona','AZ','Scottsdale',2,'city',1,0),
	(20,'Arizona','AZ','Surprise',3,'city',1,0),
	(21,'Arizona','AZ','Tempe',4,'city',1,0),
	(22,'Arizona','AZ','Tucson',5,'city',1,0),
	(23,'Arkansas','AR','Little Rock',1,'city',1,0),
	(24,'California','CA','Anaheim',2,'city',1,0),
	(25,'California','CA','Antioch',3,'city',1,0),
	(26,'California','CA','Bakersfield',4,'city',1,0),
	(27,'California','CA','Berkeley',5,'city',1,0),
	(28,'California','CA','Burbank',1,'city',1,0),
	(29,'California','CA','Carlsbad',2,'city',1,0),
	(30,'California','CA','Chula Vista',3,'city',1,0),
	(31,'California','CA','Concord',4,'city',1,0),
	(32,'California','CA','Corona',5,'city',1,0),
	(33,'California','CA','Costa Mesa',1,'city',1,0),
	(34,'California','CA','Daly City',2,'city',1,0),
	(35,'California','CA','Downey',3,'city',1,0),
	(36,'California','CA','El Cajon',4,'city',1,0),
	(37,'California','CA','El Monte',5,'city',1,0),
	(38,'California','CA','Elk Grove',1,'city',1,0),
	(39,'California','CA','Escondido',2,'city',1,0),
	(40,'California','CA','Fairfield',3,'city',1,0),
	(41,'California','CA','Fontana',4,'city',1,0),
	(42,'California','CA','Fremont',5,'city',1,0),
	(43,'California','CA','Fresno',1,'city',1,0),
	(44,'California','CA','Fullerton',2,'city',1,0),
	(45,'California','CA','Garden Grove',3,'city',1,0),
	(46,'California','CA','Glendale',4,'city',1,0),
	(47,'California','CA','Hayward',5,'city',1,0),
	(48,'California','CA','Huntington Beach',1,'city',1,0),
	(49,'California','CA','Inglewood',2,'city',1,0),
	(50,'California','CA','Irvine',3,'city',1,0),
	(51,'California','CA','Lancaster',4,'city',1,0),
	(52,'California','CA','Long Beach',5,'city',1,0),
	(53,'California','CA','Los Angeles',1,'city',1,0),
	(54,'California','CA','Modesto',2,'city',1,0),
	(55,'California','CA','Moreno Valley',3,'city',1,0),
	(56,'California','CA','Murrieta',4,'city',1,0),
	(57,'California','CA','Norwalk',5,'city',1,0),
	(58,'California','CA','Oakland',1,'city',1,0),
	(59,'California','CA','Oceanside',2,'city',1,0),
	(60,'California','CA','Ontario',3,'city',1,0),
	(61,'California','CA','Orange',4,'city',1,0),
	(62,'California','CA','Oxnard',5,'city',1,0),
	(63,'California','CA','Palmdale',1,'city',1,0),
	(64,'California','CA','Pasadena',2,'city',1,0),
	(65,'California','CA','Pomona',3,'city',1,0),
	(66,'California','CA','Rancho Cucamonga',4,'city',1,0),
	(67,'California','CA','Rialto',5,'city',1,0),
	(68,'California','CA','Richmond',1,'city',1,0),
	(69,'California','CA','Riverside',2,'city',1,0),
	(70,'California','CA','Roseville',3,'city',1,0),
	(71,'California','CA','Sacramento',4,'city',1,0),
	(72,'California','CA','Salinas',5,'city',1,0),
	(73,'California','CA','San Bernardino',1,'city',1,0),
	(74,'California','CA','San Buenaventura',2,'city',1,0),
	(75,'California','CA','San Diego',3,'city',1,0),
	(76,'California','CA','San Francisco',4,'city',1,0),
	(77,'California','CA','San Jose',5,'city',1,0),
	(78,'California','CA','Santa Ana',1,'city',1,0),
	(79,'California','CA','Santa Clara',2,'city',1,0),
	(80,'California','CA','Santa Clarita',3,'city',1,0),
	(81,'California','CA','Santa Maria',4,'city',1,0),
	(82,'California','CA','Santa Rosa',5,'city',1,0),
	(83,'California','CA','Simi Valley',1,'city',1,0),
	(84,'California','CA','Stockton',2,'city',1,0),
	(85,'California','CA','Sunnyvale',3,'city',1,0),
	(86,'California','CA','Temecula',4,'city',1,0),
	(87,'California','CA','Thousand Oaks',5,'city',1,0),
	(88,'California','CA','Torrance',1,'city',1,0),
	(89,'California','CA','Vallejo',2,'city',1,0),
	(90,'California','CA','Victorville',3,'city',1,0),
	(91,'California','CA','Visalia',4,'city',1,0),
	(92,'California','CA','West Covina',5,'city',1,0),
	(93,'Colorado','CO','Arvada',1,'city',1,0),
	(94,'Colorado','CO','Aurora',2,'city',1,0),
	(95,'Colorado','CO','Boulder',3,'city',1,0),
	(96,'Colorado','CO','Centennial',4,'city',1,0),
	(97,'Colorado','CO','Colorado Springs',5,'city',1,0),
	(98,'Colorado','CO','Denver',1,'city',1,0),
	(99,'Colorado','CO','Fort Collins',2,'city',1,0),
	(100,'Colorado','CO','Lakewood',3,'city',1,0),
	(101,'Colorado','CO','Pueblo',4,'city',1,0),
	(102,'Colorado','CO','Thornton',5,'city',1,0),
	(103,'Colorado','CO','Westminster',1,'city',1,0),
	(104,'Connecticut','CT','Bridgeport',2,'city',1,0),
	(105,'Connecticut','CT','Hartford',3,'city',1,0),
	(106,'Connecticut','CT','New Haven',4,'city',1,0),
	(107,'Connecticut','CT','Stamford',5,'city',1,0),
	(108,'Connecticut','CT','Waterbury',1,'city',1,0),
	(109,'District of Columbia','DC','Washington',2,'city',1,0),
	(110,'Florida','FL','Cape Coral',3,'city',1,0),
	(111,'Florida','FL','Clearwater',4,'city',1,0),
	(112,'Florida','FL','Coral Springs',5,'city',1,0),
	(113,'Florida','FL','Fort Lauderdale',1,'city',1,0),
	(114,'Florida','FL','Gainesville',2,'city',1,0),
	(115,'Florida','FL','Hialeah',3,'city',1,0),
	(116,'Florida','FL','Hollywood',4,'city',1,0),
	(117,'Florida','FL','Jacksonville',5,'city',1,0),
	(118,'Florida','FL','Miami',1,'city',1,0),
	(119,'Florida','FL','Miami Gardens',2,'city',1,0),
	(120,'Florida','FL','Miramar',3,'city',1,0),
	(121,'Florida','FL','Orlando',4,'city',1,0),
	(122,'Florida','FL','Palm Bay',5,'city',1,0),
	(123,'Florida','FL','Pembroke Pines',1,'city',1,0),
	(124,'Florida','FL','Pompano Beach',2,'city',1,0),
	(125,'Florida','FL','Port St Lucie',3,'city',1,0),
	(126,'Florida','FL','St Petersburg',4,'city',1,0),
	(127,'Florida','FL','Tallahassee',5,'city',1,0),
	(128,'Florida','FL','Tampa',1,'city',1,0),
	(129,'Florida','FL','West Palm Beach',2,'city',1,0),
	(130,'Georgia','GA','Athens',3,'city',1,0),
	(131,'Georgia','GA','Atlanta',4,'city',1,0),
	(132,'Georgia','GA','Augusta',5,'city',1,0),
	(133,'Georgia','GA','Columbus',1,'city',1,0),
	(134,'Georgia','GA','Savannah',2,'city',1,0),
	(135,'Hawaii','HI','Honolulu',3,'city',1,0),
	(136,'Idaho','ID','Boise',4,'city',1,0),
	(137,'Illinois','IL','Aurora',5,'city',1,0),
	(138,'Illinois','IL','Chicago',1,'city',1,0),
	(139,'Illinois','IL','Elgin',2,'city',1,0),
	(140,'Illinois','IL','Joliet',3,'city',1,0),
	(141,'Illinois','IL','Naperville',4,'city',1,0),
	(142,'Illinois','IL','Peoria',5,'city',1,0),
	(143,'Illinois','IL','Rockford',1,'city',1,0),
	(144,'Illinois','IL','Springfield',2,'city',1,0),
	(145,'Indiana','IN','Evansville',3,'city',1,0),
	(146,'Indiana','IN','Fort Wayne',4,'city',1,0),
	(147,'Indiana','IN','Indianapolis',5,'city',1,0),
	(148,'Indiana','IN','South Bend',1,'city',1,0),
	(149,'Iowa','IA','Cedar Rapids',2,'city',1,0),
	(150,'Iowa','IA','Davenport',3,'city',1,0),
	(151,'Iowa','IA','Des Moines',4,'city',1,0),
	(152,'Kansas','KS','Kansas City',5,'city',1,0),
	(153,'Kansas','KS','Olathe',1,'city',1,0),
	(154,'Kansas','KS','Overland Park',2,'city',1,0),
	(155,'Kansas','KS','Topeka',3,'city',1,0),
	(156,'Kansas','KS','Wichita',4,'city',1,0),
	(157,'Kentucky','KY','Lexington',5,'city',1,0),
	(158,'Kentucky','KY','Louisville',1,'city',1,0),
	(159,'Louisiana','LA','Baton Rouge',2,'city',1,0),
	(160,'Louisiana','LA','Lafayette',3,'city',1,0),
	(161,'Louisiana','LA','New Orleans',4,'city',1,0),
	(162,'Louisiana','LA','Shreveport',5,'city',1,0),
	(163,'Maryland','MD','Baltimore',1,'city',1,0),
	(164,'Massachusetts','MA','Boston',2,'city',1,0),
	(165,'Massachusetts','MA','Cambridge',3,'city',1,0),
	(166,'Massachusetts','MA','Lowell',4,'city',1,0),
	(167,'Massachusetts','MA','Springfield',5,'city',1,0),
	(168,'Massachusetts','MA','Worcester',1,'city',1,0),
	(169,'Michigan','MI','Ann Arbor',2,'city',1,0),
	(170,'Michigan','MI','Detroit',3,'city',1,0),
	(171,'Michigan','MI','Flint',4,'city',1,0),
	(172,'Michigan','MI','Grand Rapids',5,'city',1,0),
	(173,'Michigan','MI','Lansing',1,'city',1,0),
	(174,'Michigan','MI','Sterling Heights',2,'city',1,0),
	(175,'Michigan','MI','Warren',3,'city',1,0),
	(176,'Minnesota','MN','Minneapolis',4,'city',1,0),
	(177,'Minnesota','MN','Rochester',5,'city',1,0),
	(178,'Minnesota','MN','Saint Paul',1,'city',1,0),
	(179,'Mississippi','MS','Jackson',2,'city',1,0),
	(180,'Missouri','MO','Columbia',3,'city',1,0),
	(181,'Missouri','MO','Independence',4,'city',1,0),
	(182,'Missouri','MO','Kansas City',5,'city',1,0),
	(183,'Missouri','MO','Springfield',1,'city',1,0),
	(184,'Missouri','MO','St Louis',2,'city',1,0),
	(185,'Montana','MT','Billings',3,'city',1,0),
	(186,'Nebraska','NE','Lincoln',4,'city',1,0),
	(187,'Nebraska','NE','Omaha',5,'city',1,0),
	(188,'Nevada','NV','Henderson',1,'city',1,0),
	(189,'Nevada','NV','Las Vegas',2,'city',1,0),
	(190,'Nevada','NV','North Las Vegas',3,'city',1,0),
	(191,'Nevada','NV','Reno',4,'city',1,0),
	(192,'New Hampshire','NH','Manchester',5,'city',1,0),
	(193,'New Jersey','NJ','Elizabeth',1,'city',1,0),
	(194,'New Jersey','NJ','Jersey City',2,'city',1,0),
	(195,'New Jersey','NJ','Newark',3,'city',1,0),
	(196,'New Jersey','NJ','Paterson',4,'city',1,0),
	(197,'New Mexico','NM','Albuquerque',5,'city',1,0),
	(198,'New Mexico','NM','Las Cruces',1,'city',1,0),
	(199,'New York','NY','Buffalo',2,'city',1,0),
	(200,'New York','NY','Rochester',3,'city',1,0),
	(201,'New York','NY','Syracuse',4,'city',1,0),
	(202,'New York','NY','Yonkers',5,'city',1,0),
	(203,'North Carolina','NC','Cary',1,'city',1,0),
	(204,'North Carolina','NC','Charlotte',2,'city',1,0),
	(205,'North Carolina','NC','Durham',3,'city',1,0),
	(206,'North Carolina','NC','Fayetteville',4,'city',1,0),
	(207,'North Carolina','NC','Greensboro',5,'city',1,0),
	(208,'North Carolina','NC','High Point',1,'city',1,0),
	(209,'North Carolina','NC','Raleigh',2,'city',1,0),
	(210,'North Carolina','NC','Wilmington',3,'city',1,0),
	(211,'North Carolina','NC','Winston Salem',4,'city',1,0),
	(212,'North Dakota','ND','Fargo',5,'city',1,0),
	(213,'Ohio','OH','Akron',1,'city',1,0),
	(214,'Ohio','OH','Cincinnati',2,'city',1,0),
	(215,'Ohio','OH','Cleveland',3,'city',1,0),
	(216,'Ohio','OH','Columbus',4,'city',1,0),
	(217,'Ohio','OH','Dayton',5,'city',1,0),
	(218,'Ohio','OH','Toledo',1,'city',1,0),
	(219,'Oklahoma','OK','Broken Arrow',2,'city',1,0),
	(220,'Oklahoma','OK','Norman',3,'city',1,0),
	(221,'Oklahoma','OK','Oklahoma City',4,'city',1,0),
	(222,'Oklahoma','OK','Tulsa',5,'city',1,0),
	(223,'Oregon','OR','Eugene',1,'city',1,0),
	(224,'Oregon','OR','Gresham',2,'city',1,0),
	(225,'Oregon','OR','Portland',3,'city',1,0),
	(226,'Oregon','OR','Salem',4,'city',1,0),
	(227,'Pennsylvania','PA','Allentown',5,'city',1,0),
	(228,'Pennsylvania','PA','Erie',1,'city',1,0),
	(229,'Pennsylvania','PA','Philadelphia',2,'city',1,0),
	(230,'Pennsylvania','PA','Pittsburgh',3,'city',1,0),
	(231,'Rhode Island','RI','Providence',4,'city',1,0),
	(232,'South Carolina','SC','Charleston',5,'city',1,0),
	(233,'South Carolina','SC','Columbia',1,'city',1,0),
	(234,'South Carolina','SC','North Charleston',2,'city',1,0),
	(235,'South Dakota','SD','Sioux Falls',3,'city',1,0),
	(236,'Tennessee','TN','Chattanooga',4,'city',1,0),
	(237,'Tennessee','TN','Clarksville',5,'city',1,0),
	(238,'Tennessee','TN','Knoxville',1,'city',1,0),
	(239,'Tennessee','TN','Memphis',2,'city',1,0),
	(240,'Tennessee','TN','Murfreesboro',3,'city',1,0),
	(241,'Tennessee','TN','Nashville',4,'city',1,0),
	(242,'Texas','TX','Abilene',5,'city',1,0),
	(243,'Texas','TX','Amarillo',1,'city',1,0),
	(244,'Texas','TX','Arlington',2,'city',1,0),
	(245,'Texas','TX','Austin',3,'city',1,0),
	(246,'Texas','TX','Beaumont',4,'city',1,0),
	(247,'Texas','TX','Brownsville',5,'city',1,0),
	(248,'Texas','TX','Carrollton',1,'city',1,0),
	(249,'Texas','TX','Corpus Christi',2,'city',1,0),
	(250,'Texas','TX','Dallas',3,'city',1,0),
	(251,'Texas','TX','Denton',4,'city',1,0),
	(252,'Texas','TX','El Paso',5,'city',1,0),
	(253,'Texas','TX','Fort Worth',1,'city',1,0),
	(254,'Texas','TX','Frisco',2,'city',1,0),
	(255,'Texas','TX','Garland',3,'city',1,0),
	(256,'Texas','TX','Grand Prairie',4,'city',1,0),
	(257,'Texas','TX','Houston',5,'city',1,0),
	(258,'Texas','TX','Irving',1,'city',1,0),
	(259,'Texas','TX','Killeen',2,'city',1,0),
	(260,'Texas','TX','Laredo',3,'city',1,0),
	(261,'Texas','TX','Lubbock',4,'city',1,0),
	(262,'Texas','TX','McAllen',5,'city',1,0),
	(263,'Texas','TX','McKinney',1,'city',1,0),
	(264,'Texas','TX','Mesquite',2,'city',1,0),
	(265,'Texas','TX','Midland',3,'city',1,0),
	(266,'Texas','TX','Odessa',4,'city',1,0),
	(267,'Texas','TX','Pasadena',5,'city',1,0),
	(268,'Texas','TX','Plano',1,'city',1,0),
	(269,'Texas','TX','Richardson',2,'city',1,0),
	(270,'Texas','TX','Round Rock',3,'city',1,0),
	(271,'Texas','TX','San Antonio',4,'city',1,0),
	(272,'Texas','TX','Waco',5,'city',1,0),
	(273,'Texas','TX','Wichita Falls',1,'city',1,0),
	(274,'Utah','UT','Provo',2,'city',1,0),
	(275,'Utah','UT','Salt Lake City',3,'city',1,0),
	(276,'Utah','UT','West Jordan',4,'city',1,0),
	(277,'Utah','UT','West Valley City',5,'city',1,0),
	(278,'Virginia','VA','Alexandria',1,'city',1,0),
	(279,'Virginia','VA','Chesapeake',2,'city',1,0),
	(280,'Virginia','VA','Hampton',3,'city',1,0),
	(281,'Virginia','VA','Newport News',4,'city',1,0),
	(282,'Virginia','VA','Norfolk',5,'city',1,0),
	(283,'Virginia','VA','Richmond',1,'city',1,0),
	(284,'Virginia','VA','Virginia Beach',2,'city',1,0),
	(285,'Washington','WA','Bellevue',3,'city',1,0),
	(286,'Washington','WA','Everett',4,'city',1,0),
	(287,'Washington','WA','Kent',5,'city',1,0),
	(288,'Washington','WA','Seattle',1,'city',1,0),
	(289,'Washington','WA','Spokane',2,'city',1,0),
	(290,'Washington','WA','Tacoma',3,'city',1,0),
	(291,'Washington','WA','Vancouver',4,'city',1,0),
	(292,'Wisconsin','WI','Green Bay',5,'city',1,0),
	(293,'Wisconsin','WI','Kenosha',1,'city',1,0),
	(294,'Wisconsin','WI','Madison',2,'city',1,0),
	(295,'Wisconsin','WI','Milwaukee',3,'city',1,0),
	(296,'Arkansas','AR',NULL,1,'state',1,0),
	(297,'California','CA',NULL,2,'state',1,0),
	(298,'Colorado','CO',NULL,1,'state',1,0),
	(299,'Connecticut','CT',NULL,2,'state',1,0),
	(300,'District of Columbia','DC',NULL,2,'state',1,0),
	(301,'Florida','FL',NULL,3,'state',1,0),
	(302,'Georgia','GA',NULL,3,'state',1,0),
	(303,'Hawaii','HI',NULL,3,'state',1,0),
	(304,'Idaho','ID',NULL,4,'state',1,0),
	(305,'Illinois','IL',NULL,5,'state',1,0),
	(306,'Indiana','IN',NULL,3,'state',1,0),
	(307,'Iowa','IA',NULL,2,'state',1,0),
	(308,'Kansas','KS',NULL,5,'state',1,0),
	(309,'Kentucky','KY',NULL,5,'state',1,0),
	(310,'Louisiana','LA',NULL,2,'state',1,0),
	(311,'Maryland','MD',NULL,1,'state',1,0),
	(312,'Massachusetts','MA',NULL,2,'state',1,0),
	(313,'Michigan','MI',NULL,2,'state',1,0),
	(314,'Minnesota','MN',NULL,4,'state',1,0),
	(315,'Mississippi','MS',NULL,2,'state',1,0),
	(316,'Missouri','MO',NULL,3,'state',1,0),
	(317,'Montana','MT',NULL,3,'state',1,0),
	(318,'Nebraska','NE',NULL,4,'state',1,0),
	(319,'Nevada','NV',NULL,1,'state',1,0),
	(320,'New Hampshire','NH',NULL,5,'state',1,0),
	(321,'New Jersey','NJ',NULL,1,'state',1,0),
	(322,'New Mexico','NM',NULL,5,'state',1,0),
	(323,'New York','NY',NULL,2,'state',1,0),
	(324,'North Carolina','NC',NULL,1,'state',1,0),
	(325,'North Dakota','ND',NULL,5,'state',1,0),
	(326,'Ohio','OH',NULL,1,'state',1,0),
	(327,'Oklahoma','OK',NULL,2,'state',1,0),
	(328,'Oregon','OR',NULL,1,'state',1,0),
	(329,'Pennsylvania','PA',NULL,5,'state',1,0),
	(330,'Rhode Island','RI',NULL,4,'state',1,0),
	(331,'South Carolina','SC',NULL,5,'state',1,0),
	(332,'South Dakota','SD',NULL,3,'state',1,0),
	(333,'Tennessee','TN',NULL,4,'state',1,0),
	(334,'Texas','TX',NULL,5,'state',1,0),
	(335,'Utah','UT',NULL,2,'state',1,0),
	(336,'Virginia','VA',NULL,1,'state',1,0),
	(337,'Washington','WA',NULL,3,'state',1,0),
	(338,'Wisconsin','WI',NULL,5,'state',1,0);

/*!40000 ALTER TABLE `majorcities` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mediafiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mediafiles`;

CREATE TABLE `mediafiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mediafileType` varchar(255) DEFAULT NULL,
  `modelid` int(11) DEFAULT NULL,
  `fileid` varchar(500) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `type` enum('image','video') DEFAULT NULL,
  `settings` longtext,
  `sortorder` int(11) DEFAULT '9999',
  `siteid` int(11) DEFAULT NULL,
  `createdat` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updatedat` datetime DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedat` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `globalized` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mediafiles` WRITE;
/*!40000 ALTER TABLE `mediafiles` DISABLE KEYS */;

INSERT INTO `mediafiles` (`id`, `mediafileType`, `modelid`, `fileid`, `name`, `type`, `settings`, `sortorder`, `siteid`, `createdat`, `createdby`, `updatedat`, `updatedby`, `deletedat`, `deletedby`, `globalized`)
VALUES
	(1,'client',538291,'A14D9294-22FA-484E-92E79D7B558964EC',NULL,'image',NULL,9999,60,'2016-10-22 18:18:21',1,'2016-10-22 18:18:21',1,'2016-10-22 18:19:10',1,0);

/*!40000 ALTER TABLE `mediafiles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `itemType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentid` int(11) DEFAULT '0',
  `description` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  `siteid` int(11) DEFAULT '1',
  `createdAt` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `deletedBy` int(11) DEFAULT NULL,
  `globalized` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `name`, `itemType`, `itemId`, `customUrl`, `menuid`, `parentid`, `description`, `sortorder`, `siteid`, `createdAt`, `createdBy`, `updatedAt`, `updatedBy`, `deletedAt`, `deletedBy`, `globalized`)
VALUES
	(1,'Blog','custom',NULL,'/blog','Primary',0,NULL,2,60,'2014-11-17 11:07:03',1,'2016-10-22 23:53:27',1,'2016-10-22 23:53:29',1,0),
	(2,'Videos','custom',NULL,'/videos','Primary',0,NULL,2,60,'2014-11-17 11:09:59',1,'2014-11-17 15:59:34',1,'2016-10-22 23:53:27',1,0),
	(3,'Contact','custom',NULL,'/p/pforms/show/1','Primary',0,NULL,3,60,'2014-11-17 15:59:18',1,'2016-10-22 23:53:29',1,'2016-10-22 23:53:31',1,0),
	(4,'Login','custom',NULL,'/manager','Primary',0,NULL,2,60,'2014-11-17 16:00:41',1,'2016-10-22 23:53:29',1,'2016-10-23 01:20:28',1,0),
	(5,'Service Statistics','custom',NULL,'/manager/servicestats','Primary',0,NULL,2,60,'2016-10-22 23:53:46',1,'2016-10-23 01:24:08',1,'2016-10-23 01:37:30',1,0);

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table metadata
# ------------------------------------------------------------

DROP TABLE IF EXISTS `metadata`;

CREATE TABLE `metadata` (
  `foreignid` int(11) NOT NULL,
  `metafieldid` int(11) NOT NULL,
  `fielddata` text,
  `createdat` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updatedat` datetime DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedat` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`foreignid`,`metafieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `metadata` WRITE;
/*!40000 ALTER TABLE `metadata` DISABLE KEYS */;

INSERT INTO `metadata` (`foreignid`, `metafieldid`, `fielddata`, `createdat`, `createdby`, `updatedat`, `updatedby`, `deletedat`, `deletedby`)
VALUES
	(1,1,'test','2014-12-10 14:21:49',1,'2014-12-10 14:21:49',1,NULL,NULL),
	(1,2,'test','2014-12-10 14:21:49',1,'2014-12-10 14:21:49',1,NULL,NULL),
	(1,3,'test','2014-12-10 14:21:49',1,'2014-12-10 14:21:49',1,NULL,NULL);

/*!40000 ALTER TABLE `metadata` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table metafields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `metafields`;

CREATE TABLE `metafields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `metafieldType` varchar(255) DEFAULT NULL,
  `modelid` int(11) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `type` varchar(500) DEFAULT NULL,
  `contentblock` text,
  `codeblock` text,
  `wrapoptions` text,
  `wysiwyg` int(1) DEFAULT '0',
  `fieldvalues` text,
  `class` text,
  `checked` int(1) DEFAULT '0',
  `divwrap` int(1) DEFAULT NULL,
  `divclass` text,
  `labelplacement` varchar(255) DEFAULT 'before',
  `prepend` text,
  `append` text,
  `styleattribute` text,
  `identifier` varchar(500) DEFAULT NULL,
  `sortorder` int(11) DEFAULT '9999',
  `siteid` int(11) DEFAULT NULL,
  `createdat` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updatedat` datetime DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedat` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `globalized` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `metafields` WRITE;
/*!40000 ALTER TABLE `metafields` DISABLE KEYS */;

INSERT INTO `metafields` (`id`, `metafieldType`, `modelid`, `name`, `type`, `contentblock`, `codeblock`, `wrapoptions`, `wysiwyg`, `fieldvalues`, `class`, `checked`, `divwrap`, `divclass`, `labelplacement`, `prepend`, `append`, `styleattribute`, `identifier`, `sortorder`, `siteid`, `createdat`, `createdby`, `updatedat`, `updatedby`, `deletedat`, `deletedby`, `globalized`)
VALUES
	(1,'formfield',1,'Your Name','text',NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,'before',NULL,NULL,NULL,'name',1,60,'2014-11-17 15:55:44',1,'2014-11-17 15:58:08',1,NULL,NULL,0),
	(2,'formfield',1,'Your Email','text',NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,'before',NULL,NULL,NULL,'email',2,60,'2014-11-17 15:56:06',1,'2014-11-17 15:58:08',1,NULL,NULL,0),
	(3,'formfield',1,'Your Message','textarea',NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,'before',NULL,NULL,NULL,'message',3,60,'2014-11-17 15:56:25',1,'2014-11-17 15:58:08',1,NULL,NULL,0),
	(4,'formfield',1,'Send','submit',NULL,NULL,NULL,0,NULL,'btn btn-md btn-primary',0,0,NULL,'before',NULL,NULL,NULL,NULL,4,60,'2014-11-17 15:56:53',1,'2014-11-17 15:58:08',1,NULL,NULL,0),
	(5,'formfield',1,'Contact Us','headline',NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,'before',NULL,NULL,NULL,'Contact Us',0,60,'2014-11-17 15:57:40',1,'2014-11-17 15:58:08',1,NULL,NULL,0);

/*!40000 ALTER TABLE `metafields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table newsletter_sections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `newsletter_sections`;

CREATE TABLE `newsletter_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newsletterid` int(11) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `content` text,
  `status` varchar(255) DEFAULT 'draft',
  `siteid` int(11) DEFAULT '1',
  `createdby` int(11) DEFAULT NULL,
  `createdat` datetime DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedat` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `deletedat` datetime DEFAULT NULL,
  `globalized` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table newsletters
# ------------------------------------------------------------

DROP TABLE IF EXISTS `newsletters`;

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'draft',
  `siteid` int(11) DEFAULT '1',
  `createdby` int(11) DEFAULT NULL,
  `createdat` datetime DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedat` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `deletedat` datetime DEFAULT NULL,
  `globalized` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table notes_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notes_categories`;

CREATE TABLE `notes_categories` (
  `categoryid` int(11) NOT NULL,
  `noteid` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`categoryid`,`noteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table notfounds
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notfounds`;

CREATE TABLE `notfounds` (
  `urlPath` varchar(330) NOT NULL,
  `referrer` varchar(2255) DEFAULT NULL,
  `occurences` int(11) DEFAULT '0',
  `siteid` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `globalized` int(1) DEFAULT '0',
  PRIMARY KEY (`urlPath`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `options`;

CREATE TABLE `options` (
  `id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `siteid` int(11) NOT NULL,
  `label` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inputlabel` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inputtype` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `editContent` int(1) NOT NULL DEFAULT '0',
  `editLabel` int(1) NOT NULL DEFAULT '0',
  `editAttachment` int(1) NOT NULL DEFAULT '0',
  `createdat` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updatedat` datetime DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedat` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `globalized` int(1) DEFAULT '0',
  PRIMARY KEY (`id`,`siteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;

INSERT INTO `options` (`id`, `siteid`, `label`, `content`, `attachment`, `inputlabel`, `inputtype`, `editContent`, `editLabel`, `editAttachment`, `createdat`, `createdby`, `updatedat`, `updatedby`, `deletedat`, `deletedby`, `globalized`)
VALUES
	('home_id',0,NULL,NULL,NULL,'','',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),
	('home_id',60,NULL,'1',NULL,NULL,NULL,0,0,0,NULL,NULL,'2014-11-17 11:09:15',1,NULL,NULL,0),
	('home_id',61,NULL,NULL,NULL,NULL,NULL,0,0,0,'2016-10-22 02:02:30',1,'2016-10-22 02:02:30',1,NULL,NULL,0),
	('seo_blog_description',0,NULL,NULL,NULL,'','',0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0),
	('seo_blog_description',60,NULL,NULL,NULL,NULL,NULL,0,1,0,NULL,NULL,'2014-11-17 12:10:57',1,NULL,NULL,0),
	('seo_blog_description',61,NULL,NULL,NULL,NULL,NULL,0,1,0,'2016-10-22 02:02:31',1,'2016-10-22 02:02:31',1,NULL,NULL,0),
	('seo_blog_keywords',0,NULL,NULL,NULL,'','',0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0),
	('seo_blog_keywords',60,NULL,NULL,NULL,NULL,NULL,0,1,0,NULL,NULL,'2014-11-17 12:10:57',1,NULL,NULL,0),
	('seo_blog_keywords',61,NULL,NULL,NULL,NULL,NULL,0,1,0,'2016-10-22 02:02:31',1,'2016-10-22 02:02:31',1,NULL,NULL,0),
	('seo_blog_title',0,NULL,NULL,NULL,'','',0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0),
	('seo_blog_title',60,NULL,NULL,NULL,NULL,NULL,0,1,0,NULL,NULL,'2014-11-17 12:10:57',1,NULL,NULL,0),
	('seo_blog_title',61,NULL,NULL,NULL,NULL,NULL,0,1,0,'2016-10-22 02:02:32',1,'2016-10-22 02:02:32',1,NULL,NULL,0),
	('seo_description',0,NULL,NULL,NULL,'','',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),
	('seo_description',60,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),
	('seo_description',61,NULL,NULL,NULL,NULL,NULL,0,0,0,'2016-10-22 02:02:32',1,'2016-10-22 02:02:32',1,NULL,NULL,0),
	('seo_homepage_description',0,NULL,NULL,NULL,'','text',0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0),
	('seo_homepage_description',60,NULL,NULL,NULL,NULL,'text',0,1,0,NULL,NULL,'2014-11-17 12:10:57',1,NULL,NULL,0),
	('seo_homepage_description',61,NULL,NULL,NULL,NULL,'text',0,1,0,'2016-10-22 02:02:33',1,'2016-10-22 02:02:33',1,NULL,NULL,0),
	('seo_homepage_keywords',0,NULL,NULL,NULL,'','text',0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0),
	('seo_homepage_keywords',60,NULL,NULL,NULL,NULL,'text',0,1,0,NULL,NULL,'2014-11-17 12:10:57',1,NULL,NULL,0),
	('seo_homepage_keywords',61,NULL,NULL,NULL,NULL,'text',0,1,0,'2016-10-22 02:02:33',1,'2016-10-22 02:02:33',1,NULL,NULL,0),
	('seo_homepage_title',0,NULL,NULL,NULL,'','text',0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0),
	('seo_homepage_title',60,NULL,NULL,NULL,NULL,'text',0,1,0,NULL,NULL,'2014-11-17 12:10:57',1,NULL,NULL,0),
	('seo_homepage_title',61,NULL,NULL,NULL,NULL,'text',0,1,0,'2016-10-22 02:02:34',1,'2016-10-22 02:02:34',1,NULL,NULL,0),
	('seo_keywords',0,NULL,NULL,NULL,'','',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),
	('seo_keywords',60,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),
	('seo_keywords',61,NULL,NULL,NULL,NULL,NULL,0,0,0,'2016-10-22 02:02:34',1,'2016-10-22 02:02:34',1,NULL,NULL,0),
	('seo_subpage_title',0,NULL,NULL,NULL,'SEO Subpage Title','text',0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0),
	('seo_subpage_title',60,NULL,NULL,NULL,'SEO Subpage Title','text',0,1,0,NULL,NULL,'2014-11-17 12:10:57',1,NULL,NULL,0),
	('seo_subpage_title',61,NULL,NULL,NULL,'SEO Subpage Title','text',0,1,0,'2016-10-22 02:02:34',1,'2016-10-22 02:02:34',1,NULL,NULL,0),
	('seo_title',0,NULL,NULL,NULL,'','',0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0),
	('seo_title',60,NULL,NULL,NULL,NULL,NULL,0,1,0,NULL,NULL,'2014-11-17 12:10:57',1,NULL,NULL,0),
	('seo_title',61,NULL,NULL,NULL,NULL,NULL,0,1,0,'2016-10-22 02:02:35',1,'2016-10-22 02:02:35',1,NULL,NULL,0),
	('site_logo',0,NULL,NULL,NULL,'','',0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,0),
	('site_logo',60,NULL,NULL,NULL,NULL,NULL,0,1,1,NULL,NULL,'2014-11-17 12:10:57',1,NULL,NULL,0),
	('site_logo',61,NULL,NULL,NULL,NULL,NULL,0,1,1,'2016-10-22 02:02:35',1,'2016-10-22 02:02:35',1,NULL,NULL,0),
	('site_settings',0,NULL,'{\"firstTimeSetupInstall\":\"true\",\"stripeKey\":\"\",\"sendGridUsername\":\"\",\"sendGridPassword\":\"\",\"defaultEmail\":\"tim@dreamstonemedia.com\",\"fieldnames\":\"firstTimeSetupInstall,accessKeyId,awsSecretKey,defaultLocation,host,defaultBucket,stripeKey,sendGridUsername,sendGridPassword,defaultEmail\"}',NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),
	('site_settings',61,NULL,'{\"firstTimeSetupInstall\":\"true\",\"stripeKey\":\"\",\"sendGridUsername\":\"\",\"sendGridPassword\":\"\",\"defaultEmail\":\"tim@dreamstonemedia.com\",\"fieldnames\":\"firstTimeSetupInstall,accessKeyId,awsSecretKey,defaultLocation,host,defaultBucket,stripeKey,sendGridUsername,sendGridPassword,defaultEmail\"}',NULL,NULL,NULL,0,0,0,'2016-10-22 02:02:36',1,'2016-10-22 02:02:36',1,NULL,NULL,0);

/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` varchar(500) CHARACTER SET latin1 NOT NULL,
  `superuser` tinyint(1) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `provider_admin` tinyint(1) NOT NULL DEFAULT '0',
  `provider_staff` tinyint(1) NOT NULL DEFAULT '0',
  `one_call_staff` tinyint(1) NOT NULL DEFAULT '0',
  `provider_basic` tinyint(1) NOT NULL DEFAULT '1',
  `client` tinyint(1) NOT NULL DEFAULT '0',
  `guest` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` int(11) DEFAULT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `superuser`, `admin`, `provider_admin`, `provider_staff`, `one_call_staff`, `provider_basic`, `client`, `guest`, `createdBy`, `updatedBy`, `updatedAt`)
VALUES
	('admin_menu',1,1,0,1,0,0,0,0,NULL,NULL,NULL),
	('category_delete',1,1,0,1,0,0,1,0,NULL,NULL,NULL),
	('category_delete_others',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('category_read',1,1,0,1,0,0,1,1,NULL,NULL,NULL),
	('category_read_others',1,1,0,1,0,0,1,1,NULL,NULL,NULL),
	('category_save',1,1,0,1,0,0,1,0,NULL,NULL,NULL),
	('category_save_others',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('email_full_control',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('form_delete',1,1,0,1,0,0,0,0,NULL,NULL,NULL),
	('form_delete_others',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('form_read',1,1,0,1,0,0,0,0,NULL,NULL,NULL),
	('form_read_others',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('form_save',1,1,0,1,0,0,0,0,NULL,NULL,NULL),
	('form_save_others',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('itdevice_full_control',1,1,0,1,0,0,0,0,NULL,NULL,NULL),
	('jobapp',1,1,0,1,0,0,1,0,NULL,NULL,NULL),
	('log_read_others',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('menu_delete',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('menu_delete_others',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('menu_save',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('menu_save_others',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('newsletter_save',1,1,0,1,0,0,0,0,NULL,NULL,NULL),
	('option_delete',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('option_delete_others',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('option_read',1,1,0,1,0,0,1,1,NULL,NULL,NULL),
	('option_read_others',1,1,0,1,0,0,1,1,NULL,NULL,NULL),
	('option_save',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('option_save_others',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('page_delete',1,1,0,1,0,0,1,0,NULL,NULL,NULL),
	('page_delete_others',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('page_read',1,1,0,1,0,0,1,1,NULL,NULL,NULL),
	('page_read_others',1,1,0,1,0,0,1,1,NULL,NULL,NULL),
	('page_save',1,1,0,1,0,0,0,0,NULL,NULL,NULL),
	('page_save_others',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('permission_delete',1,0,0,0,0,0,0,0,NULL,NULL,NULL),
	('permission_delete_others',1,0,0,0,0,0,0,0,NULL,NULL,NULL),
	('permission_read',1,0,0,0,0,0,0,0,NULL,NULL,NULL),
	('permission_read_others',1,0,0,0,0,0,0,0,NULL,NULL,NULL),
	('permission_save',1,0,0,0,0,0,0,0,NULL,NULL,NULL),
	('permission_save_others',1,0,0,0,0,0,0,0,NULL,NULL,NULL),
	('post_delete',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('post_delete_others',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('post_read',1,1,0,1,0,0,1,1,NULL,NULL,NULL),
	('post_read_others',1,1,0,1,0,0,1,1,NULL,NULL,NULL),
	('post_save',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('post_save_others',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('service_statistics',1,1,1,0,0,0,0,0,NULL,NULL,NULL),
	('superadmin',1,0,0,0,0,0,0,0,NULL,NULL,NULL),
	('superuser_menu',1,0,0,0,0,0,0,0,NULL,NULL,NULL),
	('todo_delete',1,1,0,1,0,0,1,0,NULL,NULL,NULL),
	('todo_delete_others',0,0,0,0,0,0,0,0,NULL,NULL,NULL),
	('todo_read',1,1,0,1,0,0,1,0,NULL,NULL,NULL),
	('todo_read_others',0,0,0,0,0,0,0,0,NULL,NULL,NULL),
	('todo_save',1,1,0,1,0,0,1,0,NULL,NULL,NULL),
	('todo_save_others',0,0,0,0,0,0,0,0,NULL,NULL,NULL),
	('usertag_delete',1,1,0,1,0,0,1,0,NULL,NULL,NULL),
	('usertag_delete_others',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('usertag_read',1,1,0,1,0,0,1,1,NULL,NULL,NULL),
	('usertag_read_others',1,1,0,1,0,0,1,1,NULL,NULL,NULL),
	('usertag_save',1,1,0,1,0,0,1,0,NULL,NULL,NULL),
	('usertag_save_others',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('user_delete',1,1,0,1,0,0,1,0,NULL,NULL,NULL),
	('user_delete_others',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('user_noApprovalNeeded',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('user_read',1,1,0,1,0,0,1,1,NULL,NULL,NULL),
	('user_read_others',1,1,0,1,0,0,1,1,NULL,NULL,NULL),
	('user_save',1,1,0,1,0,0,1,1,NULL,NULL,NULL),
	('user_save_others',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('user_save_role',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('user_save_role_admin',1,0,0,0,0,0,0,0,NULL,NULL,NULL),
	('video_delete',1,1,0,1,0,0,1,0,NULL,NULL,NULL),
	('video_delete_others',1,1,0,0,0,0,0,0,NULL,NULL,NULL),
	('video_read',1,1,0,1,0,0,1,1,NULL,NULL,NULL),
	('video_read_others',1,1,0,1,0,0,1,1,NULL,NULL,NULL),
	('video_save',1,1,0,1,0,0,0,0,NULL,NULL,NULL),
	('video_save_others',1,1,0,0,0,0,0,0,NULL,NULL,NULL);

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlid` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysname` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET latin1,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'default',
  `metagenerated` int(1) DEFAULT '1',
  `metatitle` varchar(1200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metadescription` varchar(1200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metakeywords` varchar(1200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'draft',
  `quoteImg` varchar(455) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtubeId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sideContent` varchar(2055) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect` varchar(800) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteid` int(11) DEFAULT NULL,
  `createdat` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updatedat` datetime DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedat` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `oldUrl` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authorName` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `globalized` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `postType`, `urlid`, `sysname`, `name`, `content`, `template`, `metagenerated`, `metatitle`, `metadescription`, `metakeywords`, `status`, `quoteImg`, `youtubeId`, `sideContent`, `redirect`, `password`, `siteid`, `createdat`, `createdby`, `updatedat`, `updatedby`, `deletedat`, `deletedby`, `oldUrl`, `authorName`, `globalized`)
VALUES
	(1,'page','home',NULL,'Home','<h2>Welcome to bacon ipsum dolor amet shankle pork spare ribs kevin ground round prosciutto. Turkey hamburger kevin bresaola frankfurter leberkas biltong picanha, flank jowl tenderloin. Venison tongue ribeye jowl capicola short ribs. Frankfurter strip steak meatloaf sirloin, jowl shank alcatra fatback.</h2>\r\n<br />\r\nTail ham hock cow leberkas hamburger. Doner prosciutto porchetta, turducken biltong jowl tri-tip. Shankle corned beef frankfurter strip steak. Tenderloin sirloin landjaeger pork chop ham prosciutto. Chuck turkey ham hock drumstick, tail meatball sausage ball tip swine ground round boudin t-bone.<br />\r\n<br />\r\nLandjaeger swine ribeye, ball tip biltong cow shoulder leberkas pig flank pork loin frankfurter. T-bone chicken spare ribs tail. Brisket venison shank frankfurter jowl pig pork loin strip steak cow t-bone beef ribs flank ribeye. Pork leberkas picanha, cupim pig prosciutto ball tip. Frankfurter andouille pancetta tri-tip.','default',1,'Home','Welcome to bacon ipsum dolor amet shankle pork spare ribs kevin ground round prosciutto. Turkey hamburger kevin bresaola frankfurter leberkas biltong picanha, flank jowl tenderloin. Venison tongue rib','andouille,alcatra,capicola,Pork,bacon,tip,dolor,sausage,Chuck,loin,Turkey,tail,hamburger,Tenderloin,ipsum,Brisket,drumstick,hock,ground,t-bone,tenderloin,kevin,chicken,turducken,short,tri-tip,steak,ba','published',NULL,NULL,NULL,NULL,NULL,60,NULL,NULL,'2014-11-17 11:19:42',1,NULL,NULL,NULL,NULL,0),
	(2,'post','hello-world',NULL,'Hello world','<h2>Bacon ipsum dolor amet shankle pork spare ribs kevin ground round prosciutto. Turkey hamburger kevin bresaola frankfurter leberkas biltong picanha, flank jowl tenderloin. Venison tongue ribeye jowl capicola short ribs. Frankfurter strip steak meatloaf sirloin, jowl shank alcatra fatback.</h2>\r\n\r\n<p>Tail ham hock cow leberkas hamburger. Doner prosciutto porchetta, turducken biltong jowl tri-tip. Shankle corned beef frankfurter strip steak. Tenderloin sirloin landjaeger pork chop ham prosciutto. Chuck turkey ham hock drumstick, tail meatball sausage ball tip swine ground round boudin t-bone.</p>\r\n\r\n<p>Landjaeger swine ribeye, ball tip biltong cow shoulder leberkas pig flank pork loin frankfurter. T-bone chicken spare ribs tail. Brisket venison shank frankfurter jowl pig pork loin strip steak cow t-bone beef ribs flank ribeye. Pork leberkas picanha, cupim pig prosciutto ball tip. Frankfurter andouille pancetta tri-tip.</p>','default',1,'Hello world','Bacon ipsum dolor amet shankle pork spare ribs kevin ground round prosciutto. Turkey hamburger kevin bresaola frankfurter leberkas biltong picanha, flank jowl tenderloin. Venison tongue ribeye jowl ca','andouille,alcatra,capicola,Pork,tip,dolor,sausage,Chuck,loin,Turkey,tail,hamburger,Tenderloin,ipsum,Brisket,drumstick,hock,ground,t-bone,tenderloin,kevin,chicken,turducken,short,tri-tip,steak,ball,Sha','published',NULL,NULL,NULL,NULL,NULL,60,'2014-11-17 11:08:36',1,'2014-11-17 11:08:36',1,NULL,NULL,NULL,NULL,0);

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table properties
# ------------------------------------------------------------

DROP TABLE IF EXISTS `properties`;

CREATE TABLE `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ownerid` int(11) DEFAULT NULL,
  `urlid` varchar(900) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteid` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `address` varchar(130) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(130) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(130) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zip` int(11) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `phone_number` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_status` enum('For Sale','Pending','Sold') COLLATE utf8_unicode_ci DEFAULT 'For Sale',
  `home_type` enum('Single family','Condo','Townhouse','Multi family','Apartment','Mobile / Manufactured','Coop Unit','Vacant land','Other') COLLATE utf8_unicode_ci DEFAULT 'Single family',
  `video_walkthrough_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `virtual_tour_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hoa_dues` decimal(10,2) DEFAULT NULL,
  `beds` int(11) DEFAULT NULL,
  `three_quarter_baths` int(11) DEFAULT NULL,
  `half_baths` int(11) DEFAULT NULL,
  `full_baths` int(11) DEFAULT NULL,
  `quarter_baths` int(11) DEFAULT NULL,
  `garage_square_feet` int(11) DEFAULT NULL,
  `finished_square_feet` int(11) DEFAULT NULL,
  `lot_size` int(11) DEFAULT NULL,
  `lot_size_type` enum('Sq ft','Acres') COLLATE utf8_unicode_ci DEFAULT 'Sq ft',
  `year_built` int(11) DEFAULT NULL,
  `structural_remodel_year` int(11) DEFAULT NULL,
  `related_website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `love_description` text COLLATE utf8_unicode_ci,
  `total_rooms` int(11) DEFAULT NULL,
  `number_of_stories` int(11) DEFAULT NULL,
  `covered_parking` int(11) DEFAULT NULL,
  `additional_features` text COLLATE utf8_unicode_ci,
  `published` int(1) DEFAULT '0',
  `isfeatured` int(11) DEFAULT '0',
  `sortorder` int(11) DEFAULT '9999',
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'draft',
  `createdat` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updatedat` datetime DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `todelete` int(11) DEFAULT '0',
  `deletedat` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `globalized` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table properties_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `properties_categories`;

CREATE TABLE `properties_categories` (
  `categoryid` int(11) NOT NULL,
  `propertyid` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`categoryid`,`propertyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table providers_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `providers_categories`;

CREATE TABLE `providers_categories` (
  `categoryid` int(11) NOT NULL,
  `providerid` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`categoryid`,`providerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table redirects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `redirects`;

CREATE TABLE `redirects` (
  `if_matches_this` varchar(250) NOT NULL,
  `then_redirect_to` varchar(250) NOT NULL,
  `siteid` int(11) DEFAULT '1',
  `globalized` int(1) DEFAULT '0',
  PRIMARY KEY (`if_matches_this`,`then_redirect_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table schema_version
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_version`;

CREATE TABLE `schema_version` (
  `version_rank` int(11) NOT NULL,
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int(11) DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`version`),
  KEY `schema_version_vr_idx` (`version_rank`),
  KEY `schema_version_ir_idx` (`installed_rank`),
  KEY `schema_version_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `schema_version` WRITE;
/*!40000 ALTER TABLE `schema_version` DISABLE KEYS */;

INSERT INTO `schema_version` (`version_rank`, `installed_rank`, `version`, `description`, `type`, `script`, `checksum`, `installed_by`, `installed_on`, `execution_time`, `success`)
VALUES
	(1,1,'001','CREATE PATH CLIENT','SQL','V001__CREATE_PATH_CLIENT.sql',-167690131,'openhmis_user','2016-10-21 23:28:35',21,1),
	(2,2,'002','CREATE PATH CLIENT RACE','SQL','V002__CREATE_PATH_CLIENT_RACE.sql',-173481391,'openhmis_user','2016-10-21 23:28:35',9,1),
	(3,3,'003','CREATE PATH CLIENT VETERAN INFO','SQL','V003__CREATE_PATH_CLIENT_VETERAN_INFO.sql',1463722448,'openhmis_user','2016-10-21 23:28:35',12,1),
	(4,4,'004','CREATE PATH CLIENT PROGRAM','SQL','V004__CREATE_PATH_CLIENT_PROGRAM.sql',-1004076131,'openhmis_user','2016-10-21 23:28:35',38,1),
	(5,5,'005','CREATE TMP PROJECT','SQL','V005__CREATE_TMP_PROJECT.sql',1866875239,'openhmis_user','2016-10-21 23:28:35',10,1),
	(6,6,'006','CREATE TMP PROJECT COC','SQL','V006__CREATE_TMP_PROJECT_COC.sql',-712886397,'openhmis_user','2016-10-21 23:28:35',8,1),
	(7,7,'007','CREATE TMP PROJECT SITE','SQL','V007__CREATE_TMP_PROJECT_SITE.sql',-957974138,'openhmis_user','2016-10-21 23:28:35',9,1),
	(8,8,'008','CREATE TMP PROJECT FUNDER','SQL','V008__CREATE_TMP_PROJECT_FUNDER.sql',411195620,'openhmis_user','2016-10-21 23:28:35',9,1),
	(9,9,'009','CREATE TMP PROJECT INVENTORY','SQL','V009__CREATE_TMP_PROJECT_INVENTORY.sql',240597560,'openhmis_user','2016-10-21 23:28:35',11,1),
	(10,10,'010','CREATE TMP ORGANIZATION','SQL','V010__CREATE_TMP_ORGANIZATION.sql',-376764584,'openhmis_user','2016-10-21 23:28:35',9,1),
	(11,11,'011','CREATE ChronicHealthCondition','SQL','V011__CREATE_ChronicHealthCondition.sql',-634998008,'openhmis_user','2016-10-21 23:28:35',10,1),
	(12,12,'012','CREATE Contact','SQL','V012__CREATE_Contact.sql',-228795190,'openhmis_user','2016-10-21 23:28:35',8,1),
	(13,13,'013','CREATE DevelopmentalDisability','SQL','V013__CREATE_DevelopmentalDisability.sql',192205300,'openhmis_user','2016-10-21 23:28:35',9,1),
	(14,14,'014','CREATE DomesticAbuse','SQL','V014__CREATE_DomesticAbuse.sql',1145387430,'openhmis_user','2016-10-21 23:28:35',9,1),
	(15,15,'015','CREATE Exit','SQL','V015__CREATE_Exit.sql',548109472,'openhmis_user','2016-10-21 23:28:35',12,1),
	(16,16,'016','CREATE FinancialAssistance','SQL','V016__CREATE_FinancialAssistance.sql',291816463,'openhmis_user','2016-10-21 23:28:35',9,1),
	(17,17,'017','CREATE HealthInsurance','SQL','V017__CREATE_HealthInsurance.sql',-1974007607,'openhmis_user','2016-10-21 23:28:35',10,1),
	(18,18,'018','CREATE HivAidsStatus','SQL','V018__CREATE_HivAidsStatus.sql',2105490601,'openhmis_user','2016-10-21 23:28:35',9,1),
	(19,19,'019','CREATE IncomeSource','SQL','V019__CREATE_IncomeSource.sql',-60963934,'openhmis_user','2016-10-21 23:28:35',10,1),
	(20,20,'020','CREATE MedicalAssistance','SQL','V020__CREATE_MedicalAssistance.sql',909535466,'openhmis_user','2016-10-21 23:28:35',9,1),
	(21,21,'021','CREATE MentalHealthProblem','SQL','V021__CREATE_MentalHealthProblem.sql',1693329834,'openhmis_user','2016-10-21 23:28:35',10,1),
	(22,22,'022','CREATE NonCashBenefit','SQL','V022__CREATE_NonCashBenefit.sql',678469383,'openhmis_user','2016-10-21 23:28:35',10,1),
	(23,23,'023','CREATE PhysicalDisability','SQL','V023__CREATE_PhysicalDisability.sql',1093538894,'openhmis_user','2016-10-21 23:28:35',10,1),
	(24,24,'024','CREATE Referral','SQL','V024__CREATE_Referral.sql',1765616982,'openhmis_user','2016-10-21 23:28:35',9,1),
	(25,25,'025','CREATE Service','SQL','V025__CREATE_Service.sql',1018981584,'openhmis_user','2016-10-21 23:28:35',9,1),
	(26,26,'026','CREATE SubstanceAbuse','SQL','V026__CREATE_SubstanceAbuse.sql',1389525459,'openhmis_user','2016-10-21 23:28:35',10,1),
	(27,27,'027','CREATE Enrollment','SQL','V027__CREATE_Enrollment.sql',1748487267,'openhmis_user','2016-10-21 23:28:36',13,1),
	(28,28,'028','CREATE TMP USER','SQL','V028__CREATE_TMP_USER.sql',-480834391,'openhmis_user','2016-10-21 23:28:36',10,1),
	(29,29,'029','ALTER TMP USER','SQL','V029__ALTER_TMP_USER.sql',955216525,'openhmis_user','2016-10-21 23:28:36',32,1),
	(30,30,'030','CREATE TMP TOKEN CACHE','SQL','V030__CREATE_TMP_TOKEN_CACHE.sql',-2051063706,'openhmis_user','2016-10-21 23:28:36',11,1);

/*!40000 ALTER TABLE `schema_version` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sites`;

CREATE TABLE `sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subdomain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableAdminTheme` int(1) DEFAULT '1',
  `registrationDisabled` int(1) DEFAULT '0',
  `emailMatchDomainRequired` int(1) DEFAULT '0',
  `emailMatchOtherDomains` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sslenabled` int(11) DEFAULT '0',
  `theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlExtension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteid` int(11) DEFAULT NULL,
  `createdat` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updatedat` datetime DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedat` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `globalized` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;

INSERT INTO `sites` (`id`, `name`, `subdomain`, `urlid`, `enableAdminTheme`, `registrationDisabled`, `emailMatchDomainRequired`, `emailMatchOtherDomains`, `sslenabled`, `theme`, `urlExtension`, `siteid`, `createdat`, `createdby`, `updatedat`, `updatedby`, `deletedat`, `deletedby`, `globalized`)
VALUES
	(60,'Continua','localhost','localhost',0,0,0,NULL,0,'light-theme',NULL,60,'2014-10-05 19:10:06',1,'2016-10-23 01:07:42',1,NULL,NULL,1);

/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table todos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `todos`;

CREATE TABLE `todos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `isdone` date DEFAULT NULL,
  `isdone_old` int(11) DEFAULT NULL,
  `duedate` datetime DEFAULT NULL,
  `priority` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'medium',
  `todogroupid` int(11) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  `siteid` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `deletedBy` int(11) DEFAULT NULL,
  `globalized` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `todos` WRITE;
/*!40000 ALTER TABLE `todos` DISABLE KEYS */;

INSERT INTO `todos` (`id`, `name`, `isdone`, `isdone_old`, `duedate`, `priority`, `todogroupid`, `parentid`, `description`, `sortorder`, `siteid`, `createdAt`, `createdBy`, `updatedAt`, `updatedBy`, `deletedAt`, `deletedBy`, `globalized`)
VALUES
	(1,'Add a video','2014-11-17',NULL,'2014-11-17 00:00:00','low',NULL,3,NULL,4,60,'2014-11-17 15:53:41',1,'2014-11-17 15:54:09',1,NULL,NULL,0),
	(2,'Add a page',NULL,NULL,'2014-11-17 00:00:00','low',NULL,3,NULL,3,60,'2014-11-17 15:53:50',1,'2014-11-17 15:54:08',1,NULL,NULL,0),
	(3,'Add site content',NULL,NULL,'2014-11-17 00:00:00','low',NULL,NULL,NULL,2,60,'2014-11-17 15:54:06',1,'2014-11-17 15:54:07',1,NULL,NULL,0);

/*!40000 ALTER TABLE `todos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table usergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usergroups`;

CREATE TABLE `usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(1000) DEFAULT NULL,
  `siteid` int(11) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `globalized` int(1) DEFAULT '0',
  `defaultgroup` int(11) DEFAULT '0',
  `createdat` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updatedat` datetime DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedat` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `usergroups` WRITE;
/*!40000 ALTER TABLE `usergroups` DISABLE KEYS */;

INSERT INTO `usergroups` (`id`, `groupname`, `siteid`, `role`, `globalized`, `defaultgroup`, `createdat`, `createdby`, `updatedat`, `updatedby`, `deletedat`, `deletedby`)
VALUES
	(1,'Direct Providers',60,'provider_admin',0,0,NULL,NULL,'2016-10-23 03:20:49',1,NULL,NULL),
	(2,'Clients',60,'client',0,1,'2016-10-23 03:15:43',1,'2016-10-23 03:20:55',1,NULL,NULL),
	(3,'One Call Staff',60,'one_call_staff',0,0,'2016-10-23 05:46:21',1,'2016-10-23 05:46:21',1,NULL,NULL),
	(4,'Provider Staff',60,NULL,0,0,'2016-10-23 05:46:46',1,'2016-10-23 05:46:46',1,NULL,NULL);

/*!40000 ALTER TABLE `usergroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sortorder` int(11) NOT NULL DEFAULT '9999',
  `approval_flag` int(11) DEFAULT NULL,
  `securityApproval` int(11) DEFAULT '0',
  `zx_firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zx_lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zx_jobtitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zx_designatory_letters` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zx_about` text COLLATE utf8_unicode_ci,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middleName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `driversLicense` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jobtitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aliasName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designatory_letters` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8_unicode_ci,
  `ssn` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(65) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` int(5) DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` int(1) DEFAULT '0',
  `fullLastname` int(1) DEFAULT '0',
  `birthday` datetime DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `showOnSite` int(1) DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'draft',
  `siteid` int(11) DEFAULT NULL,
  `createdat` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updatedat` datetime DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedat` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `globalized` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `sortorder`, `approval_flag`, `securityApproval`, `zx_firstname`, `zx_lastname`, `zx_jobtitle`, `zx_designatory_letters`, `zx_about`, `firstname`, `middleName`, `lastname`, `driversLicense`, `jobtitle`, `aliasName`, `designatory_letters`, `about`, `ssn`, `title`, `email`, `username`, `phone`, `password`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `gender`, `fullLastname`, `birthday`, `age`, `showOnSite`, `start_date`, `role`, `status`, `siteid`, `createdat`, `createdby`, `updatedat`, `updatedby`, `deletedat`, `deletedby`, `globalized`)
VALUES
	(1,9999,0,1,'Get','Wheelie','Wheelie',NULL,NULL,'Get',NULL,'Wheelie',NULL,'Wheelie',NULL,NULL,NULL,NULL,NULL,'admin@getwheelie.com',NULL,NULL,'F58319B6389F308D77D8D07DEBA42398',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'superuser','draft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
	(2,9999,NULL,0,'Jon','Smythe',NULL,NULL,NULL,'Jon','Henrik','Smythe','490PPC490',NULL,'Jonny',NULL,NULL,111110101,NULL,NULL,NULL,'3141123344',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,27,0,NULL,'','draft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),
	(3,9999,NULL,0,'James','Smithymann',NULL,NULL,NULL,'James','Herschel','Smithymann','904PPE904',NULL,'Jamie',NULL,NULL,222221212,NULL,NULL,NULL,'3142234455',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,56,0,NULL,'','draft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),
	(4,9999,NULL,0,'Johnathan','Smauronn',NULL,NULL,NULL,'Johnathan','Harold','Smauronn','346UPT361',NULL,'Johnny',NULL,NULL,333332323,NULL,NULL,NULL,'3143345566',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,44,0,NULL,'','draft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),
	(5,9999,NULL,0,'Joshua','Saunders',NULL,NULL,NULL,'Joshua','Hiram','Saunders','145VVK235',NULL,'Josh',NULL,NULL,444445656,NULL,NULL,NULL,'3144456677',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,26,0,NULL,'','draft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),
	(6,9999,NULL,0,'Jacob','Sonderson',NULL,NULL,NULL,'Jacob','Henrie','Sonderson','798NPB231',NULL,'Jake',NULL,NULL,555556767,NULL,NULL,NULL,'3145567788',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,65,0,NULL,'','draft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users_categories`;

CREATE TABLE `users_categories` (
  `categoryid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`categoryid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table users_usergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users_usergroups`;

CREATE TABLE `users_usergroups` (
  `usergroupid` int(11) NOT NULL DEFAULT '1',
  `userid` int(11) NOT NULL,
  `createdat` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updatedat` datetime DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`usergroupid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users_usergroups` WRITE;
/*!40000 ALTER TABLE `users_usergroups` DISABLE KEYS */;

INSERT INTO `users_usergroups` (`usergroupid`, `userid`, `createdat`, `createdby`, `updatedat`, `updatedby`)
VALUES
	(1,1,'2014-08-18 14:01:09',1,'2014-08-18 14:01:09',1),
	(1,2,'2014-12-09 15:50:23',NULL,'2014-12-09 15:50:23',NULL),
	(1,4,'2014-12-09 15:54:10',NULL,'2014-12-09 15:54:10',NULL),
	(1,5,'2014-12-09 15:57:09',NULL,'2014-12-09 15:57:09',NULL),
	(2,6,'2014-08-18 14:01:09',1,'2014-08-18 14:01:09',1),
	(2,7,'2014-12-09 15:50:23',1,'2014-12-09 15:50:23',1);

/*!40000 ALTER TABLE `users_usergroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table videos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `videos`;

CREATE TABLE `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urlid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `teaser` longtext CHARACTER SET latin1 NOT NULL,
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `videoSubHeader` longtext CHARACTER SET latin1,
  `videoLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isFeatured` int(11) DEFAULT NULL,
  `youtubeid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vimeoid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `typeId` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filestatus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'draft',
  `isPlaylist` int(11) DEFAULT '0',
  `videofileid` int(11) DEFAULT NULL,
  `siteid` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `onSite` int(11) DEFAULT '0',
  `customThumb` int(1) DEFAULT '0',
  `createdat` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updatedat` datetime DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedat` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `globalized` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;

INSERT INTO `videos` (`id`, `urlid`, `name`, `teaser`, `description`, `videoSubHeader`, `videoLink`, `isFeatured`, `youtubeid`, `vimeoid`, `sortorder`, `typeId`, `filestatus`, `status`, `isPlaylist`, `videofileid`, `siteid`, `password`, `onSite`, `customThumb`, `createdat`, `createdby`, `updatedat`, `updatedby`, `deletedat`, `deletedby`, `globalized`)
VALUES
	(1,'setting-up-coldfusion-on-wheels','Setting up ColdFusion on Wheels','Chris Peters starts the webcast series by demonstrating how to set up ColdFusion on Wheels.','<span style=\"font-family: arial, sans-serif; font-size: 12.7272720336914px; line-height: 17px;\">Chris Peters starts the webcast series by demonstrating how to set up ColdFusion on Wheels. He shows how to configure a data source and test that it\'s working. This is part of a screencast series on building a social networking site using the ColdFusion on Wheels framework.</span>',NULL,NULL,0,'J3xdxp29ig4',NULL,NULL,NULL,NULL,'published',0,NULL,60,NULL,1,0,'2014-11-17 11:12:18',1,'2014-12-10 12:07:27',1,NULL,NULL,0);

/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table videos_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `videos_categories`;

CREATE TABLE `videos_categories` (
  `videocategoryid` int(11) NOT NULL,
  `videoid` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`videocategoryid`,`videoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `videos_categories` WRITE;
/*!40000 ALTER TABLE `videos_categories` DISABLE KEYS */;

INSERT INTO `videos_categories` (`videocategoryid`, `videoid`, `createdAt`, `createdBy`, `updatedAt`, `updatedBy`)
VALUES
	(1,1,'2014-12-10 12:07:27',1,'2014-12-10 12:07:27',1),
	(2,1,'2014-12-10 12:07:27',1,'2014-12-10 12:07:27',1);

/*!40000 ALTER TABLE `videos_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zipcodes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zipcodes`;

CREATE TABLE `zipcodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zip` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `primary_city` varchar(255) DEFAULT NULL,
  `acceptable_cities` varchar(255) DEFAULT NULL,
  `unacceptable_cities` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `area_codes` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `world_region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `decommissioned` varchar(255) DEFAULT NULL,
  `estimated_population` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
