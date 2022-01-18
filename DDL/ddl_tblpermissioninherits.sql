-- Data Definition Language - Statement for tblpermissioninherits
-- Gallery Database System - Iteration 1
-- github.com/tomquinn04/nea3.2design
-- (c) Tom Quinn 2022

CREATE TABLE `tblpermissioninherits` (
	`parentPermission` INT(11) NOT NULL,
	`childPermission` INT(11) NOT NULL,
	PRIMARY KEY (`parentPermission`, `childPermission`) USING BTREE,
	INDEX `FK__tblpermissions` (`childPermission`) USING BTREE,
	CONSTRAINT `FK__tblpermissions` FOREIGN KEY (`childPermission`) REFERENCES `gallerydb`.`tblpermissions` (`permissionID`) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT `pare` FOREIGN KEY (`parentPermission`) REFERENCES `gallerydb`.`tblpermissions` (`permissionID`) ON UPDATE CASCADE ON DELETE CASCADE
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;
