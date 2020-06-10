INSERT INTO `Concesionarios`.`cars` (`ID`, `VIN`, `manufacturer`, `model`, `year`, `color`) VALUES ('1', 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red');
INSERT INTO `Concesionarios`.`cars` (`ID`, `VIN`, `manufacturer`, `model`, `year`, `color`) VALUES ('2','RKXVNNIHLVVZOUB4M','Ford','Fusion','2018','White');
INSERT INTO `Concesionarios`.`cars` (`ID`, `VIN`, `manufacturer`, `model`, `year`, `color`) VALUES ('3','HKNDGS7CU31E9Z7JW','Toyota','RAV4','2018','Silver');
INSERT INTO `Concesionarios`.`cars` (`ID`, `VIN`, `manufacturer`, `model`, `year`, `color`) VALUES ('4','DAM41UDN3CHU2WVF6','Volvo','V60','2019','Gray');
INSERT INTO `Concesionarios`.`cars` (`ID`, `VIN`, `manufacturer`, `model`, `year`, `color`) VALUES ('5','DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country','2019','Gray');

INSERT INTO `Concesionarios`.`customers` (`ID`, `customerID`, `name`, `phone number`, `email`, `address`, `city`, `state/province`, `country`, `zip/postal_code`) VALUES ('1','20001','Abraham Lincoln','+1 305 907 7086','-','120 SW 8th St','Miami','Florida','United States','33130');
INSERT INTO `Concesionarios`.`customers` (`ID`, `customerID`, `name`, `phone number`, `email`, `address`, `city`, `state/province`, `country`, `zip/postal_code`) VALUES ('2','30001','Napoléon Bonaparte','+33 1 79 75 40 00','-','40 Rue du Colisée','Paris','Île-de-France','France','75008');
INSERT INTO `Concesionarios`.`customers` (`ID`, `customerID`, `name`, `phone number`, `email`, `address`, `city`, `state/province`, `country`, `zip/postal_code`) VALUES ('0', '10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045');


INSERT INTO `Concesionarios`.`invoices` (`id`, `Invoice number`, `date`, `car`, `customer`, `sales person`) VALUES ('0','852399038','43334','0',1',3')
INSERT INTO `Concesionarios`.`invoices` (`id`, `Invoice number`, `date`, `car`, `customer`, `sales person`) VALUES ('1','731166526','43465','3',0',5')
INSERT INTO `Concesionarios`.`invoices` (`id`, `Invoice number`, `date`, `car`, `customer`, `sales person`) VALUES ('2','271135104','43487','2',2',7')

INSERT INTO `Concesionarios`.`Salespersons` (`ID`, `staff_id`, `name`, `store`) VALUES ('0','1','Petey Cruiser',Madrid')
INSERT INTO `Concesionarios`.`Salespersons` (`ID`, `staff_id`, `name`, `store`) VALUES ('1','2','Anna Sthesia',Barcelona')
INSERT INTO `Concesionarios`.`Salespersons` (`ID`, `staff_id`, `name`, `store`) VALUES ('2','3','Paul Molive',Berlin')
INSERT INTO `Concesionarios`.`Salespersons` (`ID`, `staff_id`, `name`, `store`) VALUES ('3','4','Gail Forcewind',Paris')
INSERT INTO `Concesionarios`.`Salespersons` (`ID`, `staff_id`, `name`, `store`) VALUES ('4','5','Paige Turner',Mimia')
INSERT INTO `Concesionarios`.`Salespersons` (`ID`, `staff_id`, `name`, `store`) VALUES ('5','6','Bob Frapples',Mexico City')