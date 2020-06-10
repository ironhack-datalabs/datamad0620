-- MySQL Workbench Forward Engineering
USE lab_mysql;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Car dealership
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Car dealership
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Car dealership` DEFAULT CHARACTER SET utf8 ;
USE `Car dealership` ;

-- -----------------------------------------------------
-- Table `Car dealership`.`Car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car dealership`.`Car` (
  `vin_number` INT NOT NULL,
  `manufacturer` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `year` VARCHAR(45) NULL,
  `color` VARCHAR(45) NULL,
  PRIMARY KEY (`vin_number`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Car dealership`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car dealership`.`Customer` (
  `customer_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `phone_number` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state_province` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip_code` VARCHAR(45) NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Car dealership`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car dealership`.`Salesperson` (
  `staff_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `store` VARCHAR(45) NULL,
  PRIMARY KEY (`staff_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Car dealership`.`Invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car dealership`.`Invoice` (
  `invoice_num` INT NOT NULL,
  `date` DATETIME NULL,
  `Car_vin_number` INT NOT NULL,
  `Customer_customer_id` INT NOT NULL,
  `Salesperson_staff_id1` INT NOT NULL,
  PRIMARY KEY (`invoice_num`, `Car_vin_number`, `Customer_customer_id`, `Salesperson_staff_id1`),
  INDEX `fk_Invoice_Car_idx` (`Car_vin_number` ASC) VISIBLE,
  INDEX `fk_Invoice_Customer1_idx` (`Customer_customer_id` ASC) VISIBLE,
  INDEX `fk_Invoice_Salesperson2_idx` (`Salesperson_staff_id1` ASC) VISIBLE,
  CONSTRAINT `fk_Invoice_Car`
    FOREIGN KEY (`Car_vin_number`)
    REFERENCES `Car dealership`.`Car` (`vin_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoice_Customer1`
    FOREIGN KEY (`Customer_customer_id`)
    REFERENCES `Car dealership`.`Customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoice_Salesperson2`
    FOREIGN KEY (`Salesperson_staff_id1`)
    REFERENCES `Car dealership`.`Salesperson` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
