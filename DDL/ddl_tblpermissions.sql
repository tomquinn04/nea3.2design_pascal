-- Data Definition Language - Statement for tblpermissions
-- Gallery Database System - Iteration 1
-- github.com/tomquinn04/nea3.2design
-- (c) Tom Quinn 2022

CREATE TABLE `tblpermissions` (
	`permissionID` INT(11) NOT NULL AUTO_INCREMENT,
	`permissionDescription` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	PRIMARY KEY (`permissionID`) USING BTREE
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;
