-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Concesionarios
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Concesionarios
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Concesionarios` DEFAULT CHARACTER SET utf8 ;
USE `Concesionarios` ;

-- -----------------------------------------------------
-- Table `Concesionarios`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Concesionarios`.`cars` (
  `VIN` INT NOT NULL,
  `manufacturer` VARCHAR(25) NOT NULL,
  `model` VARCHAR(25) NOT NULL,
  `year` DATE NOT NULL,
  `color` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`VIN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Concesionarios`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Concesionarios`.`customers` (
  `customerID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone number` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL,
  `address` TEXT(20) NOT NULL,
  `city` TEXT(20) NOT NULL,
  `state/province` TEXT(20) NOT NULL,
  `country` TEXT(2) NOT NULL,
  `zip/postal_code` TEXT(2) NOT NULL,
  PRIMARY KEY (`customerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Concesionarios`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Concesionarios`.`Salespersons` (
  `staff_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`staff_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Concesionarios`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Concesionarios`.`invoices` (
  `invoice_number` INT NOT NULL,
  `date` DATE NOT NULL,
  `customers_customerID` INT NOT NULL,
  `Salespersons_staff_id` INT NOT NULL,
  `cars_VIN` INT NOT NULL,
  PRIMARY KEY (`invoice_number`, `customers_customerID`, `Salespersons_staff_id`, `cars_VIN`),
  INDEX `fk_invoices_customers1_idx` (`customers_customerID` ASC) VISIBLE,
  INDEX `fk_invoices_Salespersons1_idx` (`Salespersons_staff_id` ASC) VISIBLE,
  INDEX `fk_invoices_cars1_idx` (`cars_VIN` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_customerID`)
    REFERENCES `Concesionarios`.`customers` (`customerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_staff_id`)
    REFERENCES `Concesionarios`.`Salespersons` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_cars1`
    FOREIGN KEY (`cars_VIN`)
    REFERENCES `Concesionarios`.`cars` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;