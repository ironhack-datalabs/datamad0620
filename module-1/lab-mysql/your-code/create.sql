CREATE TABLE `Cars` (
  `ID_Cars` int NOT NULL AUTO_INCREMENT,
  `VIN` varchar(45) NOT NULL,
  `Manufacturer` varchar(45) DEFAULT NULL,
  `Model` varchar(45) DEFAULT NULL,
  `Year` year DEFAULT NULL,
  `Color` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_Cars`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
CREATE TABLE `Customers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Customers_id` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Adress` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `State_Province` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL,
  `Postal` varchar(45) NOT NULL,
  `Invoices_ID_Invoices` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Customers_Invoices1_idx` (`Invoices_ID_Invoices`),
  CONSTRAINT `fk_Customers_Invoices1` FOREIGN KEY (`Invoices_ID_Invoices`) REFERENCES `Invoices` (`ID_Invoices`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
CREATE TABLE `Invoices` (
  `ID_Invoices` int NOT NULL AUTO_INCREMENT,
  `invoicenumber` varchar(45) DEFAULT NULL,
  `Date` datetime NOT NULL,
  `Car` int NOT NULL,
  `Customer` int NOT NULL,
  `SalesPerson` int NOT NULL,
  `Cars_ID_Cars` int DEFAULT NULL,
  PRIMARY KEY (`ID_Invoices`),
  KEY `fk_Invoices_Cars1_idx` (`Cars_ID_Cars`),
  CONSTRAINT `fk_Invoices_Cars1` FOREIGN KEY (`Cars_ID_Cars`) REFERENCES `Cars` (`ID_Cars`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
CREATE TABLE `Salespersons` (
  `ID_Date` int NOT NULL AUTO_INCREMENT,
  `Staff_ID` int NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Store` varchar(45) NOT NULL,
  `Invoices_ID_Invoices` int DEFAULT NULL,
  PRIMARY KEY (`ID_Date`),
  KEY `fk_Salespersons_Invoices1_idx` (`Invoices_ID_Invoices`),
  CONSTRAINT `fk_Salespersons_Invoices1` FOREIGN KEY (`Invoices_ID_Invoices`) REFERENCES `Invoices` (`ID_Invoices`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
