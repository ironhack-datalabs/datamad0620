-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Company_cars
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Company_cars
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Company_cars` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema Company_cars
-- -----------------------------------------------------
USE `Company_cars` ;

-- -----------------------------------------------------
-- Table `Company_cars`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Company_cars`.`Salespersons` (
  `ID` INT NOT NULL,
  `staff id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Company_cars`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Company_cars`.`Invoices` (
  `ID` INT NOT NULL,
  `number` INT NOT NULL,
  `date` VARCHAR(45) NOT NULL,
  `car` INT NOT NULL,
  `customer` INT NOT NULL,
  `salesperson` INT NOT NULL,
  `Salespersons_ID` INT NOT NULL,
  PRIMARY KEY (`ID`, `Salespersons_ID`),
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_ID`)
    REFERENCES `mydb`.`Salespersons` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Company_cars`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Company_cars`.`Cars` (
  `ID` INT NOT NULL,
  `VIN` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` YEAR(4) NULL,
  `color` VARCHAR(45) NULL,
  `Invoices_ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_Cars_Invoices_idx` (`Invoices_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_Invoices`
    FOREIGN KEY (`Invoices_ID`)
    REFERENCES `mydb`.`Invoices` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Company_cars`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Company_cars`.`Customers` (
  `ID` INT NOT NULL,
  `customer ID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone number` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NOT NULL,
  `state/province` VARCHAR(45) NULL,
  `country` VARCHAR(45) NOT NULL,
  `zip/postal code` INT NOT NULL,
  `Invoices_ID` INT NOT NULL,
  `Invoices_Salespersons_ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_Customers_Invoices1_idx` (`Invoices_ID` ASC, `Invoices_Salespersons_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Customers_Invoices1`
    FOREIGN KEY (`Invoices_ID` , `Invoices_Salespersons_ID`)
    REFERENCES `mydb`.`Invoices` (`ID` , `Salespersons_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
