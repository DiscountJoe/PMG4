#
# DUMP FILE
#
# Database is ported from MS Access
#------------------------------------------------------------------
# Created using "MS Access to MySQL" form http://www.bullzip.com
# Program Version 5.5.282
#
# OPTIONS:
#   sourcefilename=C:/wamp64/www/PMG4/advising.accdb
#   sourceusername=
#   sourcepassword=
#   sourcesystemdatabase=
#   destinationdatabase=trueAdvising
#   storageengine=MyISAM
#   dropdatabase=0
#   createtables=1
#   unicode=1
#   autocommit=1
#   transferdefaultvalues=0
#   transferindexes=1
#   transferautonumbers=0
#   transferrecords=1
#   columnlist=1
#   tableprefix=
#   negativeboolean=0
#   ignorelargeblobs=0
#   memotype=LONGTEXT
#   datetimetype=DATETIME
#

CREATE DATABASE IF NOT EXISTS `trueAdvising`;
USE `trueAdvising`;

#
# Table structure for table 'classes'
#

DROP TABLE IF EXISTS `classes`;

CREATE TABLE `classes` (
  `CRN` VARCHAR(255) NOT NULL,
  `class_Number` VARCHAR(255),
  `name` VARCHAR(255),
  `professor` VARCHAR(255),
  `time_start` DATETIME,
  `time_End` DATETIME,
  `days` VARCHAR(255),
  `major_ID` INTEGER,
  PRIMARY KEY (`CRN`),
  INDEX (`major_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'classes'
#

INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('80094', '1524', 'Business Calc', 'England', '1899-12-30 05:30:00', '1899-12-30 05:45:00', 'MWF', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('80095', '1524', 'Business Calc', 'England', '1899-12-30 06:30:00', '1899-12-30 06:45:00', 'MWF', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('80098', '2005', 'Principles of Econ', 'Trost', '1899-12-30 10:10:00', '1899-12-30 11:00:00', 'MWF', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('80099', '2005', 'Principles of Econ', 'Trost', '1899-12-30 11:15:00', '1899-12-30 12:05:00', 'MWF', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('80120', '2006', 'Principles of Econ', 'Asadi', '1899-12-30 12:20:00', '1899-12-30 01:10:00', 'MWF', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('80121', '2006', 'Principles of Econ', 'Asadi', '1899-12-30 01:25:00', '1899-12-30 02:15:00', 'MWF', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('80122', '2116', 'Principles of Accounting', 'Sharp', '1899-12-30 11:15:00', '1899-12-30 12:05:00', 'MWF', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81412', '1004', 'Intro to Soc', 'Williams', '1899-12-30 02:30:00', '1899-12-30 03:45:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81413', '1004', 'Intro to Soc', 'Simmons', '1899-12-30 04:00:00', '1899-12-30 05:15:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81418', '1054', 'Intro to Java', 'Lewis', '1899-12-30 10:10:00', '1899-12-30 11:00:00', 'WF', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81419', '1054', 'Intro to Java', 'Lewis', '1899-12-30 04:00:00', '1899-12-30 06:00:00', 'T', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81424', '3424', 'Bus Modeling', 'Seref', '1899-12-30 11:00:00', '1899-12-30 12:15:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81425', '3424', 'Bus Modeling', 'Seref', '1899-12-30 02:00:00', '1899-12-30 03:15:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81426', '3414', 'Supply Chain', 'Teets', '1899-12-30 08:00:00', '1899-12-30 09:15:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81430', '3304', 'MGT Th & Lead Pract', 'Flynn', '1899-12-30 10:10:00', '1899-12-30 11:00:00', 'W', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81431', '3304', 'MGT Th & Lead Pract', 'Flynn', '1899-12-30 11:15:00', '1899-12-30 12:05:00', 'W', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81432', '3424', 'Bus Modeling', 'Seref', '1899-12-30 08:00:00', '1899-12-30 09:15:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81433', '3104', 'Intro to Finance', 'Keown', '1899-12-30 09:30:00', '1899-12-30 10:45:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81434', '4524', 'Systems Dev', 'Tegarden', '1899-12-30 02:00:00', '1899-12-30 03:15:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81435', '4524', 'Systems Dev', 'Tegarden', '1899-12-30 12:30:00', '1899-12-30 01:45:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81436', '3434', 'Adv Bus Modeling', 'Rakes', '1899-12-30 11:00:00', '1899-12-30 12:15:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81442', '4554', 'Netwroks', 'Shen', '1899-12-30 12:30:00', '1899-12-30 01:45:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81443', '4514', 'Database', 'Zubel', '1899-12-30 12:30:00', '1899-12-30 01:45:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81444', '4484', 'PM', 'Deane', '1899-12-30 02:00:00', '1899-12-30 03:15:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81449', '4514', 'Database', 'Zubel', '1899-12-30 08:00:00', '1899-12-30 09:15:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81450', '4444', 'Web Based', 'Wang', '1899-12-30 02:00:00', '1899-12-30 03:15:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81451', '3444', 'Bus Comp and App', 'Badinelli', '1899-12-30 08:00:00', '1899-12-30 09:15:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81452', '4554', 'Networks', 'Shen', '1899-12-30 11:00:00', '1899-12-30 12:15:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81454', '3104', 'Marketing Management', 'Wertalik', '1899-12-30 11:00:00', '1899-12-30 12:15:00', 'MW', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81455', '3104', 'Intro to Finance', 'Keown', '1899-12-30 11:00:00', '1899-12-30 12:15:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81456', '3434', 'Adv Bus Modeling', 'Rakes', '1899-12-30 02:00:00', '1899-12-30 03:15:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('81457', '3444', 'Bus Comp and App', 'Badinelli', '1899-12-30 12:30:00', '1899-12-30 01:45:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('82642', '2115', 'Principles of Accounting', 'Almond', '1899-12-30 09:05:00', '1899-12-30 09:55:00', 'MWF', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('82643', '2115', 'Principles of Accounting', 'Almond', '1899-12-30 01:25:00', '1899-12-30 02:15:00', 'MWF', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('82644', '1054', 'Intro to Java', 'Lewis', '1899-12-30 08:00:00', '1899-12-30 10:00:00', 'T', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('83485', '2405', 'Quantitative Methods', 'Kern', '1899-12-30 09:30:00', '1899-12-30 10:45:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('83486', '2405', 'Quantitative Methods', 'Kern', '1899-12-30 01:25:00', '1899-12-30 02:15:00', 'MWF', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('83490', '2406', 'Quantitative Methods', 'Taylor', '1899-12-30 11:00:00', '1899-12-30 12:15:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('83491', '2406', 'Quantitative Methods', 'Taylor', '1899-12-30 08:00:00', '1899-12-30 09:15:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('83904', '1105', 'First Year Writing', 'MB Fernandez', '1899-12-30 10:10:00', '1900-01-11 00:00:00', 'MWF', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('83905', '1105', 'First Year Writing', 'RJ Hooper', '1899-12-30 10:10:00', '1900-01-11 00:00:00', 'MWF', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('83906', '1105', 'First Year Writing', 'RJ Hooper', '1899-12-30 11:15:00', '1899-12-30 12:05:00', 'MWF', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('83990', '1106', 'First Year Writing', 'Gibbs', '1899-12-30 09:05:00', '1899-12-30 09:55:00', 'MWF', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('83991', '1106', 'First Year Writing', 'Skinner', '1899-12-30 03:30:00', '1899-12-30 04:45:00', 'MWF', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('83992', '1106', 'First Year Writing', 'Oakey', '1899-12-30 10:10:00', '1900-01-11 00:00:00', 'MWF', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('84438', '3104', 'Marketing Management', 'Wertalik', '1899-12-30 02:30:00', '1899-12-30 03:45:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('86317', '2116', 'Principles of Accounting', 'Sharp', '1899-12-30 01:25:00', '1899-12-30 02:15:00', 'MWF', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('86318', '2116', 'Principles of Accounting', 'Sharp', '1899-12-30 10:10:00', '1899-12-30 11:00:00', 'MWF', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('86502', '3414', 'Supply Chain', 'Clark', '1899-12-30 09:30:00', '1899-12-30 10:45:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('86503', '3414', 'Supply Chain', 'Clark', '1899-12-30 05:00:00', '1899-12-30 06:15:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('87958', '1504', 'Intro to Bus Analytics', 'Martin', '1899-12-30 08:00:00', '1899-12-30 09:15:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('87959', '1504', 'Intro to Bus Analytics', 'Martin', '1899-12-30 09:30:00', '1899-12-30 10:45:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('89082', '4444', 'Web Based', 'Wang', '1899-12-30 08:00:00', '1899-12-30 09:15:00', 'TR', 1);
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `time_start`, `time_End`, `days`, `major_ID`) VALUES ('90140', '1524', 'Business Calc', 'England', '1899-12-30 04:30:00', '1899-12-30 04:45:00', 'MWF', 1);
# 54 records

#
# Table structure for table 'enrollments'
#

DROP TABLE IF EXISTS `enrollments`;

CREATE TABLE `enrollments` (
  `enrollment_ID` INTEGER NOT NULL AUTO_INCREMENT,
  `CRN` VARCHAR(255),
  `student_ID` VARCHAR(255),
  PRIMARY KEY (`enrollment_ID`),
  INDEX (`student_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'enrollments'
#

INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES (1, '83904', '705994517');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES (2, '83905', '705994517');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES (3, '83906', '705994517');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES (4, '83990', '705994517');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES (5, '83991', '705994517');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES (6, '83992', '705994518');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES (7, '90140', '705994519');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES (8, '83904', '705997213');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES (9, '83905', '705994517');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES (10, '83906', '705994518');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES (11, '83990', '705994519');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES (12, '83991', '705997213');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES (13, '83992', '705994517');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES (14, '90140', '705994518');
# 14 records

#
# Table structure for table 'majors'
#

DROP TABLE IF EXISTS `majors`;

CREATE TABLE `majors` (
  `major_ID` INTEGER NOT NULL AUTO_INCREMENT,
  `major_Name` VARCHAR(255),
  PRIMARY KEY (`major_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'majors'
#

INSERT INTO `majors` (`major_ID`, `major_Name`) VALUES (1, 'BIT_DSS');
# 1 records

#
# Table structure for table 'student'
#

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `student_ID` VARCHAR(255) NOT NULL,
  `pid` VARCHAR(255),
  `password` VARCHAR(255),
  `major_ID` INTEGER,
  `year` INTEGER,
  INDEX (`major_ID`),
  INDEX (`pid`),
  PRIMARY KEY (`student_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'student'
#

INSERT INTO `student` (`student_ID`, `pid`, `password`, `major_ID`, `year`) VALUES ('705994517', 'james', 'password', 1, 4);
INSERT INTO `student` (`student_ID`, `pid`, `password`, `major_ID`, `year`) VALUES ('705994518', 'pj', 'password', 1, 2);
INSERT INTO `student` (`student_ID`, `pid`, `password`, `major_ID`, `year`) VALUES ('705994519', 'vegetable', 'password', 1, 1);
INSERT INTO `student` (`student_ID`, `pid`, `password`, `major_ID`, `year`) VALUES ('705997213', 'pickle', 'password', 1, 3);
# 4 records
