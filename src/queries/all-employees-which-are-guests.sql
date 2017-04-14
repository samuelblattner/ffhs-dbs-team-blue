SELECT p.forename AS "Vorname", p.surname AS "Nachname"  FROM person AS p;

SELECT p.forename AS "Vorname", p.surname AS "Nachname" FROM person AS p
  INNER JOIN booking_person AS g ON p.id = g.person_id;

SELECT p.forename AS "Vorname", p.surname AS "Nachname" FROM person AS p
  INNER JOIN booking_person AS g ON p.id = g.person_id
  INNER JOIN employee AS e ON p.id = e.person_id;
