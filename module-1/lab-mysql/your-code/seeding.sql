SELECT * FROM lab_mysql.Car;

INSERT INTO lab_mysql.Car( idCar, vin,model,year,color,manufacturer) VALUES ("0","3K096I98581DHSNUP","Tiguan","2019","Blue","Volkswagen");
INSERT INTO lab_mysql.Car (idCar, VIN, Manufacturer, Model, Year, Color) VALUES ("3","HKNDGS7CU31E9Z7JW","Toyota","RAV4","2018","Silver"),
("4","DAM41UDN3CHU2WVF6","Volvo","V60","2019","Gray"),("5","DAM41UDN3CHU2WVF6","Volvo","V60Cross Country","2019","Gray");

SELECT * FROM lab_mysql.Customers;

INSERT INTO lab_mysql.Customers(idCustomers,customer_id,name,p_number,email,address,city,state,country,zip_code) 
VALUES("0","10001","Pablo Picasso","+34 636 17 63 82",	"-" ," Paseo de la Chopera 14",	"Madrid",	"Madrid",	"Spain",	"28045"),
("1","20001","Abraham Lincoln","+1 305 907 7086",	"-" 	,"120 SW 8th St",	"Miami",	"Florida",	"United States",	"33130"),
("2","30001","Napoléon Bonaparte","+33 1 79 75 40 00",	"-" 	,"40 Rue du Colisée",	"Paris",	"Île-de-France",	"France",	"75008");

SELECT * FROM lab_mysql.Salespersons;

INSERT INTO lab_mysql.Salespersons(idsalespersons,staff_id,name,store)
VALUES("0","00000","Petey Cruiser","Madrid"),("1","00001","Anna Sthesia","Barcelona"),
("2","00002","Paul Molive","Berlin"),("3","00003","Gail Forcewind","Paris"),
("4","00004","Paige Turner	","Miami"),("5","00005","Bob Frapples	","Mexico"),
("6","00006","Walter Melon		","Amsterdam"),("7","00007","Shonda Leer","São Paulo");

SELECT * FROM lab_mysql.Invocies;

INSERT INTO lab_mysql.Invocies(idInvocies,Customers_idCustomers,date,car,customer,salesperson)
VALUES("0","852399038","22-08-2018","0","1","3"),("1","731166526","31-12-2018","3","0","5"),
("2","271135104","22-01-2019","2","2","7");
