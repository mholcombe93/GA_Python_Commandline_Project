DROP TABLE IF EXISTS contact_name; --deletes if already exists
DROP TABLE IF EXISTS contact_location;

CREATE TABLE contact_name (
  id SERIAL PRIMARY KEY,
  person_name VARCHAR(255),
  nationality VARCHAR(255),
  birth_year INTEGER
);

CREATE TABLE contact_location (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255),
  phone_number INTEGER,
  state_abreviation VARCHAR(2),
  contact_name_id INTEGER
);

-- SELECT * FROM contact_location JOIN contact_name ON contact_name.id = contact_name_id WHERE contact_name_id = 1;