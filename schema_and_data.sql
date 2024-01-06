CREATE TABLE author (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);
CREATE TABLE book (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    publishing_house VARCHAR(255),
    year INT,
    isbn VARCHAR(255),
    category_id INT,
    author_id INT REFERENCES author(id) ON DELETE CASCADE
);
CREATE TABLE category (
    id SERIAL PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

INSERT INTO author (first_name, last_name)
VALUES
('Martin', 'Kukučín'),
('Agatha', 'Christie'),
('Karel Hynek', 'Mácha'),
('Robin', 'Cook');

INSERT INTO book ( title, publishing_house, year, isbn, category_id, author_id)
VALUES
('Dom v strání', 'TATRAN Bratislava', 1970, '61-026-79', 1, 1),
('Deset malých černoušků', 'Knižní klub', 2017, '978-80-242-5541-5', 2, 2),
('Máj', 'BB art', 2010, '978-80-7381-843-2', 3, 3),
('Kóma', 'Knižní klub', 2008, '978-80-242-2138-0', 4, 4),
('Vražda v Orient exprese', 'Slovenský spisovateľ a.s.', 2022, '978-80-220-2283-5', 2, 2),
('Smrť na Níle', 'Harper Collins', 2020, '', 2, 2),
('Liek', 'Ikar, a.s.', 2011, '978-80-551-2495-7', 4, 4),
('Toxín', 'Ikar, a.s.', 2011, '978-80-551-1777-5', 4, 4),
('Epidémia', 'Ikar, a.s.', 2005, '80-551-1134-0', 4, 4);

INSERT INTO category (category_name)
VALUES
('román'),
('krimi'),
('poézia'),
('thriller');