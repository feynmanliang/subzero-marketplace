create or replace view users as
select id,name,email from data.user;
alter view users owner to api;
