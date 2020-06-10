--- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cars` (
  `cars_id` INT NOT NULL AUTO_INCREMENT,
  `vehicle_VIH` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `year` INT NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cars_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 114
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `customer_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone` INT NOT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state/province` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `zip` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 82
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`salespersons` (
  `sales_id` INT NOT NULL AUTO_INCREMENT,
  `staff_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`sales_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 153
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`invoices` (
  `invoice_id` INT NOT NULL AUTO_INCREMENT,
  `invoice_num` INT NOT NULL,
  `date` VARCHAR(45) NOT NULL,
  `cars_id` INT NOT NULL,
  `id` INT NOT NULL,
  `sales_id` INT NOT NULL,
  PRIMARY KEY (`invoice_id`),
  INDEX `fk_invoices_cars_idx` (`cars_id` ASC),
  INDEX `fk_invoices_customers1_idx` (`id` ASC),
  INDEX `fk_invoices_salespersons1_idx` (`sales_id` ASC),
  CONSTRAINT `fk_invoices_cars`
    FOREIGN KEY (`cars_id`)
    REFERENCES `mydb`.`cars` (`cars_id`),
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`id`)
    REFERENCES `mydb`.`customers` (`id`),
  CONSTRAINT `fk_invoices_salespersons1`
    FOREIGN KEY (`sales_id`)
    REFERENCES `mydb`.`salespersons` (`sales_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


INSERT INTO customers (customer_id, name, phone, email, address, city, `state/province`, country , zip) VALUES ('10001', 	'Pablo Picasso',	'636176382',  NULL	,' Paseo de la Chopera, 14',	'Madrid', 'Madrid',	'Spain',	'28045'),
('20001',	'Abraham Lincoln',	' 359077086',	NULL, 	'120 SW 8th St', 'Miami',	'Florida',	'United States',	'33130'),
('30001',	'Napoléon Bonaparte',	'179754000', NULL,	'40 Rue du Colisée',	'Paris',	'Île-de-France',	'France',	'75008');

INSERT INTO salespersons (staff_id, name, store)  VALUES ('00001',	'Petey Cruiser',	'Madrid'),
('00002',	'Anna Sthesia', 	'Barcelona'),
('00003',	'Paul Molive', 	'Berlin'),
('00004',	'Gail Forcewind',	'Paris'),
('00005',	'Paige Turner',	'Mimia'),
('00006', 'Bob Frapples',	'Mexico City'),
('00007',	'Walter Melon',	'Amsterdam'),
('00008',	'Shonda Leer',	'São Paulo');

INSERT INTO invoices (invoice_num, date,  cars_id ,  id ,  sales_id ) VALUES ('852399038',	'22-08-2018', 0 ,1, 3),
('731166526',	'31-12-2018', 3, 0, 5),
('271135104',	'22-01-2019', 2, 2, 7);

INSERT INTO cars (vehicle_VIH, manufacturer, model, year, color) VALUES ('3K096I98581DHSNUP', 'Volkswagen',	'Tiguan',	'2019',	'Blue'),
('ZM8G7BEUQZ97IH46V',	'Peugeot' , 'Rifter	', '2019	', 'Red'),
('RKXVNNIHLVVZOUB4M',	'Ford',	'Fusion',	'2018', 'White'),
('HKNDGS7CU31E9Z7JW',	'Toyota', 'RAV4',	'2018',	'Silver'),
('DAM41UDN3CHU2WVF6',	'Volvo',	'V60', '2019', 'Gray'),
('DAM41UDN3CHU2WVF6',	'Volvo',	'V60 Cross Country',	'2019',	'Gray');

