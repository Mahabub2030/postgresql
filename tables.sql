CREATE DATABASE b8_psql_cs;

CREATE TABLE publishers(
 id SERIAL PRIMARY KEY,
 name TEXT NOT NULL
)

CREATE TABLE books(
id SERIAL PRIMARY KEY,
title TEXT NOT NULL,
author_name TEXT,
published_year INT,
price NUMERIC(6,2),
in_stock BOOLEAN,
publihser_id INT,
FOREIGN KEY(publihser_id)REFERENCES publishers(id)
);


