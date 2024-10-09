
ALTER TABLE security_check
ADD CONSTRAINT fk_passenger_security FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id);

ALTER TABLE booking
ADD CONSTRAINT fk_passenger_booking FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id);


ALTER TABLE baggage_check
ADD CONSTRAINT fk_passenger_baggagecheck FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id);


ALTER TABLE baggage_check
ADD CONSTRAINT fk_booking_baggagecheck FOREIGN KEY (booking_id) REFERENCES booking(booking_id);


ALTER TABLE baggage
ADD CONSTRAINT fk_booking_baggage FOREIGN KEY (booking_id) REFERENCES booking(booking_id);


ALTER TABLE boarding_pass
ADD CONSTRAINT fk_booking_boardingpass FOREIGN KEY (booking_id) REFERENCES booking(booking_id);


ALTER TABLE booking_flight
ADD CONSTRAINT fk_booking_flight FOREIGN KEY (booking_id) REFERENCES booking(booking_id);


ALTER TABLE booking_flight
ADD CONSTRAINT fk_flight_bookingflight FOREIGN KEY (flight_id) REFERENCES flights(flight_id);


ALTER TABLE flights
ADD CONSTRAINT fk_departing_airport FOREIGN KEY (departing_airport_id) REFERENCES airport(airport_id);

ALTER TABLE flights
ADD CONSTRAINT fk_arriving_airport FOREIGN KEY (arriving_airport_id) REFERENCES airport(airport_id);


/* Make a relationship between following tables (20%):

- Passengers with Security_check, Booking, Baggage_check by passenger_id;

 -Booking with Baggage_check, Baggage, Boarding_pass, Booking_flight by booking_id;

- Flights with Booking_flight by flight_id;

- Airport with Flights by departing_airport_id;

- Airport with Flights by arriving_airport_id;

- Airline with Flights by airline_id;

 */