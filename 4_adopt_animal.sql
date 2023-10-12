-- Here you can adopt an animal but before that you must follow the instructions in the third file (`3`)
-- There is an example of how to use the procedure at the bottom of the file


CREATE OR REPLACE PROCEDURE sp_adopt_animal(
	shelter_name VARCHAR,
	animal_name VARCHAR,
	adopter_first_name VARCHAR,
	adopter_last_name VARCHAR,
	adopter_email VARCHAR,
	adopter_phone_number VARCHAR
)
AS
$$
   DECLARE
   		   a_animal_id INT;
		   staff_person_id INT;
		   animal_adopted BOOLEAN;
   BEGIN
   		 SELECT
		 		a.id,
				a.staff_person_id
		 FROM animals AS "a"
		 JOIN staff
		 	  ON a.staff_person_id = staff.id
		 JOIN shelters
		 	  ON staff.shelter_id = shelters.id
		 WHERE a.name = animal_name AND shelters.name = shelter_name
		 INTO a_animal_id, staff_person_id;

		 SELECT adopted
		 FROM animals
		 WHERE name = animal_name
		 INTO animal_adopted;

		 IF animal_adopted IS NULL THEN
		 	RAISE NOTICE 'There is no animal with the name %', animal_name;
		 ELSIF shelter_name IS NULL THEN
		 	RAISE NOTICE 'There is no shelter with the name %', shelter_name;
		 ELSIF animal_adopted = TRUE THEN
		 	RAISE NOTICE 'The animal is already adopted!';
		 ELSE
		 	INSERT INTO adopters(first_name, last_name, email, phone_number, animal_id)
		 	VALUES (adopter_first_name, adopter_last_name, adopter_email, adopter_phone_number, a_animal_id);

			RAISE NOTICE 'You successfully adopted %', animal_name;
		 END IF;
   END;
$$
LANGUAGE plpgsql;


-- Example:
CALL sp_adopt_animal('Best Friends Together', 'Milo', 'TestAdopterFirstName', 'TestAdopterLastName', 'randomemail@hotmail.com', '876-283-2874');
