SELECT * FROM lab_mysql.salespersons;

UPDATE lab_mysql.salespersons SET store="mimi" WHERE store ="Miami";

UPDATE lab_mysql.salespersons SET store="Miami" WHERE store ="mimi";

SELECT * FROM lab_mysql.Customers;

UPDATE lab_mysql.Customers SET email="ppicasso@gmail.com" WHERE name="Pablo Picasso";
UPDATE lab_mysql.Customers SET email="lincoln@us.gov" WHERE name="Abraham Lincoln";
UPDATE lab_mysql.Customers SET email= "hello@napoleon.me" WHERE name=" Napoleon Bonaparte";

SELECT * FROM lab_mysql.Car;
DELETE FROM lab_mysql.Car WHERE idCar="4";