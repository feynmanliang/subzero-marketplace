create table property (
	id    serial primary key,
	title text not null,
	description text,
	price_per_night numeric not null CHECK (price_per_night >= 0),
	owner_id int references "user"(id) not null default request.user_id()
);
