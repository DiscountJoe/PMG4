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
#   destinationdatabase=advising
#   storageengine=MyISAM
#   dropdatabase=0
#   createtables=1
#   unicode=1
#   autocommit=1
#   transferdefaultvalues=1
#   transferindexes=1
#   transferautonumbers=1
#   transferrecords=1
#   columnlist=1
#   tableprefix=
#   negativeboolean=0
#   ignorelargeblobs=0
#   memotype=LONGTEXT
#   datetimetype=DATETIME
#

CREATE DATABASE IF NOT EXISTS `new_Advising`;
USE `new_Advising`;

#
# Table structure for table 'classes'
#

DROP TABLE IF EXISTS `classes`;

CREATE TABLE `classes` (
  `CRN` VARCHAR(255) NOT NULL,
  `class_Number` VARCHAR(255),
  `name` VARCHAR(255),
  `professor` VARCHAR(255),
  `start_Time` DOUBLE NULL,
  `end_Time` DOUBLE NULL,
  `days` VARCHAR(255),
  `major_ID` VARCHAR(255),
  PRIMARY KEY (`CRN`),
  INDEX (`major_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'classes'
#

INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `start_Time`, `end_Time`, `days`, `major_ID`) VALUES ('181071', 'BIT_3000', 'EXPERT BIT', 'Lady', 10, 13, 'MWF', '1');
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `start_Time`, `end_Time`, `days`, `major_ID`) VALUES ('182097', 'BIT_2000', 'Advanced BIT', 'Dude', 10, 12, 'TT', '1');
INSERT INTO `classes` (`CRN`, `class_Number`, `name`, `professor`, `start_Time`, `end_Time`, `days`, `major_ID`) VALUES ('183249', 'BIT_1000', 'Business', 'Guy', 8, 10, 'M', '1');
# 3 records

#
# Table structure for table 'enrollments'
#

DROP TABLE IF EXISTS `enrollments`;

CREATE TABLE `enrollments` (
  `enrollment_ID` INT NOT NULL AUTO_INCREMENT,
  `CRN` VARCHAR(255),
  `student_ID` VARCHAR(255),
  PRIMARY KEY (`enrollment_ID`),
  INDEX (`student_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'enrollments'
#

INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES ('1', '183249', '705994517');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES ('10', '184659', '705994518');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES ('11', '183772', '705994519');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES ('12', '184291', '705997213');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES ('13', '183885', '705994517');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES ('14', '181478', '705994518');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES ('2', '182097', '705994518');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES ('3', '181071', '705994519');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES ('4', '183311', '705997213');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES ('5', '183499', '705994517');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES ('6', '182281', '705994518');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES ('7', '184224', '705994519');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES ('8', '184797', '705997213');
INSERT INTO `enrollments` (`enrollment_ID`, `CRN`, `student_ID`) VALUES ('9', '181412', '705994517');
# 14 records

#
# Table structure for table 'majors'
#

DROP TABLE IF EXISTS `majors`;

CREATE TABLE `majors` (
  `major_ID` INT NOT NULL AUTO_INCREMENT,
  `major_Name` VARCHAR(255),
  PRIMARY KEY (`major_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'majors'
#

INSERT INTO `majors` (`major_ID`, `major_Name`) VALUES ('1', 'BIT_DSS');
# 1 records

#
# Table structure for table 'students'
#

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `student_ID` VARCHAR(255) NOT NULL,
  `pid` VARCHAR(255),
  `password` VARCHAR(255),
  `major_ID` VARCHAR(255),
  `year` DOUBLE NULL,
  INDEX (`major_ID`),
  INDEX (`pid`),
  PRIMARY KEY (`student_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'students'
#

INSERT INTO `students` (`student_ID`, `pid`, `password`, `major_ID`, `year`) VALUES ('705994517', 'jamesv', 'password', '1', 4);
INSERT INTO `students` (`student_ID`, `pid`, `password`, `major_ID`, `year`) VALUES ('705994518', 'pjfernandez', 'password', '1', 2);
INSERT INTO `students` (`student_ID`, `pid`, `password`, `major_ID`, `year`) VALUES ('705994519', 'vegetable', 'password', '1', 1);
INSERT INTO `students` (`student_ID`, `pid`, `password`, `major_ID`, `year`) VALUES ('705997213', 'pickle', 'password', '1', 3);
# 4 records
