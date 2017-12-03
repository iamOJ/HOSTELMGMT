/*
Navicat MySQL Data Transfer

Source Server         : hostel_management_system
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : hostel_management_system

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2016-11-02 17:30:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` varchar(10) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  KEY `fk1` (`id`),
  CONSTRAINT `fk1` FOREIGN KEY (`id`) REFERENCES `staff` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('A1001', 'xyz');
INSERT INTO `admin` VALUES ('A1002', 'xyz');
INSERT INTO `admin` VALUES ('A1003', 'abc');
INSERT INTO `admin` VALUES ('A1004', 'xyz');
INSERT INTO `admin` VALUES ('A1005', 'xyz');
INSERT INTO `admin` VALUES ('A1006', 'xyz');
INSERT INTO `admin` VALUES ('A1007', 'xyz');
INSERT INTO `admin` VALUES ('A1008', 'xyz');
INSERT INTO `admin` VALUES ('A1009', 'xyz');
INSERT INTO `admin` VALUES ('A1010', 'xyz');
INSERT INTO `admin` VALUES ('A1011', 'xyz');
INSERT INTO `admin` VALUES ('A1012', 'xyz');
INSERT INTO `admin` VALUES ('A1013', 'xyz');

-- ----------------------------
-- Table structure for block
-- ----------------------------
DROP TABLE IF EXISTS `block`;
CREATE TABLE `block` (
  `Bname` varchar(50) DEFAULT NULL,
  `BCode` char(1) NOT NULL,
  `Beds6AC` int(11) DEFAULT NULL,
  `Beds6NAC` int(11) DEFAULT NULL,
  `Beds4AC` int(11) DEFAULT NULL,
  `Beds4NAC` int(11) DEFAULT NULL,
  `Beds2AC` int(11) DEFAULT NULL,
  `Beds2NAC` int(11) DEFAULT NULL,
  `Beds1AC` int(11) DEFAULT NULL,
  `Beds1NAC` int(11) DEFAULT NULL,
  PRIMARY KEY (`BCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of block
-- ----------------------------
INSERT INTO `block` VALUES ('Albert Einstein', 'A', '90', '110', '55', '75', '35', '50', '0', '0');
INSERT INTO `block` VALUES ('Swami Vivekananda', 'B', '0', '100', '0', '50', '0', '60', '0', '100');
INSERT INTO `block` VALUES ('Rabindranath Tagore', 'C', '90', '110', '55', '75', '35', '50', '0', '0');
INSERT INTO `block` VALUES ('Nelson Mandela', 'D', '110', '10', '100', '25', '50', '10', '20', '0');
INSERT INTO `block` VALUES ('Sir C.V. Raman', 'E', '110', '10', '100', '25', '50', '10', '20', '0');
INSERT INTO `block` VALUES ('Ramanujan', 'F', '100', '100', '75', '75', '50', '50', '20', '20');
INSERT INTO `block` VALUES ('Socrates', 'G', '50', '50', '40', '40', '60', '30', '70', '75');
INSERT INTO `block` VALUES ('Dr. Sarvepalli Radhakrishnan', 'K', '250', '50', '100', '70', '30', '50', '0', '0');
INSERT INTO `block` VALUES ('Netaji Subhash Chandra Bose', 'L', '250', '50', '100', '70', '30', '50', '0', '0');
INSERT INTO `block` VALUES ('Quaid-E-Millat', 'M', '50', '10', '55', '70', '30', '50', '0', '0');
INSERT INTO `block` VALUES ('Charles Darwin', 'N', '50', '10', '55', '70', '30', '50', '0', '0');
INSERT INTO `block` VALUES ('P Block', 'P', '0', '200', '0', '100', '0', '55', '0', '0');

-- ----------------------------
-- Table structure for logins
-- ----------------------------
DROP TABLE IF EXISTS `logins`;
CREATE TABLE `logins` (
  `RegisterNo` char(9) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  KEY `RegisterNo` (`RegisterNo`),
  CONSTRAINT `logins_ibfk_1` FOREIGN KEY (`RegisterNo`) REFERENCES `student` (`RegisterNo`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logins
-- ----------------------------
INSERT INTO `logins` VALUES ('15BBT0001', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0002', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0003', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0004', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0005', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0006', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0007', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0008', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0009', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0010', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0011', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0012', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0013', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0014', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0015', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0016', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0017', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0018', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0019', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0020', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0021', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0022', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0023', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0024', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0025', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0026', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0027', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0028', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0029', 'abcdef');
INSERT INTO `logins` VALUES ('15BBT0030', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0001', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0002', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0003', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0004', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0005', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0006', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0007', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0008', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0009', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0010', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0011', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0012', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0013', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0014', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0015', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0016', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0017', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0018', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0019', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0020', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0021', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0022', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0023', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0024', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0025', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0026', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0027', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0028', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0029', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0030', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0031', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0032', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0033', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0034', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0035', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0036', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0037', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0038', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0039', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0040', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0041', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0042', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0043', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0044', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0045', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0046', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0047', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0048', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0049', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0050', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0051', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0052', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0053', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0054', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0055', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0056', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0057', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0058', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0059', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0060', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0061', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0062', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0063', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0064', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0065', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0066', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0067', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0068', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0069', 'abcdef');
INSERT INTO `logins` VALUES ('15BCE0070', 'abcdef');
INSERT INTO `logins` VALUES ('15BEC0001', 'abcdef');
INSERT INTO `logins` VALUES ('15BEC0002', 'abcdef');
INSERT INTO `logins` VALUES ('15BEC0003', 'abcdef');
INSERT INTO `logins` VALUES ('15BEC0004', 'abcdef');
INSERT INTO `logins` VALUES ('15BEC0005', 'abcdef');
INSERT INTO `logins` VALUES ('15BEC0006', 'abcdef');
INSERT INTO `logins` VALUES ('15BEC0007', 'abcdef');
INSERT INTO `logins` VALUES ('15BEC0008', 'abcdef');
INSERT INTO `logins` VALUES ('15BEC0009', 'abcdef');
INSERT INTO `logins` VALUES ('15BEC0010', 'abcdef');
INSERT INTO `logins` VALUES ('15BEC0011', 'abcdef');
INSERT INTO `logins` VALUES ('15BEC0012', 'abcdef');
INSERT INTO `logins` VALUES ('15BEC0013', 'abcdef');
INSERT INTO `logins` VALUES ('15BEC0014', 'abcdef');
INSERT INTO `logins` VALUES ('15BEC0015', 'abcdef');
INSERT INTO `logins` VALUES ('15BEC0016', 'abcdef');
INSERT INTO `logins` VALUES ('15BEC0017', 'abcdef');
INSERT INTO `logins` VALUES ('15BEC0018', 'abcdef');
INSERT INTO `logins` VALUES ('15BEC0019', 'abcdef');
INSERT INTO `logins` VALUES ('15BEC0020', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0001', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0002', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0003', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0004', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0005', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0006', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0007', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0008', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0009', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0010', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0011', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0012', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0013', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0014', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0015', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0016', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0017', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0018', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0019', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0020', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0021', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0022', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0023', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0024', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0025', 'abcdef');
INSERT INTO `logins` VALUES ('15BME0026', 'abcdef');
INSERT INTO `logins` VALUES ('15BEE0001', 'abcdef');
INSERT INTO `logins` VALUES ('15BEE0002', 'abcdef');
INSERT INTO `logins` VALUES ('15BEE0003', 'abcdef');
INSERT INTO `logins` VALUES ('15BEE0004', 'abcdef');
INSERT INTO `logins` VALUES ('15BEE0005', 'abcdef');
INSERT INTO `logins` VALUES ('15BEE0006', 'abcdef');
INSERT INTO `logins` VALUES ('15BEE0007', 'abcdef');
INSERT INTO `logins` VALUES ('15BEE0008', 'abcdef');
INSERT INTO `logins` VALUES ('15BEE0009', 'abcdef');
INSERT INTO `logins` VALUES ('15BEE0010', 'abcdef');
INSERT INTO `logins` VALUES ('15BEE0011', 'abcdef');
INSERT INTO `logins` VALUES ('15BEE0012', 'abcdef');
INSERT INTO `logins` VALUES ('15BEE0013', 'abcdef');
INSERT INTO `logins` VALUES ('15BEE0014', 'abcdef');
INSERT INTO `logins` VALUES ('15BEE0015', 'abcdef');
INSERT INTO `logins` VALUES ('15BIT0001', 'abcdef');
INSERT INTO `logins` VALUES ('15BIT0002', 'abcdef');
INSERT INTO `logins` VALUES ('15BIT0003', 'abcdef');
INSERT INTO `logins` VALUES ('15BIT0004', 'abcdef');
INSERT INTO `logins` VALUES ('15BIT0005', 'abcdef');
INSERT INTO `logins` VALUES ('15BIT0006', 'abcdef');
INSERT INTO `logins` VALUES ('15BIT0007', 'abcdef');
INSERT INTO `logins` VALUES ('15BIT0008', 'abcdef');
INSERT INTO `logins` VALUES ('15BIT0009', 'abcdef');
INSERT INTO `logins` VALUES ('15BIT0010', 'abcdef');
INSERT INTO `logins` VALUES ('15BIT0011', 'abcdef');
INSERT INTO `logins` VALUES ('15BIT0012', 'abcdef');
INSERT INTO `logins` VALUES ('15BIT0013', 'abcdef');
INSERT INTO `logins` VALUES ('15BIT0014', 'abcdef');
INSERT INTO `logins` VALUES ('15BIT0015', 'abcdef');
INSERT INTO `logins` VALUES ('15BIT0016', 'abcdef');
INSERT INTO `logins` VALUES ('15BIT0017', 'abcdef');
INSERT INTO `logins` VALUES ('15BIT0018', 'abcdef');
INSERT INTO `logins` VALUES ('15BIT0019', 'abcdef');
INSERT INTO `logins` VALUES ('15BIT0020', 'abcdef');
INSERT INTO `logins` VALUES ('15BIT0021', 'abcdef');
INSERT INTO `logins` VALUES ('15BCB0001', 'abcdef');
INSERT INTO `logins` VALUES ('15BCB0002', 'abcdef');
INSERT INTO `logins` VALUES ('15BCB0003', 'abcdef');
INSERT INTO `logins` VALUES ('15BCB0004', 'abcdef');
INSERT INTO `logins` VALUES ('15BCB0005', 'abcdef');
INSERT INTO `logins` VALUES ('15BCB0006', 'abcdef');
INSERT INTO `logins` VALUES ('15BCB0007', 'abcdef');
INSERT INTO `logins` VALUES ('15BCB0008', 'abcdef');
INSERT INTO `logins` VALUES ('15BCB0009', 'abcdef');
INSERT INTO `logins` VALUES ('15BCB0010', 'abcdef');
INSERT INTO `logins` VALUES ('15BCB0011', 'abcdef');
INSERT INTO `logins` VALUES ('15BCB0012', 'abcdef');
INSERT INTO `logins` VALUES ('15BCB0013', 'abcdef');
INSERT INTO `logins` VALUES ('15BCB0014', 'abcdef');
INSERT INTO `logins` VALUES ('15BCB0015', 'abcdef');
INSERT INTO `logins` VALUES ('15BCB0016', 'abcdef');
INSERT INTO `logins` VALUES ('15BCB0017', 'abcdef');
INSERT INTO `logins` VALUES ('15BCB0018', 'abcdef');

-- ----------------------------
-- Table structure for mess
-- ----------------------------
DROP TABLE IF EXISTS `mess`;
CREATE TABLE `mess` (
  `MessID` int(5) NOT NULL DEFAULT '0',
  `CatererName` varchar(20) NOT NULL,
  `MessType` varchar(20) NOT NULL,
  `Fees` int(11) NOT NULL,
  PRIMARY KEY (`MessID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mess
-- ----------------------------
INSERT INTO `mess` VALUES ('15204', 'PR Caterers', 'North Indian Veg', '43000');
INSERT INTO `mess` VALUES ('15205', 'PR Caterers', 'North Indian NonVeg', '48500');
INSERT INTO `mess` VALUES ('18902', 'Darling', 'Special', '51500');

-- ----------------------------
-- Table structure for rooms
-- ----------------------------
DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms` (
  `RType` varchar(10) NOT NULL,
  `RFees` int(11) NOT NULL,
  PRIMARY KEY (`RType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rooms
-- ----------------------------
INSERT INTO `rooms` VALUES ('Beds1AC', '79500');
INSERT INTO `rooms` VALUES ('Beds1NAC', '53000');
INSERT INTO `rooms` VALUES ('Beds2AC', '60000');
INSERT INTO `rooms` VALUES ('Beds2NAC', '42000');
INSERT INTO `rooms` VALUES ('Beds4AC', '47500');
INSERT INTO `rooms` VALUES ('Beds4NAC', '33000');
INSERT INTO `rooms` VALUES ('Beds6AC', '42000');
INSERT INTO `rooms` VALUES ('Beds6NAC', '30000');

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` varchar(10) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `blockallotted` varchar(255) DEFAULT NULL,
  `timein` varchar(6) DEFAULT NULL,
  `timeout` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES ('A1001', ' Srinath', 'Rajgopalan', 'Chief_Warden', null, '10AM', '7PM');
INSERT INTO `staff` VALUES ('A1002', 'Balarama ', 'kopar', 'WARDEN', 'A', '4PM', '11PM');
INSERT INTO `staff` VALUES ('A1003', 'Aditya', 'sharma', 'WARDEN', 'B', '4PM', '11PM');
INSERT INTO `staff` VALUES ('A1004', 'Ravindra', 'singh', 'WARDEN', 'C', '4PM', '11PM');
INSERT INTO `staff` VALUES ('A1005', 'Ashwin', 'gupta', 'WARDEN', 'D', '4PM', '11PM');
INSERT INTO `staff` VALUES ('A1006', 'Senthil', 'kumar', 'WARDEN', 'E', '4PM', '11PM');
INSERT INTO `staff` VALUES ('A1007', 'Mandar ', 'Wasgare', 'WARDEN', 'F', '4PM', '11PM');
INSERT INTO `staff` VALUES ('A1008', 'Kamal ', 'gulati', 'WARDEN', 'G', '4PM', '11PM');
INSERT INTO `staff` VALUES ('A1009', 'Deepak', 'Shah', 'WARDEN', 'K', '4PM', '11PM');
INSERT INTO `staff` VALUES ('A1010', 'Parag', 'Pandit', 'WARDEN', 'L', '4PM', '11PM');
INSERT INTO `staff` VALUES ('A1011', 'Sanket', 'Deshmukh', 'WARDEN', 'M', '4PM', '11PM');
INSERT INTO `staff` VALUES ('A1012', 'Shrey', 'Saxena', 'WARDEN', 'N', '4PM', '11PM');
INSERT INTO `staff` VALUES ('A1013', 'Amar', 'Patel', 'WARDEN', 'P', '4PM', '11PM');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `RegisterNo` char(9) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `MiddleName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `Branch` varchar(50) NOT NULL,
  `Sex` char(1) NOT NULL,
  `BlockAlloted` varchar(50) DEFAULT NULL,
  `RoomAlloted` int(11) DEFAULT NULL,
  `MessAlloted` int(5) DEFAULT NULL,
  `PhoneNumber` varchar(11) NOT NULL,
  `CGPA` decimal(4,2) NOT NULL,
  `RoomType` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`RegisterNo`),
  KEY `MessForeign` (`MessAlloted`),
  CONSTRAINT `MessForeign` FOREIGN KEY (`MessAlloted`) REFERENCES `mess` (`MessID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('15BBT0001', 'Louis', 'Henrry', 'Bradley', '1995-12-27', 'Biotechnology', 'M', 'A', '524', '15204', '6746593790', '6.53', '4AC');
INSERT INTO `student` VALUES ('15BBT0002', 'Henry', '', 'Lawson', '1997-05-14', 'Biotechnology', 'M', 'A', '524', '15205', '1914899096', '8.06', '4AC');
INSERT INTO `student` VALUES ('15BBT0003', 'Billy', '', 'Rice', '1997-06-08', 'Biotechnology', 'M', 'A', '524', '18902', '6806683361', '7.00', '4AC');
INSERT INTO `student` VALUES ('15BBT0004', 'Gregory', '', 'Arnold', '1996-01-03', 'Biotechnology', 'M', 'A', '524', '18902', '3609760224', '5.34', '4AC');
INSERT INTO `student` VALUES ('15BBT0005', 'Adam', 'James', 'Cruz', '1997-09-18', 'Biotechnology', 'M', 'D', '350', '15204', '3159809276', '6.95', '6AC');
INSERT INTO `student` VALUES ('15BBT0006', 'Lawrence', '', 'Edwards', '1995-10-18', 'Biotechnology', 'M', 'D', '350', '15204', '6594223666', '9.87', '6AC');
INSERT INTO `student` VALUES ('15BBT0007', 'Christine', '', 'Garrett', '1997-04-24', 'Biotechnology', 'M', 'D', '350', '15204', '2895932827', '8.87', '6AC');
INSERT INTO `student` VALUES ('15BBT0008', 'Debra', '', 'Matthews', '1996-04-13', 'Biotechnology', 'M', 'D', '350', '15204', '9481479233', '9.61', '6AC');
INSERT INTO `student` VALUES ('15BBT0009', 'Diane', '', 'Taylor', '1996-10-17', 'Biotechnology', 'M', 'D', '350', '15204', '5503305064', '6.10', '6AC');
INSERT INTO `student` VALUES ('15BBT0010', 'Christina', '', 'Ellis', '1996-06-20', 'Biotechnology', 'M', 'D', '350', '15204', '4737359090', '8.38', '6AC');
INSERT INTO `student` VALUES ('15BBT0011', 'Cynthia', '', 'Jackson', '1997-11-22', 'Biotechnology', 'M', 'N', '223', '15204', '7042162564', '9.06', '2AC');
INSERT INTO `student` VALUES ('15BBT0012', 'Lillian', 'Jack', 'Scott', '1996-01-01', 'Biotechnology', 'M', 'N', '223', '15204', '1204030115', '3.32', '2AC');
INSERT INTO `student` VALUES ('15BBT0013', 'Jerry', '', 'Mendoza', '1997-01-16', 'Biotechnology', 'M', 'E', '695', '15204', '1973384481', '8.67', '1NAC');
INSERT INTO `student` VALUES ('15BBT0014', 'Gerald', '', 'Montgomery', '1996-05-22', 'Biotechnology', 'M', 'A', '560', '15204', '2288301392', '7.24', '6NAC');
INSERT INTO `student` VALUES ('15BBT0015', 'Charles', '', 'Robertson', '1997-06-12', 'Biotechnology', 'M', 'A', '560', '15204', '5121623980', '2.49', '6NAC');
INSERT INTO `student` VALUES ('15BBT0016', 'Catherine', '', 'Long', '1996-09-26', 'Biotechnology', 'M', 'A', '560', '15205', '9134217201', '4.08', '6NAC');
INSERT INTO `student` VALUES ('15BBT0017', 'Gloria', '', 'Matthews', '1996-03-17', 'Biotechnology', 'M', 'A', '560', '15205', '1501322839', '8.05', '6NAC');
INSERT INTO `student` VALUES ('15BBT0018', 'Daniel', '', 'Morales', '1996-09-30', 'Biotechnology', 'M', 'A', '560', '18902', '7918460977', '8.64', '6NAC');
INSERT INTO `student` VALUES ('15BBT0019', 'Phillip', '', 'King', '1997-07-01', 'Biotechnology', 'M', 'A', '560', '18902', '1621941807', '4.39', '6NAC');
INSERT INTO `student` VALUES ('15BBT0020', 'Ralph', 'Carter', 'Crawford', '1996-12-09', 'Biotechnology', 'M', 'G', '242', '18902', '8544420946', '5.53', '1NAC');
INSERT INTO `student` VALUES ('15BBT0021', 'Angela', '', 'Turner', '1995-12-15', 'Biotechnology', 'M', 'F', '986', '18902', '4839682575', '2.43', '2AC');
INSERT INTO `student` VALUES ('15BBT0022', 'Ruby', '', 'Stewart', '1995-10-24', 'Biotechnology', 'M', 'F', '986', '18902', '1753956572', '7.47', '2AC');
INSERT INTO `student` VALUES ('15BBT0023', 'Martha', '', 'Cole', '1996-02-26', 'Biotechnology', 'M', 'G', '317', '18902', '8318120563', '8.17', '1AC');
INSERT INTO `student` VALUES ('15BBT0024', 'Bruce', '', 'King', '1997-07-12', 'Biotechnology', 'M', 'N', '285', '18902', '9671104080', '6.57', '4AC');
INSERT INTO `student` VALUES ('15BBT0025', 'Harry', '', 'James', '1996-12-30', 'Biotechnology', 'M', 'N', '285', '18902', '7112801792', '3.08', '4AC');
INSERT INTO `student` VALUES ('15BBT0026', 'Sandra', '', 'Hughes', '1997-02-09', 'Biotechnology', 'M', 'N', '285', '18902', '5516194671', '3.80', '4AC');
INSERT INTO `student` VALUES ('15BBT0027', 'Sean', '', 'Kelley', '1995-12-13', 'Biotechnology', 'M', 'N', '285', '18902', '8967104157', '1.41', '4AC');
INSERT INTO `student` VALUES ('15BBT0028', 'Irene', 'Adler', 'Ward', '1996-09-20', 'Biotechnology', 'M', 'P', '1110', '18902', '3845959546', '8.86', '6NAC');
INSERT INTO `student` VALUES ('15BBT0029', 'Jerry', '', 'Campbell', '1996-09-29', 'Biotechnology', 'M', 'P', '1110', '18902', '9901157455', '3.14', '6NAC');
INSERT INTO `student` VALUES ('15BBT0030', 'Phillip', '', 'Simpson', '1996-02-01', 'Biotechnology', 'M', 'P', '1110', '18902', '4352071590', '1.56', '6NAC');
INSERT INTO `student` VALUES ('15BCB0001', 'Joe', '', 'Palmer', '1997-04-23', 'Computer Science with BioInformatics', 'M', 'D', '223', '15204', '2865005397', '1.65', '6NAC');
INSERT INTO `student` VALUES ('15BCB0002', 'Eugene', '', 'Dunn', '1997-02-16', 'Computer Science with BioInformatics', 'M', 'A', '503', '15205', '1962869212', '6.37', '6AC');
INSERT INTO `student` VALUES ('15BCB0003', 'Joan', '', 'Flores', '1997-10-07', 'Computer Science with BioInformatics', 'M', 'A', '503', '15205', '4808479232', '4.30', '6AC');
INSERT INTO `student` VALUES ('15BCB0004', 'Patrick', '', 'Oliver', '1997-03-27', 'Computer Science with BioInformatics', 'M', 'A', '503', '15205', '3994669203', '1.20', '6AC');
INSERT INTO `student` VALUES ('15BCB0005', 'Joyce', '', 'Elliott', '1997-11-12', 'Computer Science with BioInformatics', 'M', 'A', '503', '15205', '3964345778', '4.05', '6AC');
INSERT INTO `student` VALUES ('15BCB0006', 'Sarah', '', 'Riley', '1996-12-20', 'Computer Science with BioInformatics', 'M', 'A', '503', '15204', '2227515530', '2.17', '6AC');
INSERT INTO `student` VALUES ('15BCB0007', 'Henry', '', 'Berry', '1996-12-29', 'Computer Science with BioInformatics', 'M', 'A', '503', '18902', '3928531077', '1.38', '6AC');
INSERT INTO `student` VALUES ('15BCB0008', 'Annie', '', 'Hernandez', '1996-08-07', 'Computer Science with BioInformatics', 'M', 'M', '840', '18902', '6583124211', '1.49', '4AC');
INSERT INTO `student` VALUES ('15BCB0009', 'Carolyn', '', 'Gonzales', '1997-11-13', 'Computer Science with BioInformatics', 'M', 'M', '840', '15204', '4016129355', '7.22', '4AC');
INSERT INTO `student` VALUES ('15BCB0010', 'Roger', '', 'Pierce', '1996-01-29', 'Computer Science with BioInformatics', 'M', 'M', '840', '18902', '7238853648', '1.31', '4AC');
INSERT INTO `student` VALUES ('15BCB0011', 'Brenda', '', 'Baker', '1997-05-02', 'Computer Science with BioInformatics', 'M', 'M', '840', '15204', '8368626491', '3.66', '4AC');
INSERT INTO `student` VALUES ('15BCB0012', 'Richard', '', 'Jones', '1996-06-10', 'Computer Science with BioInformatics', 'M', 'N', '417', '15204', '4935797592', '9.65', '6AC');
INSERT INTO `student` VALUES ('15BCB0013', 'William', 'Joyce', 'Stewart', '1996-10-11', 'Computer Science with BioInformatics', 'M', 'N', '417', '18902', '4345379610', '2.14', '6AC');
INSERT INTO `student` VALUES ('15BCB0014', 'Joyce', '', 'Woods', '1997-03-27', 'Computer Science with BioInformatics', 'M', 'N', '417', '18902', '1456752294', '6.04', '6AC');
INSERT INTO `student` VALUES ('15BCB0015', 'Louise', '', 'Matthews', '1996-10-24', 'Computer Science with BioInformatics', 'M', 'N', '417', '15204', '5756527945', '3.81', '6AC');
INSERT INTO `student` VALUES ('15BCB0016', 'Andrew', '', 'Simmons', '1996-06-18', 'Computer Science with BioInformatics', 'M', 'N', '417', '18902', '8147761423', '2.59', '6AC');
INSERT INTO `student` VALUES ('15BCB0017', 'Jonathan', '', 'Elliott', '1997-09-08', 'Computer Science with BioInformatics', 'M', 'N', '417', '15204', '5988444394', '3.60', '6AC');
INSERT INTO `student` VALUES ('15BCB0018', 'Marilyn', 'Monroe', 'Collins', '1997-04-17', 'Computer Science with BioInformatics', 'M', null, null, null, '4165362924', '3.96', '');
INSERT INTO `student` VALUES ('15BCE0001', 'Mildred', '', 'Webb', '1995-10-28', 'Computer Science', 'M', 'P', '1110', '18902', '4735600185', '1.45', '6NAC');
INSERT INTO `student` VALUES ('15BCE0002', 'Thomas', '', 'Weaver', '1996-07-23', 'Computer Science', 'M', 'P', '1110', '15204', '8163078138', '4.07', '6NAC');
INSERT INTO `student` VALUES ('15BCE0003', 'Richard', '', 'Jenkins', '1997-07-28', 'Computer Science', 'M', 'P', '1110', '15204', '9272510155', '7.17', '6NAC');
INSERT INTO `student` VALUES ('15BCE0004', 'Scott', '', 'Wood', '1997-01-18', 'Computer Science', 'M', 'M', '374', '15204', '9903282755', '6.47', '4AC');
INSERT INTO `student` VALUES ('15BCE0005', 'Debra', '', 'Harrison', '1996-10-23', 'Computer Science', 'M', 'M', '374', '15204', '5318657530', '1.68', '4AC');
INSERT INTO `student` VALUES ('15BCE0006', 'Ernest', '', 'Howell', '1997-01-04', 'Computer Science', 'M', 'M', '374', '15204', '8146925124', '3.78', '4AC');
INSERT INTO `student` VALUES ('15BCE0007', 'Debra', '', 'Harvey', '1997-12-19', 'Computer Science', 'M', 'M', '374', '15204', '2959902255', '9.21', '4AC');
INSERT INTO `student` VALUES ('15BCE0008', 'Carl', '', 'Medina', '1997-03-28', 'Computer Science', 'M', 'A', '429', '15204', '4569242630', '9.66', '4AC');
INSERT INTO `student` VALUES ('15BCE0009', 'Steve', '', 'Rice', '1998-01-22', 'Computer Science', 'M', 'A', '429', '15204', '2575092446', '5.75', '4AC');
INSERT INTO `student` VALUES ('15BCE0010', 'Philip', '', 'King', '1997-07-20', 'Computer Science', 'M', 'A', '429', '15204', '7603017891', '1.73', '4AC');
INSERT INTO `student` VALUES ('15BCE0011', 'Douglas', '', 'Weaver', '1997-12-10', 'Computer Science', 'M', 'A', '429', '18902', '1725650423', '8.29', '4AC');
INSERT INTO `student` VALUES ('15BCE0012', 'Randy', '', 'Butler', '1996-12-02', 'Computer Science', 'M', 'B', '451', '18902', '4565641217', '3.66', '2NAC');
INSERT INTO `student` VALUES ('15BCE0013', 'Henry', '', 'Ryan', '1996-12-14', 'Computer Science', 'M', 'B', '451', '15204', '9626879908', '7.68', '2NAC');
INSERT INTO `student` VALUES ('15BCE0014', 'Catherine', '', 'Green', '1995-12-18', 'Computer Science', 'M', 'B', '424', '15204', '5147804093', '2.71', '2NAC');
INSERT INTO `student` VALUES ('15BCE0015', 'Kimberly', '', 'Anderson', '1997-05-22', 'Computer Science', 'M', 'B', '424', '18902', '6547756943', '6.79', '2NAC');
INSERT INTO `student` VALUES ('15BCE0016', 'Stephanie', '', 'Johnson', '1995-12-25', 'Computer Science', 'M', 'E', '511', '15204', '5615028645', '1.22', '4NAC');
INSERT INTO `student` VALUES ('15BCE0017', 'Timothy', 'Rick', 'Wilson', '1997-02-15', 'Computer Science', 'M', 'E', '511', null, '5598242825', '9.04', '4NAC');
INSERT INTO `student` VALUES ('15BCE0018', 'Lillian', '', 'King', '1996-09-04', 'Computer Science', 'M', 'E', '511', null, '8357841522', '9.89', '4NAC');
INSERT INTO `student` VALUES ('15BCE0019', 'Debra', '', 'Wagner', '1996-04-20', 'Computer Science', 'M', 'E', '511', null, '4363779863', '7.83', '4NAC');
INSERT INTO `student` VALUES ('15BCE0020', 'Kathy', '', 'Elliott', '1997-02-10', 'Computer Science', 'M', 'L', '104', '18902', '2584742993', '8.75', '6AC');
INSERT INTO `student` VALUES ('15BCE0021', 'Gregory', '', 'Reyes', '1997-04-22', 'Computer Science', 'M', 'L', '104', '15204', '6709061382', '2.93', '6AC');
INSERT INTO `student` VALUES ('15BCE0022', 'Stephen', '', 'Frazier', '1997-12-19', 'Computer Science', 'M', 'L', '104', '15204', '9498394114', '4.55', '6AC');
INSERT INTO `student` VALUES ('15BCE0023', 'Tammy', '', 'Wheeler', '1997-03-25', 'Computer Science', 'M', 'L', '104', '15204', '6054687362', '3.19', '6AC');
INSERT INTO `student` VALUES ('15BCE0024', 'Patricia', '', 'Romero', '1997-09-08', 'Computer Science', 'M', 'L', '104', '15204', '1752650505', '6.51', '6AC');
INSERT INTO `student` VALUES ('15BCE0025', 'Donna', '', 'Ray', '1997-02-09', 'Computer Science', 'M', 'L', '104', '15204', '8075181146', '7.95', '6AC');
INSERT INTO `student` VALUES ('15BCE0026', 'Justin', '', 'Moreno', '1997-12-26', 'Computer Science', 'M', 'L', '642', '15204', '5951258034', '6.46', '4AC');
INSERT INTO `student` VALUES ('15BCE0027', 'Michael', '', 'Carter', '1996-10-06', 'Computer Science', 'M', 'L', '642', '15205', '7417204214', '6.77', '4AC');
INSERT INTO `student` VALUES ('15BCE0028', 'Jennifer', '', 'Carr', '1996-05-12', 'Computer Science', 'M', 'L', '642', '15205', '3781302571', '7.57', '4AC');
INSERT INTO `student` VALUES ('15BCE0029', 'Amy', '', 'Rivera', '1996-10-23', 'Computer Science', 'M', 'L', '642', '18902', '5247424980', '2.44', '4AC');
INSERT INTO `student` VALUES ('15BCE0030', 'Carol', '', 'Graham', '1997-06-12', 'Computer Science', 'M', 'F', '281', '18902', '2628604366', '8.16', '6NAC');
INSERT INTO `student` VALUES ('15BCE0031', 'Jason', '', 'Bailey', '1997-02-27', 'Computer Science', 'M', 'F', '281', '18902', '6339361285', '7.65', '6NAC');
INSERT INTO `student` VALUES ('15BCE0032', 'Annie', '', 'Wilson', '1997-07-27', 'Computer Science', 'M', 'F', '281', '18902', '8386870791', '6.76', '6NAC');
INSERT INTO `student` VALUES ('15BCE0033', 'Timothy', '', 'Austin', '1995-12-13', 'Computer Science', 'M', 'F', '281', '18902', '1196281585', '5.06', '6NAC');
INSERT INTO `student` VALUES ('15BCE0034', 'Pamela', '', 'Nichols', '1996-03-23', 'Computer Science', 'M', 'F', '281', '18902', '9941346807', '2.41', '6NAC');
INSERT INTO `student` VALUES ('15BCE0035', 'Dennis', '', 'Burns', '1996-12-09', 'Computer Science', 'M', 'F', '281', '18902', '3646293243', '3.86', '6NAC');
INSERT INTO `student` VALUES ('15BCE0036', 'Victor', '', 'Freeman', '1996-05-07', 'Computer Science', 'M', 'L', '110', '18902', '5225339867', '9.82', '6AC');
INSERT INTO `student` VALUES ('15BCE0037', 'Pamela', '', 'Duncan', '1996-03-14', 'Computer Science', 'M', 'L', '110', '18902', '2903685499', '6.90', '6AC');
INSERT INTO `student` VALUES ('15BCE0038', 'Virginia', '', 'Howard', '1996-09-13', 'Computer Science', 'M', 'L', '110', '15204', '8885077289', '6.99', '6AC');
INSERT INTO `student` VALUES ('15BCE0039', 'Diana', '', 'Russell', '1997-10-18', 'Computer Science', 'M', 'L', '110', '15204', '8137523071', '8.00', '6AC');
INSERT INTO `student` VALUES ('15BCE0040', 'Paul', '', 'Castillo', '1997-10-08', 'Computer Science', 'M', 'L', '110', '15204', '7257112294', '2.85', '6AC');
INSERT INTO `student` VALUES ('15BCE0041', 'Albert', '', 'Weaver', '1997-10-09', 'Computer Science', 'M', 'L', '110', '15204', '1264299518', '4.01', '6AC');
INSERT INTO `student` VALUES ('15BCE0042', 'Sarah', '', 'Duncan', '1996-05-06', 'Computer Science', 'M', 'K', '1055', '15204', '6746141207', '8.08', '4AC');
INSERT INTO `student` VALUES ('15BCE0043', 'Ryan', '', 'Rice', '1997-10-20', 'Computer Science', 'M', 'K', '1055', '15204', '7519904493', '9.87', '4AC');
INSERT INTO `student` VALUES ('15BCE0044', 'John', '', 'Mills', '1997-07-18', 'Computer Science', 'M', 'K', '1055', '15205', '6093330071', '6.53', '4AC');
INSERT INTO `student` VALUES ('15BCE0045', 'Tina', 'Philip', 'Gilbert', '1996-12-31', 'Computer Science', 'M', 'K', '1055', '15205', '1367977321', '4.94', '4AC');
INSERT INTO `student` VALUES ('15BCE0046', 'Phillip', '', 'Nguyen', '1996-07-04', 'Computer Science', 'M', 'D', '522', '18902', '6202085853', '3.19', '2AC');
INSERT INTO `student` VALUES ('15BCE0047', 'Jean', '', 'Bailey', '1997-07-23', 'Computer Science', 'M', 'D', '522', '18902', '1301514075', '1.86', '2AC');
INSERT INTO `student` VALUES ('15BCE0048', 'Harry', '', 'Boyd', '1996-05-28', 'Computer Science', 'M', 'G', '298', '18902', '2312966275', '1.50', '1AC');
INSERT INTO `student` VALUES ('15BCE0049', 'Howard', '', 'Garrett', '1997-01-01', 'Computer Science', 'M', 'E', '1023', '18902', '7499084617', '4.87', '2NAC');
INSERT INTO `student` VALUES ('15BCE0050', 'Jennifer', '', 'Ortiz', '1998-01-26', 'Computer Science', 'M', 'E', '1023', '15204', '5866577915', '2.46', '2NAC');
INSERT INTO `student` VALUES ('15BCE0051', 'Howard', '', 'White', '1997-10-19', 'Computer Science', 'M', 'B', '841', '15204', '3889132993', '3.75', '4NAC');
INSERT INTO `student` VALUES ('15BCE0052', 'Ann', '', 'Hansen', '1997-06-30', 'Computer Science', 'M', 'B', '841', '15204', '3739276798', '4.21', '4NAC');
INSERT INTO `student` VALUES ('15BCE0053', 'Edward', '', 'Ortiz', '1995-10-13', 'Computer Science', 'M', 'B', '841', '15204', '2309190151', '3.60', '4NAC');
INSERT INTO `student` VALUES ('15BCE0054', 'Lillian', '', 'Fox', '1996-09-16', 'Computer Science', 'M', 'B', '841', '15204', '3801296440', '8.25', '4NAC');
INSERT INTO `student` VALUES ('15BCE0055', 'Roy', '', 'Ward', '1996-07-24', 'Computer Science', 'M', 'G', '774', '15204', '8977648435', '1.09', '4AC');
INSERT INTO `student` VALUES ('15BCE0056', 'Phillip', '', 'Jordan', '1996-08-19', 'Computer Science', 'M', 'G', '774', '15205', '8576892175', '3.08', '4AC');
INSERT INTO `student` VALUES ('15BCE0057', 'Lori', '', 'Bowman', '1996-05-08', 'Computer Science', 'M', 'G', '774', '15205', '5996309740', '2.38', '4AC');
INSERT INTO `student` VALUES ('15BCE0058', 'Brandon', '', 'Roberts', '1995-12-16', 'Computer Science', 'M', 'G', '774', '15205', '7527308810', '1.68', '4AC');
INSERT INTO `student` VALUES ('15BCE0059', 'Martin', '', 'Lee', '1996-03-29', 'Computer Science', 'M', null, null, null, '6048204753', '1.82', '');
INSERT INTO `student` VALUES ('15BCE0060', 'Carolyn', '', 'Ray', '1996-04-19', 'Computer Science', 'M', null, null, null, '7479147294', '6.35', '');
INSERT INTO `student` VALUES ('15BCE0061', 'Mark', '', 'Howell', '1996-01-04', 'Computer Science', 'M', null, null, null, '7992025279', '3.38', '');
INSERT INTO `student` VALUES ('15BCE0062', 'George', '', 'Jackson', '1996-08-23', 'Computer Science', 'M', null, null, null, '4153493934', '4.53', '');
INSERT INTO `student` VALUES ('15BCE0063', 'Phillip', '', 'Flores', '1995-12-20', 'Computer Science', 'M', 'D', '702', '15204', '3091342801', '7.70', '4AC');
INSERT INTO `student` VALUES ('15BCE0064', 'Jose', '', 'Jacobs', '1997-09-07', 'Computer Science', 'M', 'D', '702', '15204', '5184525606', '2.85', '4AC');
INSERT INTO `student` VALUES ('15BCE0065', 'Nancy', 'Augustus', 'Schmidt', '1996-08-01', 'Computer Science', 'M', 'D', '702', '15204', '4707465264', '9.46', '4AC');
INSERT INTO `student` VALUES ('15BCE0066', 'Antonio', '', 'Ellis', '1996-03-28', 'Computer Science', 'M', 'D', '702', '15204', '7183692370', '1.60', '4AC');
INSERT INTO `student` VALUES ('15BCE0067', 'Rebecca', '', 'Bowman', '1996-10-08', 'Computer Science', 'M', 'F', '597', '15204', '2324152667', '4.56', '6NAC');
INSERT INTO `student` VALUES ('15BCE0068', 'Barbara', '', 'Robertson', '1996-04-13', 'Computer Science', 'M', 'F', '597', '15204', '1518964394', '6.13', '6NAC');
INSERT INTO `student` VALUES ('15BCE0069', 'Phillip', '', 'Greene', '1996-06-27', 'Computer Science', 'M', 'F', '597', '15205', '4008815364', '8.47', '6NAC');
INSERT INTO `student` VALUES ('15BCE0070', 'Jason', '', 'Cole', '1996-11-24', 'Computer Science', 'M', 'F', '597', '15205', '5138644683', '8.02', '6NAC');
INSERT INTO `student` VALUES ('15BEC0001', 'Philip', '', 'Berry', '1996-12-19', 'Electronics and Communication', 'M', 'F', '597', '15205', '3367184777', '5.89', '6NAC');
INSERT INTO `student` VALUES ('15BEC0002', 'Maria', '', 'Duncan', '1997-11-06', 'Electronics and Communication', 'M', 'F', '597', '18902', '5005221386', '4.55', '6NAC');
INSERT INTO `student` VALUES ('15BEC0003', 'Lawrence', '', 'Bradley', '1995-10-07', 'Electronics and Communication', 'M', 'L', '258', '18902', '7506275501', '2.87', '2AC');
INSERT INTO `student` VALUES ('15BEC0004', 'Debra', '', 'Grant', '1997-03-13', 'Electronics and Communication', 'M', 'L', '258', '15205', '2893430912', '6.58', '2AC');
INSERT INTO `student` VALUES ('15BEC0005', 'Nancy', '', 'Williams', '1997-11-22', 'Electronics and Communication', 'M', 'A', '614', '18902', '1572975072', '4.04', '6NAC');
INSERT INTO `student` VALUES ('15BEC0006', 'Steve', '', 'Kim', '1998-01-06', 'Electronics and Communication', 'M', 'A', '157', '18902', '9371810916', '1.24', '6NAC');
INSERT INTO `student` VALUES ('15BEC0007', 'Lisa', '', 'Payne', '1996-05-15', 'Electronics and Communication', 'M', 'A', '157', '18902', '8867047323', '6.52', '6NAC');
INSERT INTO `student` VALUES ('15BEC0008', 'Carol', '', 'Morgan', '1997-03-25', 'Electronics and Communication', 'M', 'A', '157', '18902', '1655469847', '5.48', '6NAC');
INSERT INTO `student` VALUES ('15BEC0009', 'Donna', '', 'Alexander', '1995-11-03', 'Electronics and Communication', 'M', 'A', '157', '15204', '4918201085', '6.33', '6NAC');
INSERT INTO `student` VALUES ('15BEC0010', 'Jessica', '', 'Larson', '1997-10-23', 'Electronics and Communication', 'M', 'A', '157', '15204', '2752429154', '6.41', '6NAC');
INSERT INTO `student` VALUES ('15BEC0011', 'Angela', '', 'Adams', '1996-08-12', 'Electronics and Communication', 'M', 'E', '249', '15204', '3534211297', '9.81', '1AC');
INSERT INTO `student` VALUES ('15BEC0012', 'Jennifer', '', 'Alexander', '1996-11-04', 'Electronics and Communication', 'M', 'D', '280', '15204', '9229063366', '8.24', '6AC');
INSERT INTO `student` VALUES ('15BEC0013', 'Marie', '', 'Banks', '1997-09-04', 'Electronics and Communication', 'M', 'D', '280', '15204', '6428639486', '2.39', '6AC');
INSERT INTO `student` VALUES ('15BEC0014', 'Gerald', '', 'Hawkins', '1997-08-10', 'Electronics and Communication', 'M', 'D', '280', '15204', '2924292588', '3.52', '6AC');
INSERT INTO `student` VALUES ('15BEC0015', 'Michael', 'Douglas', 'Palmer', '1997-05-29', 'Electronics and Communication', 'M', 'D', '280', '15205', '9675019100', '9.98', '6AC');
INSERT INTO `student` VALUES ('15BEC0016', 'Carolyn', '', 'Dunn', '1996-09-25', 'Electronics and Communication', 'M', 'D', '280', '15205', '9867575881', '9.26', '6AC');
INSERT INTO `student` VALUES ('15BEC0017', 'Roy', '', 'Mccoy', '1997-02-05', 'Electronics and Communication', 'M', 'D', '280', '15205', '2538252169', '4.93', '6AC');
INSERT INTO `student` VALUES ('15BEC0018', 'Benjamin', '', 'Morales', '1997-04-28', 'Electronics and Communication', 'M', null, null, null, '2677652684', '4.77', '');
INSERT INTO `student` VALUES ('15BEC0019', 'Julie', '', 'Johnston', '1996-10-16', 'Electronics and Communication', 'M', null, null, null, '2124323779', '6.52', '');
INSERT INTO `student` VALUES ('15BEC0020', 'Carlos', '', 'Rivera', '1995-11-24', 'Electronics and Communication', 'M', null, null, null, '8096078900', '2.78', '');
INSERT INTO `student` VALUES ('15BEE0001', 'Tina', '', 'Morgan', '1996-11-15', 'Electronics and Electrical', 'M', null, null, null, '9149911175', '6.47', '');
INSERT INTO `student` VALUES ('15BEE0002', 'Carlos', '', 'Ramos', '1997-12-30', 'Electronics and Electrical', 'M', 'G', '1068', '15204', '7579327623', '6.54', '6AC');
INSERT INTO `student` VALUES ('15BEE0003', 'Craig', '', 'Fox', '1997-05-12', 'Electronics and Electrical', 'M', 'G', '1068', '15204', '7994351162', '5.03', '6AC');
INSERT INTO `student` VALUES ('15BEE0004', 'Laura', '', 'Fuller', '1997-09-08', 'Electronics and Electrical', 'M', 'G', '1068', '15204', '4687998447', '7.17', '6AC');
INSERT INTO `student` VALUES ('15BEE0005', 'Norma', '', 'Young', '1998-01-27', 'Electronics and Electrical', 'M', 'G', '1068', '15204', '2614010862', '2.15', '6AC');
INSERT INTO `student` VALUES ('15BEE0006', 'Samuel', '', 'Lewis', '1996-04-13', 'Electronics and Electrical', 'M', 'G', '1068', '15204', '5004512296', '7.33', '6AC');
INSERT INTO `student` VALUES ('15BEE0007', 'Richard', '', 'Murphy', '1997-04-20', 'Electronics and Electrical', 'M', 'G', '1068', '15204', '2952742267', '2.36', '6AC');
INSERT INTO `student` VALUES ('15BEE0008', 'Joan', '', 'Fox', '1997-10-22', 'Electronics and Electrical', 'M', 'F', '1072', '15205', '4145605571', '9.65', '6AC');
INSERT INTO `student` VALUES ('15BEE0009', 'Pamela', '', 'Henderson', '1997-02-19', 'Electronics and Electrical', 'M', 'F', '1072', '15205', '8102091034', '7.57', '6AC');
INSERT INTO `student` VALUES ('15BEE0010', 'Alice', '', 'Flores', '1997-06-23', 'Electronics and Electrical', 'M', 'F', '1072', '15205', '6769662192', '2.57', '6AC');
INSERT INTO `student` VALUES ('15BEE0011', 'Sean', '', 'Stewart', '1996-07-25', 'Electronics and Electrical', 'M', 'F', '1072', '18902', '7422637176', '3.45', '6AC');
INSERT INTO `student` VALUES ('15BEE0012', 'Roy', '', 'Smith', '1995-11-25', 'Electronics and Electrical', 'M', 'F', '1072', '18902', '1309012108', '6.17', '6AC');
INSERT INTO `student` VALUES ('15BEE0013', 'Donald', '', 'Johnson', '1997-01-30', 'Electronics and Electrical', 'M', 'F', '1072', '15205', '7155693195', '1.48', '6AC');
INSERT INTO `student` VALUES ('15BEE0014', 'Jonathan', 'Joss', 'Nelson', '1995-10-13', 'Electronics and Electrical', 'M', 'E', '557', '18902', '8523395358', '1.46', '4NAC');
INSERT INTO `student` VALUES ('15BEE0015', 'Marilyn', '', 'Nelson', '1996-07-16', 'Electronics and Electrical', 'M', 'E', '557', '18902', '1409663026', '2.29', '4NAC');
INSERT INTO `student` VALUES ('15BIT0001', 'Arthur', '', 'Hill', '1996-12-17', 'Information and Technology', 'M', 'E', '557', '18902', '2879871598', '6.08', '4NAC');
INSERT INTO `student` VALUES ('15BIT0002', 'Nicholas', '', 'Rice', '1996-06-15', 'Information and Technology', 'M', 'E', '557', '18902', '4224387359', '3.94', '4NAC');
INSERT INTO `student` VALUES ('15BIT0003', 'Arthur', '', 'Powell', '1997-11-21', 'Information and Technology', 'M', 'L', '652', '15204', '7996608704', '6.19', '6AC');
INSERT INTO `student` VALUES ('15BIT0004', 'Susan', '', 'Cruz', '1997-01-26', 'Information and Technology', 'M', 'L', '652', '15204', '9041665237', '7.45', '6AC');
INSERT INTO `student` VALUES ('15BIT0005', 'Matthew', '', 'Kennedy', '1996-03-30', 'Information and Technology', 'M', 'L', '652', '15204', '9496181507', '8.71', '6AC');
INSERT INTO `student` VALUES ('15BIT0006', 'Lisa', '', 'Chapman', '1997-05-27', 'Information and Technology', 'M', 'L', '652', '15204', '1755974929', '9.65', '6AC');
INSERT INTO `student` VALUES ('15BIT0007', 'Donna', '', 'Garcia', '1996-01-02', 'Information and Technology', 'M', 'L', '652', '15204', '4962634747', '4.93', '6AC');
INSERT INTO `student` VALUES ('15BIT0008', 'Raymond', '', 'Warren', '1997-05-03', 'Information and Technology', 'M', 'L', '652', '15204', '3979753770', '2.07', '6AC');
INSERT INTO `student` VALUES ('15BIT0009', 'Kenneth', 'Richard', 'Phillips', '1998-01-08', 'Information and Technology', 'M', 'A', '581', '15205', '2011728662', '5.70', '4AC');
INSERT INTO `student` VALUES ('15BIT0010', 'Raymond', '', 'Garcia', '1997-04-29', 'Information and Technology', 'M', 'A', '581', '15205', '6483094241', '9.33', '4AC');
INSERT INTO `student` VALUES ('15BIT0011', 'Steve', '', 'Cooper', '1996-06-15', 'Information and Technology', 'M', 'A', '581', '15205', '5847290633', '1.41', '4AC');
INSERT INTO `student` VALUES ('15BIT0012', 'Margaret', '', 'Porter', '1996-01-20', 'Information and Technology', 'M', 'A', '581', '15205', '8875606076', '7.77', '4AC');
INSERT INTO `student` VALUES ('15BIT0013', 'Terry', '', 'Tucker', '1996-08-12', 'Information and Technology', 'M', 'C', '375', '15204', '1136236433', '4.04', '4AC');
INSERT INTO `student` VALUES ('15BIT0014', 'Shirley', '', 'Hayes', '1996-07-24', 'Information and Technology', 'M', 'C', '375', '18902', '9872092327', '3.67', '4AC');
INSERT INTO `student` VALUES ('15BIT0015', 'Joan', '', 'Vasquez', '1997-09-13', 'Information and Technology', 'M', 'C', '375', '18902', '7067728748', '4.70', '4AC');
INSERT INTO `student` VALUES ('15BIT0016', 'Jacqueline', '', 'Banks', '1996-12-08', 'Information and Technology', 'M', 'C', '375', '15204', '3405286847', '5.73', '4AC');
INSERT INTO `student` VALUES ('15BIT0017', 'Karen', '', 'Russell', '1996-04-16', 'Information and Technology', 'M', 'D', '223', '18902', '3862141910', '6.93', '6NAC');
INSERT INTO `student` VALUES ('15BIT0018', 'Randy', '', 'Brooks', '1996-03-19', 'Information and Technology', 'M', 'D', '223', '15204', '3375287191', '8.61', '6NAC');
INSERT INTO `student` VALUES ('15BIT0019', 'Christine', '', 'Black', '1996-08-23', 'Information and Technology', 'M', 'D', '223', '15204', '6452571187', '2.91', '6NAC');
INSERT INTO `student` VALUES ('15BIT0020', 'Patrick', '', 'Day', '1995-11-20', 'Information and Technology', 'M', 'D', '223', '15204', '6822990913', '8.87', '6NAC');
INSERT INTO `student` VALUES ('15BIT0021', 'Margaret', 'Hamish', 'Carpenter', '1996-02-21', 'Information and Technology', 'M', 'D', '223', '15204', '7312863238', '5.49', '6NAC');
INSERT INTO `student` VALUES ('15BME0001', 'Christine', '', 'Howell', '1997-04-27', 'Mechanical', 'M', null, null, null, '1184987759', '2.00', '');
INSERT INTO `student` VALUES ('15BME0002', 'Carolyn', '', 'Hudson', '1998-01-27', 'Mechanical', 'M', 'L', '808', '15204', '6602314874', '3.45', '6AC');
INSERT INTO `student` VALUES ('15BME0003', 'Martin', '', 'Stanley', '1996-04-15', 'Mechanical', 'M', 'L', '808', '15204', '9274073402', '3.05', '6AC');
INSERT INTO `student` VALUES ('15BME0004', 'Tammy', 'Osborne', 'Hamilton', '1995-10-30', 'Mechanical', 'M', 'L', '808', '15204', '7896023641', '4.16', '6AC');
INSERT INTO `student` VALUES ('15BME0005', 'Albert', '', 'Wilson', '1995-10-21', 'Mechanical', 'M', 'L', '808', '15204', '7343014415', '4.36', '6AC');
INSERT INTO `student` VALUES ('15BME0006', 'Emily', '', 'Turner', '1998-01-16', 'Mechanical', 'M', 'L', '808', '15204', '7163549132', '8.72', '6AC');
INSERT INTO `student` VALUES ('15BME0007', 'Jonathan', '', 'Chapman', '1996-05-28', 'Mechanical', 'M', 'L', '808', '15204', '2512934786', '6.06', '6AC');
INSERT INTO `student` VALUES ('15BME0008', 'Jeremy', '', 'Morris', '1995-12-02', 'Mechanical', 'M', 'L', '808', '15205', '4239180487', '5.89', '6AC');
INSERT INTO `student` VALUES ('15BME0009', 'Adam', 'Peter', 'Daniels', '1996-01-19', 'Mechanical', 'M', 'G', '582', '15205', '2576355984', '6.45', '4NAC');
INSERT INTO `student` VALUES ('15BME0010', 'Samuel', '', 'Chapman', '1996-04-20', 'Mechanical', 'M', 'G', '582', '15205', '2892227991', '6.87', '4NAC');
INSERT INTO `student` VALUES ('15BME0011', 'Judith', '', 'Crawford', '1997-04-01', 'Mechanical', 'M', 'G', '582', '18902', '9925153280', '6.95', '4NAC');
INSERT INTO `student` VALUES ('15BME0012', 'Linda', '', 'Oliver', '1997-04-23', 'Mechanical', 'M', 'G', '582', '18902', '8199812037', '1.04', '4NAC');
INSERT INTO `student` VALUES ('15BME0013', 'Scott', '', 'Washington', '1996-12-15', 'Mechanical', 'M', 'C', '888', '18902', '9035589772', '9.40', '4NAC');
INSERT INTO `student` VALUES ('15BME0014', 'Paul', '', 'Lopez', '1996-09-21', 'Mechanical', 'M', 'C', '888', '18902', '3794916627', '2.87', '4NAC');
INSERT INTO `student` VALUES ('15BME0015', 'Jane', '', 'West', '1997-05-25', 'Mechanical', 'M', 'C', '888', '15204', '7668451157', '4.53', '4NAC');
INSERT INTO `student` VALUES ('15BME0016', 'Sarah', '', 'Harvey', '1996-02-22', 'Mechanical', 'M', 'C', '888', '15204', '2445082523', '3.76', '4NAC');
INSERT INTO `student` VALUES ('15BME0017', 'Kelly', '', 'Mills', '1996-05-11', 'Mechanical', 'M', 'C', '621', '15204', '3213457756', '1.81', '2NAC');
INSERT INTO `student` VALUES ('15BME0018', 'Anthony', '', 'Graham', '1997-10-10', 'Mechanical', 'M', 'C', '621', '15204', '7637997981', '2.42', '2NAC');
INSERT INTO `student` VALUES ('15BME0019', 'Beverly', '', 'Gutierrez', '1997-05-23', 'Mechanical', 'M', 'D', '84', '15204', '6393141477', '1.29', '1AC');
INSERT INTO `student` VALUES ('15BME0020', 'Lawrence', 'Parker', 'Welch', '1998-01-04', 'Mechanical', 'M', 'E', '613', '15204', '6531592577', '8.75', '4AC');
INSERT INTO `student` VALUES ('15BME0021', 'Edward', '', 'Howell', '1996-08-03', 'Mechanical', 'M', 'E', '613', '15205', '4593399018', '3.25', '4AC');
INSERT INTO `student` VALUES ('15BME0022', 'Willie', '', 'Larson', '1997-10-09', 'Mechanical', 'M', 'E', '613', '15205', '2993319097', '7.50', '4AC');
INSERT INTO `student` VALUES ('15BME0023', 'Rose', '', 'Ellis', '1996-12-24', 'Mechanical', 'M', 'E', '613', '15205', '9629676181', '6.59', '4AC');
INSERT INTO `student` VALUES ('15BME0024', 'Carl', '', 'Lewis', '1996-11-21', 'Mechanical', 'M', null, null, null, '2091968346', '3.45', '');
INSERT INTO `student` VALUES ('15BME0025', 'Rachel', '', 'Evans', '1997-07-25', 'Mechanical', 'M', null, null, null, '8175384583', '7.64', '');
INSERT INTO `student` VALUES ('15BME0026', 'Charles', '', 'Nichols', '1996-05-26', 'Mechanical', 'M', null, null, null, '8477805571', '6.50', '');
SET FOREIGN_KEY_CHECKS=1;
