SHOW TABLES;

SELECT COUNT(*) FROM charging_stations;
SELECT COUNT(*) FROM electric_cars_data;
SELECT COUNT(*) FROM ev_india;
SELECT COUNT(*) FROM cheapest_ev_cars;

DESCRIBE charging_stations;
DESCRIBE electric_cars_data;
DESCRIBE ev_india;
DESCRIBE cheapest_ev_cars;

#missing Values
SELECT *
FROM electric_cars_data
WHERE Brand IS NULL
   OR Model IS NULL;

#Top 10 cars by range
SELECT Brand, Model, Range_Km
FROM electric_cars_data
ORDER BY Range_Km DESC
LIMIT 10;

#Average price
SELECT AVG(PriceEuro)
FROM electric_cars_data;

#Cars by brand
SELECT Brand, COUNT(*)
FROM electric_cars_data
GROUP BY Brand;

#charging stations by region
SELECT region, COUNT(*)
FROM charging_stations
GROUP BY region;
