
USE lab_mysql;
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_mysql` DEFAULT CHARACTER SET latin1 ;
USE `lab_mysql` ;

-- -----------------------------------------------------
-- Table `lab_mysql`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Salesperson` (
  `idSalesperson` INT NOT NULL,
  `staff_id` INT NULL,
  `store` VARCHAR(45) NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`idSalesperson`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Customer` (
  `idCustomer` INT NOT NULL,
  `name_surname` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `Customercol` INT NULL,
  `email_address` VARCHAR(45) NULL,
  `zip_code` VARCHAR(45) NULL,
  `Salesperson_idSalesperson` INT NOT NULL,
  PRIMARY KEY (`idCustomer`),
  INDEX `fk_Customer_Salesperson1_idx` (`Salesperson_idSalesperson` ASC),
  CONSTRAINT `fk_Customer_Salesperson1`
    FOREIGN KEY (`Salesperson_idSalesperson`)
    REFERENCES `lab_mysql`.`Salesperson` (`idSalesperson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Invoice` (
  `idInvoice` INT NOT NULL,
  `date` VARCHAR(45) NULL,
  `Customer_idCustomer` INT NOT NULL,
  PRIMARY KEY (`idInvoice`),
  INDEX `fk_Invoice_Customer1_idx` (`Customer_idCustomer` ASC),
  CONSTRAINT `fk_Invoice_Customer1`
    FOREIGN KEY (`Customer_idCustomer`)
    REFERENCES `lab_mysql`.`Customer` (`idCustomer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Car` (
  `idCar` INT NOT NULL,
  `model` VARCHAR(45) NULL,
  `brand` VARCHAR(45) NULL,
  `fabrication_date` DATETIME NULL,
  `details` VARCHAR(45) NULL,
  `color` VARCHAR(45) NULL,
  `Invoice_idInvoice` INT NOT NULL,
  `Customer_idCustomer` INT NOT NULL,
  `Salesperson_idSalesperson` INT NOT NULL,
  PRIMARY KEY (`idCar`),
  UNIQUE INDEX `idCar_UNIQUE` (`idCar` ASC),
  INDEX `fk_Car_Invoice_idx` (`Invoice_idInvoice` ASC),
  INDEX `fk_Car_Customer1_idx` (`Customer_idCustomer` ASC),
  INDEX `fk_Car_Salesperson1_idx` (`Salesperson_idSalesperson` ASC),
  CONSTRAINT `fk_Car_Invoice`
    FOREIGN KEY (`Invoice_idInvoice`)
    REFERENCES `lab_mysql`.`Invoice` (`idInvoice`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Car_Customer1`
    FOREIGN KEY (`Customer_idCustomer`)
    REFERENCES `lab_mysql`.`Customer` (`idCustomer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Car_Salesperson1`
    FOREIGN KEY (`Salesperson_idSalesperson`)
    REFERENCES `lab_mysql`.`Salesperson` (`idSalesperson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
