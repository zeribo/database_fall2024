INSERT INTO airline (airline_id, airline_code, airline_name, airline_country, created_at, updated_at)
VALUES (101, 'KA', 'KazAir', 'Kazakhstan', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


SELECT * FROM airline;


UPDATE airline
SET airline_country = 'Turkey'
WHERE airline_name = 'KazAir';


DELETE FROM airline
WHERE airline_name = 'KazAir';

SELECT * FROM airline;

truncate table booking cascade;

select * from booking;

INSERT INTO airline (airline_id, airline_code, airline_name, airline_country, created_at, updated_at)
VALUES
(102, 'AE', 'AirEasy', 'France', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(103, 'FH', 'FlyHigh', 'Brazil', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(104, 'FF', 'FlyFly', 'Poland', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);



DELETE FROM flights
WHERE EXTRACT(YEAR FROM sch_arrival_time) = 2024;


select * from flights;



UPDATE booking
SET ticket_price = ticket_price * 1.10;


DELETE FROM booking
WHERE ticket_price < 1000;

SELECT EXTRACT(DAY FROM created_at) AS arr_day
FROM airport;

