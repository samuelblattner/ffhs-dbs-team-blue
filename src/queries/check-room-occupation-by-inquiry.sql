SELECT GREATEST((
    SELECT COUNT(*) FROM room AS r
      INNER JOIN room_type AS rt ON r.room_type_id = rt.id AND rt.name = 'Doppelzimmer'
  ) - COUNT(*), 0) AS 'Anzahl freie Zimmer für Suchkriterien' FROM room AS r
  INNER JOIN room_type AS rt ON r.room_type_id = rt.id AND rt.name = 'Doppelzimmer'
  LEFT JOIN booking_room AS br ON r.id = br.room_id
  LEFT JOIN booking AS b ON br.booking_id = b.`id`
  WHERE (b.checkin <= '2017-03-31') AND (b.checkout >= '2017-01-22');

SELECT GREATEST((
    SELECT COUNT(*) FROM room AS r
      INNER JOIN room_type AS rt ON r.room_type_id = rt.id AND rt.name = 'Doppelzimmer'
  ) - COUNT(*), 0) AS 'Anzahl freie Zimmer für Suchkriterien' FROM room AS r
  INNER JOIN room_type AS rt ON r.room_type_id = rt.id AND rt.name = 'Doppelzimmer'
  LEFT JOIN booking_room AS br ON r.id = br.room_id
  LEFT JOIN booking AS b ON br.booking_id = b.`id`
  WHERE
    (b.checkin <= (SELECT i.to FROM inquiry AS i WHERE i.id = 1))
  AND
    (b.checkout >= (SELECT i.from FROM inquiry AS i WHERE i.id = 1));