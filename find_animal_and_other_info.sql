-- Here, you can find the animal with which you will be best friends
-- There are examples of how to use the functions at the bottom of the file


-- This function returns a table with records of animals based on the characteristics you chose
CREATE OR REPLACE FUNCTION fn_find_animal_you_want(
	type_animal VARCHAR,
	animal_gender VARCHAR
)
RETURNS TABLE (
	"Animal Type" VARCHAR,
	"Name" VARCHAR,
	"Age" INT,
	"Gender" VARCHAR,
	"Breed" VARCHAR,
	"Person Name" TEXT
)
AS
$$
   BEGIN
   	   RETURN QUERY
	   SELECT
			  at.animal_type,
			  a.name,
			  (EXTRACT(YEAR FROM NOW()) - EXTRACT(YEAR FROM a.birthdate))::int,
			  a.gender,
			  a.breed,
			  CONCAT(s.first_name, ' ', s.last_name)
	   FROM animals AS "a"
	   JOIN animals_types AS "at"
			ON a.animal_type_id = at.id
	   JOIN staff AS "s"
			ON a.staff_person_id = s.id
	   WHERE at.animal_type = type_animal AND a.gender = animal_gender;
   END;
$$
LANGUAGE plpgsql;






-- This function returns information about the person from the staff that takes care of the animal you chose
CREATE OR REPLACE FUNCTION fn_choose_animal_and_get_info_about_the_staff_person(
	animal_name VARCHAR
)
RETURNS TABLE (
	"Animal Name" VARCHAR,
	"Staff Person - Full Name" TEXT,
	"Email" VARCHAR,
	"Phone Number" VARCHAR
)
AS
$$
   BEGIN
   		 RETURN QUERY
   		 SELECT
		 		a.name,
				CONCAT(s.first_name, ' ', s.last_name),
				s.email,
				s.phone_number
		 FROM animals AS "a"
		 JOIN staff AS "s"
		 	  ON a.staff_person_id = s.id
		 WHERE a.name = animal_name;
   END;
$$
LANGUAGE plpgsql;






-- This function returns the exact location of the shelter in which the animal you chose is located
CREATE OR REPLACE FUNCTION fn_get_shelter_location_and_see_the_animal(
	animal_name VARCHAR,
	staff_phone_number VARCHAR
)
RETURNS TABLE (
	"Shelter Name" VARCHAR,
	"Location" VARCHAR,
	"Shelter Email" VARCHAR,
	"Shelter Phone Number" VARCHAR
)
AS
$$
   BEGIN
   		RETURN QUERY
   		SELECT
			   shelters.name,
			   shelters.location,
			   shelters.email,
			   shelters.phone_number
		FROM shelters
		JOIN staff
			 ON staff.shelter_id = shelters.id
		JOIN animals
			 ON animals.staff_person_id = staff.id
		WHERE animals.name = animal_name AND staff.phone_number = staff_phone_number;

   END;
$$
LANGUAGE plpgsql;


-- Examples:
SELECT * FROM fn_find_animal_you_want('Dog', 'Male');
SELECT * FROM fn_choose_animal_and_get_info_about_the_staff_person('Milo');
SELECT * FROM fn_get_shelter_location_and_see_the_animal('Milo', '556-230-1640');