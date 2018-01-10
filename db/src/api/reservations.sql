create or replace view reservations as
select id, property_id, owner_id, checkin_time, checkout_time from data.reservation;
alter view reservations owner to api;
