SELECT * FROM dealership.salesperson;
SET SQL_SAFE_UPDATES = 0;
UPDATE salesperson SET store='Miami' WHERE name='Paige Turner';
SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;
UPDATE customers SET email='ppicasso@gmail.com' WHERE name='Pablo Picasso';
UPDATE customers SET email='lincoln@us.gov' WHERE name='Abraham Lincoln';
UPDATE customers SET email='hello@napoleon.me' WHERE name='Napoléon Bonaparte';
SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;
UPDATE cars SET idCars='0' WHERE VIH='3K096I98581DHSNUP';
SET SQL_SAFE_UPDATES = 1;