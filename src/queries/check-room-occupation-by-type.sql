SELECT r.name FROM room AS r
  INNER JOIN room_type AS rt ON r.room_type_id = rt.id AND rt.name = 'Doppelzimmer';

SELECT r.name, b.checkin, b.checkout FROM room AS r
  INNER JOIN room_type AS rt ON r.room_type_id = rt.id AND rt.name = 'Doppelzimmer'
  LEFT JOIN booking_room AS br ON r.id = br.room_id
  LEFT JOIN booking AS b ON br.booking_id = b.id;

SELECT r.name, b.checkin, b.checkout FROM room AS r
  INNER JOIN room_type AS rt ON r.room_type_id = rt.id AND rt.name = 'Doppelzimmer'
  LEFT JOIN booking_room AS br ON r.id = br.room_id
  LEFT JOIN booking AS b ON br.booking_id = b.id
  WHERE b.checkin <= '2017-03-26' AND b.checkout >= '2017-03-28';

SELECT r.name, b.checkin, b.checkout FROM room AS r
  INNER JOIN room_type AS rt ON r.room_type_id = rt.id AND rt.name = 'Doppelzimmer'
  LEFT JOIN booking_room AS br ON r.id = br.room_id
  LEFT JOIN booking AS b ON br.booking_id = b.id
  WHERE (b.checkin <= '2017-03-31') AND (b.checkout >= '2017-03-25');

SELECT ABS(COUNT(r.name) - (
    SELECT COUNT(*) FROM room AS r
      INNER JOIN room_type AS rt ON r.room_type_id = rt.id AND rt.name = 'Doppelzimmer'
  )) AS 'Anzahl freie Zimmer für Suchkriterien' FROM room AS r
  INNER JOIN room_type AS rt ON r.room_type_id = rt.id AND rt.name = 'Doppelzimmer'
  LEFT JOIN booking_room AS br ON r.id = br.room_id
  LEFT JOIN booking AS b ON br.booking_id = b.id
  WHERE (b.checkin <= '2017-03-28') AND (b.checkout >= '2017-03-25');

SELECT GREATEST((
    SELECT COUNT(*) FROM room AS r
      INNER JOIN room_type AS rt ON r.room_type_id = rt.id AND rt.name = 'Doppelzimmer'
  ) - COUNT(*), 0) AS 'Anzahl freie Zimmer für Suchkriterien' FROM room AS r
  INNER JOIN room_type AS rt ON r.room_type_id = rt.id AND rt.name = 'Doppelzimmer'
  LEFT JOIN booking_room AS br ON r.id = br.room_id
  LEFT JOIN booking AS b ON br.booking_id = b.`id`
  WHERE (b.checkin <= '2017-03-31') AND (b.checkout >= '2017-01-22');

SELECT GREATEST(0,2);

SELECT COUNT(*) FROM room AS r INNER JOIN room_type AS rt ON r.room_type_id = rt.id AND rt.name = 'Doppelzimmer';