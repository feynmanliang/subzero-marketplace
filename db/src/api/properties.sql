create or replace view properties as
select id, title, description, price_per_night, owner_id  from data.property;
alter view properties owner to api;
