-- Data Definition Language - Statement for tblgrantedpermissions
-- Gallery Database System - Iteration 1
-- github.com/tomquinn04/nea3.2design
-- (c) Tom Quinn 2022

CREATE TABLE `tblgrantedpermissions` (
	`username` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`permissionID` INT(11) NOT NULL,
	`permissionValue` BINARY(1) NOT NULL DEFAULT '1',
	PRIMARY KEY (`username`, `permissionID`) USING BTREE,
	INDEX `fkpermission` (`permissionID`) USING BTREE,
	CONSTRAINT `fkpermission` FOREIGN KEY (`permissionID`) REFERENCES `gallerydb`.`tblpermissions` (`permissionID`) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT `fkusername` FOREIGN KEY (`username`) REFERENCES `gallerydb`.`tblauth` (`authUsername`) ON UPDATE CASCADE ON DELETE CASCADE
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;
