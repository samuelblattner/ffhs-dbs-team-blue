SELECT * FROM booking AS b
  LEFT JOIN inquiry AS i ON b.referring_inquiry = i.id
  INNER JOIN person AS p ON b.referring_person_id = p.id;

SELECT * FROM booking AS b
  LEFT JOIN inquiry AS i ON b.referring_inquiry = i.id
  INNER JOIN person AS p ON b.referring_person_id = p.id
  WHERE YEAR(b.checkin) = 2017 OR YEAR(b.checkout) = 2017;

SELECT
    COUNT(*) AS 'Alle Buchungen',
    SUM(CASE WHEN b.referring_inquiry != 0 THEN 1 ELSE 0 END) AS 'Buchungen mit vorhergegangenen Verfügbarkeitsanfrage'
  FROM booking AS b
  LEFT JOIN inquiry AS i ON b.referring_inquiry = i.id
  INNER JOIN person AS p ON b.referring_person_id = p.id
  WHERE YEAR(b.checkin) = 2017 OR YEAR(b.checkout) = 2017;

SELECT SUM(CASE WHEN b.referring_inquiry != 0 THEN 1 ELSE 0 END) FROM booking AS b;