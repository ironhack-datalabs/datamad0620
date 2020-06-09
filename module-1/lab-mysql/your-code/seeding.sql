CREATE TABLE `lab_mysql`.`Cars2` (
  `ID` VARCHAR(45) NOT NULL,
  `VIN` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NULL DEFAULT NULL,
  `model` VARCHAR(45) NULL DEFAULT NULL,
  `year` INT NULL DEFAULT NULL,
  `color` VARCHAR(45) NULL DEFAULT NULL);

INSERT INTO `lab_mysql`.`Cars2` (`ID`, `VIN`, `manufacturer`, `model`, `year`, `color`) VALUES ('0', '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue');
INSERT INTO `lab_mysql`.`Cars2` (`ID`, `VIN`, `manufacturer`, `model`, `year`, `color`) VALUES ('1', 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'red');
INSERT INTO `lab_mysql`.`Cars2` (`ID`, `VIN`, `manufacturer`, `model`, `year`, `color`) VALUES ('2', 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White');
INSERT INTO `lab_mysql`.`Cars2` (`ID`, `VIN`, `manufacturer`, `model`, `year`, `color`) VALUES ('3', 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver');
INSERT INTO `lab_mysql`.`Cars2` (`ID`, `VIN`, `manufacturer`, `model`, `year`, `color`) VALUES ('4', 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray');
INSERT INTO `lab_mysql`.`Cars2` (`ID`, `VIN`, `manufacturer`, `model`, `year`, `color`) VALUES ('5', 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country	', '2019', 'Gray');

CREATE TABLE `Customer` (
  `ID` int NOT NULL,
  `customerID` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state/province` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `zip/postal` char(5) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `lab_mysql`.`Customer` (`ID`, `customerID`, `name`, `phone_number`, `email`, `address`, `city`, `state/province`, `country`, `zip/postal`) VALUES ('0', '10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid	', 'Madrid	', 'Spain	', '28045');
INSERT INTO `lab_mysql`.`Customer` (`ID`, `customerID`, `name`, `phone_number`, `email`, `address`, `city`, `state/province`, `country`, `zip/postal`) VALUES ('1', '20001', 'Abraham Lincoln	', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami	', 'Florida	', 'United States	', '33130');
INSERT INTO `lab_mysql`.`Customer` (`ID`, `customerID`, `name`, `phone_number`, `email`, `address`, `city`, `state/province`, `country`, `zip/postal`) VALUES ('2', '30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris	', 'Île-de-France	', 'France	', '75008');

CREATE TABLE `Invoices` (
  `ID` int NOT NULL,
  `invoice_number` int NOT NULL,
  `date` varchar(45) DEFAULT NULL,
  `car` char(5) DEFAULT NULL,
  `customer` char(5) DEFAULT NULL,
  `sales person` char(5) DEFAULT NULL,
  PRIMARY KEY (`invoice_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `lab_mysql`.`Invoices` (`ID`, `invoice_number`, `date`, `car`, `customer`, `sales person`) VALUES ('0', '852399038', '22-08-2018	', '0', '1', '3');
INSERT INTO `lab_mysql`.`Invoices` (`ID`, `invoice_number`, `date`, `car`, `customer`, `sales person`) VALUES ('1', '731166526', '31-12-2018	', '3', '0', '5');
INSERT INTO `lab_mysql`.`Invoices` (`ID`, `invoice_number`, `date`, `car`, `customer`, `sales person`) VALUES ('2', '271135104', '22-01-2019		', '2', '2', '7');

