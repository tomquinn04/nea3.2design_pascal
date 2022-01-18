-- Data Definition Language - Statement for tblproducts
-- Gallery Database System - Iteration 1
-- github.com/tomquinn04/nea3.2design
-- (c) Tom Quinn 2022

CREATE TABLE `tblproducts` (
	`productID` INT(11) NOT NULL AUTO_INCREMENT,
	`artistID` INT(11) NOT NULL,
	`productDescription` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`productNotes` TEXT NOT NULL COLLATE 'latin1_swedish_ci',
	`productSalePrice` DECIMAL(4,2) NOT NULL DEFAULT '0.00',
	`productArtistCommission` DECIMAL(4,2) NOT NULL DEFAULT '0.00',
	`productGalleryCommission` DECIMAL(4,2) NOT NULL DEFAULT '0.00',
	PRIMARY KEY (`productID`) USING BTREE,
	INDEX `artistID` (`artistID`) USING BTREE,
	CONSTRAINT `artistID` FOREIGN KEY (`artistID`) REFERENCES `gallerydb`.`tblartists` (`artistID`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;
