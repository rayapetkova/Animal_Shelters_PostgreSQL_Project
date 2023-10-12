-- The queries are mainly genereted by `Mockaroo`. I made some changes in the records.


-- `shelters` Table
insert into shelters (name, location, email, phone_number)
	values ('Pets Care Corner', '147 Schurz Center', 'aedelmann1@illinois.edu', '716-369-5441');
insert into shelters (name, location, email, phone_number)
	values ('Best Friends Together', '47 Birchwood Street', 'rpersich5@1688.com', '331-960-3542');
insert into shelters (name, location, email, phone_number)
	values ('Pet Connect', '2 La Follette Alley', 'tneissen6@webmd.com', '469-612-1889');
insert into shelters (name, location, email, phone_number)
	values ('Pets Perfection', '2253 Eastlawn Center', 'baujean8@google.nl', '716-958-7127');
insert into shelters (name, location, email, phone_number)
	values ('Furever Safe', '595 Stoughton Trail', 'carckoll9@networksolutions.com', '901-535-2800');


-- `animals_types` Table
INSERT INTO animals_types(animal_type)
VALUES ('Dog'),
	   ('Cat'),
	   ('Koala'),
	   ('Ferret'),
	   ('Hamster');


-- `staff` Table
insert into staff (first_name, last_name, email, phone_number, shelter_id)
	values ('Cleopatra', 'Haine', 'chaine0@google.com.hk', '492-955-8788', 1);
insert into staff (first_name, last_name, email, phone_number, shelter_id)
	values ('Fleurette', 'Crummey', NULL, '556-230-1640', 2);
insert into staff (first_name, last_name, email, phone_number, shelter_id)
	values ('Goddart', 'Johanchon', 'gjohanchon2@ca.gov', '262-978-6886', 3);
insert into staff (first_name, last_name, email, phone_number, shelter_id)
	values ('Kassandra', 'Caswall', 'kcaswall3@baidu.com', '948-533-2459', 4);
insert into staff (first_name, last_name, email, phone_number, shelter_id)
	values ('Sonia', 'Rafferty', NULL, '858-799-1445', 5);
insert into staff (first_name, last_name, email, phone_number, shelter_id)
	values ('Stacy', 'Boustead', 'sboustead5@usgs.gov', '815-150-1660', 1);
insert into staff (first_name, last_name, email, phone_number, shelter_id)
	values ('Lucienne', 'Treeby', 'ltreeby6@lulu.com', '836-681-6001', 2);
insert into staff (first_name, last_name, email, phone_number, shelter_id)
	values ('Mata', 'Gorstidge', NULL, '480-968-6329', 3);
insert into staff (first_name, last_name, email, phone_number, shelter_id)
	values ('Wilie', 'Jurczik', 'wjurczik8@clickbank.net', '340-810-7447', 4);
insert into staff (first_name, last_name, email, phone_number, shelter_id)
	values ('Vitoria', 'Ferraro', 'vferraro9@naver.com', '167-157-5644', 5);
insert into staff (first_name, last_name, email, phone_number, shelter_id)
	values ('Merrily', 'Gabbatt', NULL, '832-696-2892', 1);
insert into staff (first_name, last_name, email, phone_number, shelter_id)
	values ('Vaughan', 'Gozney', 'vgozneyb@i2i.jp', '695-839-7562', 2);
insert into staff (first_name, last_name, email, phone_number, shelter_id)
	values ('Shelby', 'Apdell', 'sapdellc@whitehouse.gov', '732-819-4214', 3);
insert into staff (first_name, last_name, email, phone_number, shelter_id)
	values ('Coop', 'Duggan', NULL, '218-913-1827', 4);
insert into staff (first_name, last_name, email, phone_number, shelter_id)
	values ('Reynard', 'Abramow', 'rabramowe@discovery.com', '278-513-2630', 5);


-- `animals` Table
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Max', '2019-05-28', 'Male', 'Golden Retriever', 1, 1);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Milo', '2018-12-22', 'Male', 'Bulldog', 1, 2);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Luna', '2021-07-02', 'Female', 'Afghan Hound', 1, 3);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Daisy', '2020-04-01', 'Male', 'Labrador Retriever', 1, 4);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Leo', '2021-05-12', 'Male', 'German Shepherd', 1, 5);

insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Felix', '2020-12-01', 'Male', 'Siamese cat', 2, 6);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Cleo', '2017-10-28', 'Female', 'Bombay', 2, 7);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Kitty', '2019-12-21', 'Female', 'Brazilian Shorthair', 2, 8);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Chloe', '2020-06-05', 'Female', 'Burmese', 2, 9);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Lola', '2020-01-25', 'Female', 'German Rex', 2, 10);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Lucy', '2020-10-30', 'Female', 'Korat', 2, 11);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Raven', '2020-01-27', 'Male', 'Minuet', 2, 12);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Tiger', '2019-07-21', 'Male', 'Peterbald', 2, 13);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Zoe', '2019-04-06', 'Female', 'Somali', 2, 14);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Rocky', '2017-10-22', 'Male', 'Toyger', 2, 15);

insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Mabel', '2019-05-26', 'Male', NULL, 3, 1);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Nala', '2019-08-12', 'Female', NULL, 3, 2);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Rosie', '2021-07-07', 'Female', NULL, 3, 3);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Jasper', '2020-05-01', 'Male', NULL, 3, 4);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Maisie', '2020-04-04', 'Female', NULL, 3, 5);

insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Benny', '2019-08-18', 'Male', 'Blaze', 4, 6);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Bubba', '2018-05-14', 'Female', 'Albino', 4, 7);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Casper', '2020-12-08', 'Male', 'Dalmatian', 4, 8);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Vince', '2020-09-06', 'Male', 'Siamese', 4, 9);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Robin', '2019-01-02', 'Male', 'Light Pattern', 4, 10);

insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Dolly', '2018-03-04', 'Female', 'Syrian hamster', 5, 11);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Gizmo', '2019-06-15', 'Male', 'European hamster', 5, 12);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Pearlg', '2019-05-12', 'Female', 'Mongolian hamster', 5, 13);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Fluffy', '2020-02-15', 'Male', 'Gansu hamster', 5, 14);
insert into animals (name, birthdate, gender, breed, animal_type_id, staff_person_id)
	values ('Rocky', '2017-12-05', 'Male', 'Armenian hamster', 5, 15);


-- `adopters` Table
insert into adopters (first_name, last_name, email, phone_number, animal_id)
	values ('Jilli', 'Borleace', NULL, '520-640-7921', 1);
insert into adopters (first_name, last_name, email, phone_number, animal_id)
	values ('Nicolle', 'Bagniuk', 'nbagniuk1@feedburner.com', '321-600-2591', 15);
insert into adopters (first_name, last_name, email, phone_number, animal_id)
	values ('Gayle', 'Ivanovic', 'givanovic2@issuu.com', '714-521-4684', 20);
insert into adopters (first_name, last_name, email, phone_number, animal_id)
	values ('Traci', 'Lannen', 'tlannen3@sbwire.com', '673-424-7483', 24);
insert into adopters (first_name, last_name, email, phone_number, animal_id)
	values ('Avrit', 'Matteucci', 'amatteucci4@bravesites.com', '475-179-8401', 4);
insert into adopters (first_name, last_name, email, phone_number, animal_id)
	values ('Zorah', 'Crab', 'zcrab5@istockphoto.com', '836-948-2395', 8);
insert into adopters (first_name, last_name, email, phone_number, animal_id)
	values ('Lily', 'Kirwan', 'lkirwan6@pinterest.com', '230-494-1388', 30);
insert into adopters (first_name, last_name, email, phone_number, animal_id)
	values ('Rufe', 'Klimes', null, '824-540-0853', 18);
insert into adopters (first_name, last_name, email, phone_number, animal_id)
	values ('Adelbert', 'Dack', 'adack8@dot.gov', '345-521-1074', 19);
insert into adopters (first_name, last_name, email, phone_number, animal_id)
	values ('Gallard', 'Kleinschmidt', 'gkleinschmidt9@github.com', '527-721-7701', 7);
insert into adopters (first_name, last_name, email, phone_number, animal_id)
	values ('Isak', 'Northridge', null, '563-179-8468', 11);
insert into adopters (first_name, last_name, email, phone_number, animal_id)
	values ('Ricki', 'Veltman', 'rveltmanb@fotki.com', '810-452-1411', 21);
insert into adopters (first_name, last_name, email, phone_number, animal_id)
	values ('Tracey', 'Kubicka', 'tkubickac@engadget.com', '811-355-2112', 2);
insert into adopters (first_name, last_name, email, phone_number, animal_id)
	values ('Bernadine', 'Waulker', null, '842-774-0369', 9);
insert into adopters (first_name, last_name, email, phone_number, animal_id)
	values ('Harland', 'Furmagier', 'hfurmagiere@dyndns.org', '507-428-1328', 16);
