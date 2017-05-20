START TRANSACTION;
SELECT rt.name FROM room_type AS rt;
COMMIT;

START TRANSACTION;
SELECT r.name, r.description FROM room AS r
  INNER JOIN room_type AS rt ON r.room_type_id = rt.id AND rt.name = 'Doppelzimmer'
  LEFT JOIN booking_room AS br ON r.id = br.room_id
  LEFT JOIN booking AS b ON br.booking_id = b.id
  WHERE (b.checkin <= '2018-02-14') AND (b.checkout >= '2017-02-12')
  FOR UPDATE;