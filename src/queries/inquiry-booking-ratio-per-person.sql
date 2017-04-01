SELECT COUNT(bookings.id)/COUNT(inquiries.id) as Buchungschance, Kontaktperson, Reisebüro FROM
 (
   SELECT b.id, b.referring_inquiry FROM booking b
   INNER JOIN person p ON p.id = b.referring_person_id
   LEFT JOIN company c ON p.id = c.contact_person_id
   WHERE YEAR(b.checkin) = 2017
 ) bookings
 RIGHT JOIN
 (
   SELECT i.id, CONCAT(p.forename, ' ', p.surname) as Kontaktperson, c.name as Reisebüro FROM inquiry i
   INNER JOIN person p ON i.person_id = p.id
   LEFT JOIN company c ON c.contact_person_id = p.id
   WHERE YEAR(i.from) = 2017
 ) inquiries ON bookings.referring_inquiry = inquiries.id
GROUP BY inquiries.Kontaktperson, inquiries.Reisebüro;
