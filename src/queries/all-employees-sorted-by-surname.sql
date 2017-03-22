SELECT * FROM employee;

SELECT social_insurance_number FROM employee;

SELECT employee.social_insurance_number, person.forename, person.surname FROM employee LEFT JOIN person ON employee.person_id = person.id;

SELECT employee.social_insurance_number, person.forename, person.surname FROM employee
  LEFT JOIN person ON employee.person_id = person.id
  ORDER BY person.surname ASC;
