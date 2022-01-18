-- Data Definition Language - Statement for tblproducts
-- Gallery Database System - Iteration 1
-- github.com/tomquinn04/nea3.2design
-- (c) Tom Quinn 2022

CREATE TABLE `tbltransactions` (
	`transactionID` INT(11) NOT NULL AUTO_INCREMENT,
	`productID` INT(11) NOT NULL,
	`stockAdjustment` INT(11) NOT NULL,
	`transactionDate` DATE NOT NULL,
	PRIMARY KEY (`transactionID`) USING BTREE,
	INDEX `productID` (`productID`) USING BTREE,
	CONSTRAINT `productID` FOREIGN KEY (`productID`) REFERENCES `gallerydb`.`tblproducts` (`productID`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;
