-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_mysql` DEFAULT CHARACTER SET utf8 ;
USE `lab_mysql` ;

-- -----------------------------------------------------
-- Table `lab_mysql`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Cars` (
  `VIN` INT NOT NULL,
  `manufacturer` VARCHAR(45) NULL,
  `year` INT NULL,
  `model` VARCHAR(45) NULL,
  `color` VARCHAR(45) NULL,
  UNIQUE INDEX `VIN_UNIQUE` (`VIN` ASC) VISIBLE,
  PRIMARY KEY (`VIN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Sales Person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Sales Person` (
  `idperson` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  PRIMARY KEY (`idperson`),
  UNIQUE INDEX `idperson_UNIQUE` (`idperson` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Costumer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Costumer` (
  `idCostumer` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `phone` INT NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `adress` VARCHAR(45) NULL,
  `zip_code` VARCHAR(45) NULL,
  PRIMARY KEY (`idCostumer`),
  UNIQUE INDEX `phone_UNIQUE` (`phone` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`invoices` (
  `invoiceid` INT NOT NULL,
  `date` DATETIME NULL,
  `car` VARCHAR(45) NULL,
  `costumer` VARCHAR(45) NULL,
  `salesperson` VARCHAR(45) NULL,
  `Sales Person_idperson` INT NOT NULL,
  `Costumer_idCostumer` INT NOT NULL,
  `Cars_VIN` INT NOT NULL,
  PRIMARY KEY (`invoiceid`),
  INDEX `fk_invoices_Sales Person_idx` (`Sales Person_idperson` ASC) VISIBLE,
  INDEX `fk_invoices_Costumer1_idx` (`Costumer_idCostumer` ASC) VISIBLE,
  INDEX `fk_invoices_Cars1_idx` (`Cars_VIN` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_Sales Person`
    FOREIGN KEY (`Sales Person_idperson`)
    REFERENCES `lab_mysql`.`Sales Person` (`idperson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_Costumer1`
    FOREIGN KEY (`Costumer_idCostumer`)
    REFERENCES `lab_mysql`.`Costumer` (`idCostumer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_Cars1`
    FOREIGN KEY (`Cars_VIN`)
    REFERENCES `lab_mysql`.`Cars` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`invoices_has_Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`invoices_has_Cars` (
  `invoices_invoiceid` INT NOT NULL,
  `Cars_VIN` INT NOT NULL,
  PRIMARY KEY (`invoices_invoiceid`, `Cars_VIN`),
  INDEX `fk_invoices_has_Cars_Cars1_idx` (`Cars_VIN` ASC) VISIBLE,
  INDEX `fk_invoices_has_Cars_invoices1_idx` (`invoices_invoiceid` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_has_Cars_invoices1`
    FOREIGN KEY (`invoices_invoiceid`)
    REFERENCES `lab_mysql`.`invoices` (`invoiceid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_has_Cars_Cars1`
    FOREIGN KEY (`Cars_VIN`)
    REFERENCES `lab_mysql`.`Cars` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;




