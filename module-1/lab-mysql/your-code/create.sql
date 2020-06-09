-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema dealership
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dealership
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dealership` DEFAULT CHARACTER SET utf8 ;
USE `dealership` ;

-- -----------------------------------------------------
-- Table `dealership`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dealership`.`Cars` (
  `idCars` INT NOT NULL,
  `VIH` CHAR(7) NOT NULL,
  `manufacturer` VARCHAR(20) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` INT NOT NULL,
  `color` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`idCars`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dealership`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dealership`.`Customers` (
  `idCustomers` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone_number` CHAR(12) NOT NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(20) NULL,
  `state` CHAR(2) NULL,
  `country` VARCHAR(45) NULL,
  `zip` CHAR(5) NULL,
  PRIMARY KEY (`idCustomers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dealership`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dealership`.`salesperson` (
  `idsalesperson` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idsalesperson`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dealership`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dealership`.`Invoices` (
  `idInvoices` INT NOT NULL,
  `date` DATETIME NOT NULL,
  `idCars` INT NOT NULL,
  `idCustomers` INT NOT NULL,
  `idsalesperson` INT NOT NULL,
  PRIMARY KEY (`idInvoices`, `idCars`, `idsalesperson`),
  INDEX `fk_Invoices_Cars1_idx` (`idCars` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`idCustomers` ASC) VISIBLE,
  INDEX `fk_Invoices_salesperson1_idx` (`idsalesperson` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`idCars`)
    REFERENCES `dealership`.`Cars` (`idCars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`idCustomers`)
    REFERENCES `dealership`.`Customers` (`idCustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_salesperson1`
    FOREIGN KEY (`idsalesperson`)
    REFERENCES `dealership`.`salesperson` (`idsalesperson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
