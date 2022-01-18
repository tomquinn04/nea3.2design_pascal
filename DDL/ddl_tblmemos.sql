-- Data Definition Language - Statement for tblmemos
-- Gallery Database System - Iteration 1
-- github.com/tomquinn04/nea3.2design
-- (c) Tom Quinn 2022

CREATE TABLE `tblmemos` (
	`memoID` INT(11) NOT NULL AUTO_INCREMENT,
	`memoDate` DATE NOT NULL,
	`memoText` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	PRIMARY KEY (`memoID`) USING BTREE
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;

