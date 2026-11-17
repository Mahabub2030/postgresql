-- SQLBook: Code

-- ১. প্রথমে publishers টেবিল তৈরি করুন
CREATE TABLE publishers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);

-- ২. এরপর books টেবিল তৈরি করুন
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    author_name TEXT,
    published_year INT,
    price NUMERIC(6,2),
    in_stock BOOLEAN,
    publisher_id INT,
    FOREIGN KEY (publisher_id) REFERENCES publishers(id)
);
