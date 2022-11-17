TRUNCATE TABLE contact_name; -- deletes rows and sets from a tables, doesnt scan the table
TRUNCATE TABLE contact_location;

ALTER SEQUENCE contact_name_id_seq RESTART WITH 1; -- how to change something
ALTER SEQUENCE contact_location_id_seq RESTART WITH 1;


INSERT INTO contact_name(person_name, nationality, birth_year) VALUES('Princess Diana', 'Wales', 1961);
INSERT INTO contact_name(person_name, nationality, birth_year) VALUES('Princess Margaret', 'Snowdown', 1930);
INSERT INTO contact_name(person_name, nationality, birth_year) VALUES('Princess Leia','Alderaan', 19bby);
INSERT INTO contact_name(person_name, nationality, birth_year) VALUES('Nefertiti','Egypt', 1353bd);



INSERT INTO contact_location(email, phone_number, state_abreviation, contact_name_id) VALUES('PrinD@gmail.com',186712432,'UK', 1);
INSERT INTO contact_location(email, phone_number, state_abreviation, contact_name_id) VALUES('other@gmail.com',18632342,'SD', 2);
INSERT INTO contact_location(email, phone_number, state_abreviation, contact_name_id) VALUES('stargirl@gmail.com',18631232,'AD', 3);
INSERT INTO contact_location(email, phone_number, state_abreviation, contact_name_id) VALUES('DeNile@gmail.com',12323342,'EG', 4);

