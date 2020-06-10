{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf600
{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab560
\pard\pardeftab560\slleading20\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- MySQL Workbench Forward Engineering\
\
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;\
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;\
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';\
\
-- -----------------------------------------------------\
-- Schema lab_mysql\
-- -----------------------------------------------------\
\
-- -----------------------------------------------------\
-- Schema lab_mysql\
-- -----------------------------------------------------\
CREATE SCHEMA IF NOT EXISTS `lab_mysql` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;\
USE `lab_mysql` ;\
\
-- -----------------------------------------------------\
-- Table `lab_mysql`.`Cars`\
-- -----------------------------------------------------\
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Cars` (\
  `idCars` INT NOT NULL,\
  `vin` VARCHAR(45) NOT NULL,\
  `manufacturer` VARCHAR(45) NOT NULL,\
  `model` VARCHAR(45) NOT NULL,\
  `color` VARCHAR(45) NOT NULL,\
  PRIMARY KEY (`idCars`))\
ENGINE = InnoDB\
DEFAULT CHARACTER SET = utf8mb4\
COLLATE = utf8mb4_0900_ai_ci;\
\
\
-- -----------------------------------------------------\
-- Table `lab_mysql`.`Customers`\
-- -----------------------------------------------------\
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Customers` (\
  `idCustomers` INT NOT NULL,\
  `name` VARCHAR(45) NOT NULL,\
  `phone_number` VARCHAR(45) NOT NULL,\
  `email` VARCHAR(45) NOT NULL,\
  `country` VARCHAR(45) NOT NULL,\
  `city` VARCHAR(45) NOT NULL,\
  `address` VARCHAR(45) NOT NULL,\
  PRIMARY KEY (`idCustomers`))\
ENGINE = InnoDB\
DEFAULT CHARACTER SET = utf8mb4\
COLLATE = utf8mb4_0900_ai_ci;\
\
\
-- -----------------------------------------------------\
-- Table `lab_mysql`.`Cars_has_Customers`\
-- -----------------------------------------------------\
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Cars_has_Customers` (\
  `Cars_idCars` INT NOT NULL,\
  `Customers_idCustomers` INT NOT NULL,\
  PRIMARY KEY (`Cars_idCars`, `Customers_idCustomers`),\
  INDEX `fk_Cars_has_Customers_Customers1_idx` (`Customers_idCustomers` ASC) VISIBLE,\
  INDEX `fk_Cars_has_Customers_Cars_idx` (`Cars_idCars` ASC) VISIBLE,\
  CONSTRAINT `fk_Cars_has_Customers_Cars`\
    FOREIGN KEY (`Cars_idCars`)\
    REFERENCES `lab_mysql`.`Cars` (`idCars`),\
  CONSTRAINT `fk_Cars_has_Customers_Customers1`\
    FOREIGN KEY (`Customers_idCustomers`)\
    REFERENCES `lab_mysql`.`Customers` (`idCustomers`))\
ENGINE = InnoDB\
DEFAULT CHARACTER SET = utf8mb4\
COLLATE = utf8mb4_0900_ai_ci;\
\
\
-- -----------------------------------------------------\
-- Table `lab_mysql`.`Salesperson`\
-- -----------------------------------------------------\
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Salesperson` (\
  `idSalesperson` INT NOT NULL,\
  `name` VARCHAR(45) NOT NULL,\
  `store_address` VARCHAR(45) NOT NULL,\
  PRIMARY KEY (`idSalesperson`))\
ENGINE = InnoDB\
DEFAULT CHARACTER SET = utf8mb4\
COLLATE = utf8mb4_0900_ai_ci;\
\
\
-- -----------------------------------------------------\
-- Table `lab_mysql`.`Customers_has_Salesperson`\
-- -----------------------------------------------------\
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Customers_has_Salesperson` (\
  `Customers_idCustomers` INT NOT NULL,\
  `Salesperson_idSalesperson` INT NOT NULL,\
  PRIMARY KEY (`Customers_idCustomers`, `Salesperson_idSalesperson`),\
  INDEX `fk_Customers_has_Salesperson_Salesperson1_idx` (`Salesperson_idSalesperson` ASC) VISIBLE,\
  INDEX `fk_Customers_has_Salesperson_Customers1_idx` (`Customers_idCustomers` ASC) VISIBLE,\
  CONSTRAINT `fk_Customers_has_Salesperson_Customers1`\
    FOREIGN KEY (`Customers_idCustomers`)\
    REFERENCES `lab_mysql`.`Customers` (`idCustomers`),\
  CONSTRAINT `fk_Customers_has_Salesperson_Salesperson1`\
    FOREIGN KEY (`Salesperson_idSalesperson`)\
    REFERENCES `lab_mysql`.`Salesperson` (`idSalesperson`))\
ENGINE = InnoDB\
DEFAULT CHARACTER SET = utf8mb4\
COLLATE = utf8mb4_0900_ai_ci;\
\
\
-- -----------------------------------------------------\
-- Table `lab_mysql`.`Invoices`\
-- -----------------------------------------------------\
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Invoices` (\
  `idInvoices` INT NOT NULL,\
  `number` VARCHAR(45) NULL DEFAULT NULL,\
  `date` VARCHAR(45) NULL DEFAULT NULL,\
  `Cars_idCars` INT NOT NULL,\
  `Salesperson_idSalesperson` INT NOT NULL,\
  PRIMARY KEY (`idInvoices`, `Cars_idCars`, `Salesperson_idSalesperson`),\
  INDEX `fk_Invoices_Cars1_idx` (`Cars_idCars` ASC) VISIBLE,\
  INDEX `fk_Invoices_Salesperson1_idx` (`Salesperson_idSalesperson` ASC) VISIBLE,\
  CONSTRAINT `fk_Invoices_Cars1`\
    FOREIGN KEY (`Cars_idCars`)\
    REFERENCES `lab_mysql`.`Cars` (`idCars`),\
  CONSTRAINT `fk_Invoices_Salesperson1`\
    FOREIGN KEY (`Salesperson_idSalesperson`)\
    REFERENCES `lab_mysql`.`Salesperson` (`idSalesperson`))\
ENGINE = InnoDB\
DEFAULT CHARACTER SET = utf8mb4\
COLLATE = utf8mb4_0900_ai_ci;\
\
\
SET SQL_MODE=@OLD_SQL_MODE;\
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;\
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;\
}