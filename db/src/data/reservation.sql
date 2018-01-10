create table reservation(
	id serial primary key,
	property_id int references "property"(id) NOT NULL,
	owner_id int references "user"(id) NOT NULL default request.user_id(),
	checkin_time timestamp with time zone,
	checkout_time timestamp with time zone,
	CONSTRAINT positive_reservation_interval CHECK (checkout_time > checkin_time),
	CONSTRAINT no_overlapping_reservations EXCLUDE USING gist (property_id WITH =,
		tstzrange("checkin_time", "checkout_time", '[]') WITH &&)
)
