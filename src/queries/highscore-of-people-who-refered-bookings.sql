SELECT p.forename AS "Vorname", p.surname AS "Nachname"  FROM person AS p;

SELECT p.forename AS "Vorname", p.surname AS "Nachname", a.street AS "Strasse", pl.zip AS "Postleitzahl", pl.name AS "Ort"
  FROM person AS p
  LEFT JOIN person_address AS pa ON p.id = pa.person_id
  LEFT JOIN address AS a ON pa.address_id = a.id
  LEFT JOIN place AS pl ON a.place_id = pl.id;

SELECT p.forename AS "Vorname", p.surname AS "Nachname", a.street AS "Strasse", pl.zip AS "Postleitzahl", pl.name AS "Ort"
  FROM person AS p
  LEFT JOIN person_address AS pa ON p.id = pa.person_id
  LEFT JOIN address AS a ON pa.address_id = a.id
  LEFT JOIN place AS pl ON a.place_id = pl.id
  INNER JOIN booking AS b ON p.id = b.referring_person_id;

SELECT DISTINCT p.forename AS "Vorname", p.surname AS "Nachname", a.street AS "Strasse", pl.zip AS "Postleitzahl", pl.name AS "Ort"
  FROM person AS p
  LEFT JOIN person_address AS pa ON p.id = pa.person_id
  LEFT JOIN address AS a ON pa.address_id = a.id
  LEFT JOIN place AS pl ON a.place_id = pl.id
  INNER JOIN booking AS b ON p.id = b.referring_person_id;

SELECT DISTINCT p.forename AS "Vorname", p.surname AS "Nachname", a.street AS "Strasse", pl.zip AS "Postleitzahl", pl.name AS "Ort"
  FROM person AS p
  LEFT JOIN person_address AS pa ON p.id = pa.person_id
  LEFT JOIN address AS a ON pa.address_id = a.id
  LEFT JOIN place AS pl ON a.place_id = pl.id
  INNER JOIN booking AS b ON p.id = b.referring_person_id
  WHERE b.checkin BETWEEN '2016-01-01' AND '2016-12-31' OR b.checkout BETWEEN '2016-01-01' AND '2016-12-31';