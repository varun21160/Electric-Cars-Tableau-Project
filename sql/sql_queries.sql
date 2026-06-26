USE electric_cars;

SHOW TABLES;

DESCRIBE charging_stations;
DESCRIBE electric_cars_data;
DESCRIBE ev_india;
DESCRIBE cheapest_ev_cars;

SELECT COUNT(*) FROM charging_stations;
SELECT COUNT(*) FROM electric_cars_data;
SELECT COUNT(*) FROM ev_india;
SELECT COUNT(*) FROM cheapest_ev_cars;

SELECT Brand, Model, Range_Km
FROM electric_cars_data
ORDER BY Range_Km DESC
LIMIT 10;

SELECT Brand, Model, PriceEuro
FROM electric_cars_data
ORDER BY PriceEuro DESC
LIMIT 10;

SELECT AVG(PriceEuro)
FROM electric_cars_data;

SELECT region, COUNT(*)
FROM charging_stations
GROUP BY region;