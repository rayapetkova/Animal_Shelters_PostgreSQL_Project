-- Here you can become a member of the staff in some of the available shelters
-- There are examples of how to use the function and the procedure at the bottom of the file


-- This function returns all the available shelters
CREATE OR REPLACE FUNCTION fn_see_all_available_shelters()
RETURNS TABLE ("Shelter Names" VARCHAR)
AS
$$
   BEGIN
	   RETURN QUERY
	   SELECT name
	   FROM shelters;
   END;
$$
LANGUAGE plpgsql;





-- This procedure adds you to the staff of one of the shelters based on the parameters you give
CREATE OR REPLACE PROCEDURE sp_apply_for_being_a_member_of_staff(
	shelter_name VARCHAR,
	loves_animals BOOLEAN,
	person_first_name VARCHAR,
	person_last_name VARCHAR,
	person_email VARCHAR,
	person_phone_number VARCHAR
)
AS
$$
   DECLARE
   		   animal_shelter_id INT;
   BEGIN
   		 SELECT id
		 FROM shelters
		 WHERE name = shelter_name
		 INTO animal_shelter_id;

		 IF shelter_name NOT IN (SELECT name FROM shelters) THEN
		 	RAISE NOTICE 'There is no shelter with name %', shelter_name;
		 END IF;

   		 IF loves_animals THEN
			 INSERT INTO staff(first_name, last_name, email, phone_number, shelter_id)
			 VALUES (person_first_name, person_last_name, person_email, person_phone_number, animal_shelter_id);

			RAISE NOTICE 'You are now a member of the staff in "%" shelter!', shelter_name;
		 ELSE
		 	RAISE NOTICE 'You cannot be a member of the staff in "%" shelter because you do not love animals', shelter_name;
		 END IF;
   END;
$$
LANGUAGE plpgsql;



-- Examples:
SELECT * FROM fn_see_all_available_shelters();
CALL sp_apply_for_being_a_member_of_staff('Furever Safe', TRUE, 'TestStaffFirstName', 'TestStaffLastName', NULL, '938-743-8926');
