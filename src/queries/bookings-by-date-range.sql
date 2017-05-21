SELECT p.forename, p.surname, b.checkin, b.checkout FROM booking AS b
  LEFT JOIN person AS p ON b.responsible_person_id = p.id
  WHERE (b.checkin <= '2017-03-28') AND (b.checkout >= '2017-03-25');