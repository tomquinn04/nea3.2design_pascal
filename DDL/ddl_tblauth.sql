-- Data Definition Language - Statement for tblauth
-- Gallery Database System - Iteration 1
-- github.com/tomquinn04/nea3.2design
-- (c) Tom Quinn 2022

CREATE TABLE `tblauth` (
	`authUsername` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`authPassword` VARCHAR(256) NOT NULL COLLATE 'latin1_swedish_ci',
	`dbAuthUsername` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`dbAuthPassword` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	PRIMARY KEY (`authUsername`) USING BTREE
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;
