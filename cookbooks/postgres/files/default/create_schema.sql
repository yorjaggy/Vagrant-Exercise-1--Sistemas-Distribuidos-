create user pi with password 'security';
alter role pi with createdb;
create database swn owner pi;
\connect swn
CREATE TABLE devices(
       id     integer NOT NULL PRIMARY KEY,
       device_name  varchar(10) NOT NULL UNIQUE
);
grant all privileges on table devices to pi;
CREATE TABLE consumption(
       id   integer NOT NULL PRIMARY KEY,
       date date  NOT NULL,
       device_id integer references devices(id)
);
grant all privileges on table consumption to pi;

INSERT INTO devices (id, device_name) VALUES (15 , 'express');
INSERT INTO devices (id, device_name) VALUES (3312 , 'YorQuiCos');

INSERT INTO consumption (id, date, device_id) VALUES (23, '2016-08-27', 3312);
