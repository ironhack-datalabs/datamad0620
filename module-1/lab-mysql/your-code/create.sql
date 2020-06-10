-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema lab-mysql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab-mysql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab-mysql` DEFAULT CHARACTER SET utf8 ;
USE `lab-mysql` ;

-- -----------------------------------------------------
-- Table `lab-mysql`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab-mysql`.`Cars` (
  `idCars` INT NOT NULL,
  `VIN` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` YEAR(4) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCars`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab-mysql`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab-mysql`.`Invoices` (
  `idInvoices` INT NOT NULL AUTO_INCREMENT,
  `invoice_number` VARCHAR(45) NOT NULL,
  `date` DATETIME NOT NULL,
  `car` VARCHAR(45) NOT NULL,
  `customer` VARCHAR(45) NOT NULL,
  `salesperson` VARCHAR(45) NOT NULL,
  `Cars_idCars` INT NULL,
  PRIMARY KEY (`idInvoices`),
  INDEX `fk_Invoices_Cars1_idx` (`Cars_idCars` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`Cars_idCars`)
    REFERENCES `lab-mysql`.`Cars` (`idCars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab-mysql`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab-mysql`.`Customers` (
  `idCustomers` INT NOT NULL AUTO_INCREMENT,
  `Customer_id` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone_number` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `province` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `zip_code` VARCHAR(45) NOT NULL,
  `Invoices_idInvoices1` INT NULL,
  PRIMARY KEY (`idCustomers`),
  INDEX `fk_Customers_Invoices1_idx` (`Invoices_idInvoices1` ASC) VISIBLE,
  CONSTRAINT `fk_Customers_Invoices1`
    FOREIGN KEY (`Invoices_idInvoices1`)
    REFERENCES `lab-mysql`.`Invoices` (`idInvoices`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab-mysql`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab-mysql`.`Salesperson` (
  `idSalesperson` INT NOT NULL AUTO_INCREMENT,
  `staff_ID` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  `Invoices_idInvoices` INT NULL,
  PRIMARY KEY (`idSalesperson`),
  INDEX `fk_Salesperson_Invoices1_idx` (`Invoices_idInvoices` ASC) VISIBLE,
  CONSTRAINT `fk_Salesperson_Invoices1`
    FOREIGN KEY (`Invoices_idInvoices`)
    REFERENCES `lab-mysql`.`Invoices` (`idInvoices`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
