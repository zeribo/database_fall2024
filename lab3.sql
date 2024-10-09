SELECT * FROM passengers
WHERE first_name = last_name;


TRUNCATE TABLE passengers CASCADE;


/*UPDATE passengers
SET last_name = 'Deeves'
where passenger_id = 96;

UPDATE passengers
SET last_name = 'John'
WHERE passenger_id = 80;

  */


SELECT passenger_id, last_name
FROM passengers;

SELECT DISTINCT last_name FROM passengers;


SELECT * FROM passengers
WHERE gender = 'M'
    AND date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';


SELECT * FROM booking;



SELECT
    TO_CHAR(created_at, 'YYYY-MM') AS year_month,
    SUM(ticket_price) AS total_price
FROM booking
GROUP BY TO_CHAR(created_at, 'YYYY-MM')
ORDER BY year_month;




SELECT
    f.flight_id,
    f.sch_departure_time,
    f.sch_arrival_time,
    a.airport_name AS arriving_airport,
    a.city,
    a.state,
    a.country,
    f.departing_gate,
    f.arriving_gate
FROM
    flights f
JOIN
    airport a ON f.arriving_airport_id = a.airport_id
WHERE
    a.country = 'China';

select distinct booking_platform from booking;





select airline_name from airline
where airline_country = 'united_kingdom';
SELECT * FROM booking;



UPDATE booking
SET ticket_price = ticket_price * 0.9
WHERE created_at < '2023-12-31'



select weight_in_kg from baggage;

SELECT * from baggage
WHERE weight_in_kg > 25
ORDER BY weight_in_kg DESC
LIMIT 10;


select first_name, last_name, date_of_birth from passengers
order by EXTRACT(YEAR FROM AGE(CURRENT_DATE, date_of_birth))
LIMIT 1;


SELECT
    booking_platform,
    MIN(ticket_price) AS cheapest_price
FROM
    booking
GROUP BY
    booking_platform
ORDER BY
    booking_platform;


