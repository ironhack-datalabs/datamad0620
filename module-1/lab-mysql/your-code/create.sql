USE lab_mysql;

CREATE TABLE IF NOT EXISTS `lab_myseql`.`Columna` (
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellidos` VARCHAR(45) NOT NULL,
  `Direccion` VARCHAR(45) NOT NULL,
  `Zip` CHAR(5) NOT NULL,
  PRIMARY KEY (`Nombre`))
ENGINE = InnoDB;
