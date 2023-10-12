CREATE TABLE shelters(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	location VARCHAR(150) NOT NULL,
	email VARCHAR(50),
	phone_number VARCHAR(12) NOT NULL
);


CREATE TABLE animals_types(
	id SERIAL PRIMARY KEY,
	animal_type VARCHAR(30) NOT NULL
);


CREATE TABLE staff(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(50),
	phone_number VARCHAR(12),
	shelter_id INT NOT NULL,

	CONSTRAINT fk_staff_shelters
		FOREIGN KEY (shelter_id)
			REFERENCES shelters(id)
);


CREATE TABLE animals(
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	birthdate DATE NOT NULL,
	gender VARCHAR(6) NOT NULL,
	breed VARCHAR(50),
	animal_type_id INT NOT NULL,
	staff_person_id INT NOT NULL,

	CONSTRAINT fk_animals_animals_types
		FOREIGN KEY (animal_type_id)
			REFERENCES animals_types(id),

	CONSTRAINT fk_animals_staff
		FOREIGN KEY (staff_person_id)
			REFERENCES staff(id)
);


CREATE TABLE adopters(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(50),
	phone_number VARCHAR(12) NOT NULL,
	animal_id INT,

	CONSTRAINT adopters
		FOREIGN KEY (animal_id)
			REFERENCES animals(id)
);