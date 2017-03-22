# DBS - Datenbanksysteme, Team Blue
This repository contains the project and task of the module DBS (Datenbanksysteme) at FFHS. 

## Documents and links
 - [Presentation from block one](https://docs.google.com/presentation/d/1M0BOXiqj37ZzCPe8XAA4hvNnRSBWwDz9cL3_vbIhnko/edit)

## Conventions
Everything in this repository should follow these conventions.

### Naming
 - English language is used for all names

Property | Rules | Example
--- | --- | ---
Attribute names | Singular, lower case, resolve special characters, join multiple expressions by underscore (a.k.a. snake_case). | ``street_number``  
Table names | Singular of entity type, lower case | ``person``, ``house``, ..
Join table names | Names of participating entity types, joined by an underscore | ``person_company``
Primary key | Use ``id`` | ``id``
Foreign key | Related table name with a ``_id`` postfix | ``person_id``
Constraint names | Use the this pattern ``{tablename}_{columnname(s)}_{suffix}``. The following suffixes should be used: <ul><li>``pk`` for primary keys</li><li>``fk`` for foreign keys</li><li>``idx`` for indexes</li><li>``uniq`` for unique keys</li><li>``check`` for check constraints</li><li>``seq`` for sequence numbers</li></li><ul> | ``person_person_type_id_fk`` |

## Test server
The test server provides an MySQL database, which can be used for the group tasks. This server is hosted at SWITCHengines 
and the MySQL server is available at ``86.119.36.10`` on port ``41337``.

Username | Password | Databases
--- | --- | ---
andre | ZlazuLJQg~j* | starview_andre
thomas | uvh*F?OVl^C4 | starview_thomas
samuel | 3T*frriskXm4 | starview_samuel
robin | ejNT3~K:8x*N | starview_robin

### Setup
 1. Create a new server instance at SWITCHengines <br> ``server create --flavor c1.medium --image "Ubuntu Xenial 16.04 (SWITCHengines)" --key-name robin dbs``
 1. Assign a public ip address <br> ``floating ip create public`` <br> ``server add floating ip dbs 86.119.36.10``
 1. Login into server <br> ``ssh -i .ssh/robin@engines.switch.ch ubuntu@86.119.36.10``
 1. Install updates <br> ``apt update && apt upgrade -y``
 1. Restart server <br> ``shutdown -r now``
 1. Install MySQL server <br> ``apt install mysql-server``
 1. Change port of MySQL server <br> ``nano /etc/mysql/mysql.conf.d/mysqld.cnf``
    1. Change ``port    3306`` to ``port    41337``
    1. Comment out ``bind_address``
 1. Restart MySQL server <br> ``service mysql restart``
 1. Create MySQL user databases and accounts <br> ``mysql -p`` and run
    ```
    CREATE USER andre@'%' IDENTIFIED BY 'ZlazuLJQg~j*';
    CREATE DATABASE starview_andre; 
    GRANT ALL ON starview_andre.* TO andre@'%';
    CREATE USER thomas@'%' IDENTIFIED BY 'uvh*F?OVl^C4';
    CREATE DATABASE starview_thomas; 
    GRANT ALL ON starview_thomas.* TO thomas@'%';
    CREATE USER samuel@'%' IDENTIFIED BY '3T*frriskXm4';
    CREATE DATABASE starview_samuel; 
    GRANT ALL ON starview_samuel.* TO samuel@'%';
    CREATE USER robin@'%' IDENTIFIED BY 'ejNT3~K:8x*N';
    CREATE DATABASE starview_robin; 
    GRANT ALL ON starview_robin.* TO robin@'%';
    FLUSH PRIVILEGES;
    ```
 1. Log out from server
 1. Create a new security group <br> ``security group create mysql``
 1. Open port ``41337`` in security group <br> ``security group rule create --dst-port 41337 mysql``
 1. Apply security group to server instance <br> ``server add security group dbs mysql``
 
## Task Requirements / Checklist

### Notizen des ersten Treffens
Source: https://moodle.ffhs.ch/mod/page/view.php?id=228280

ID | Status | Comment | Original Text
--- | --- | --- | ---
0001 | ✔ | Solved by fields `forename`, `surname` and `email` in table `person`. | Die Zusammenarbeit mit den beliebten Online-Buchungsplattformen hat sich bewährt. Der Buchungsvorgang ist sehr einfach: Der Gast muss nur Vor- und Familienname sowie die E-Mail-Adresse angeben. Das Sternenblick lässt Stornierung ohne Kostenfolge zu.
0002 | ✔ | Travel Agencies and their employees can be stored as such using the `company_type` table. | Die unkomplizierte Zusammenarbeit mit vielen internationalen Reiseunternehmen bringt viele zusätzliche Gäste. Luzius ist überzeugt, dass dies vor allem an der intensiven Pflege des persönlichen Kontakts mit den Ansprechspersonen in den Reiseunternehmen liegt.
0003 | ✘ | There are no status fields telling if a present or email have been submitted to the guest. | Zum Geburtstag erhalten die Gäste jeweils eine Gratulation per E-Mail. Und Gäste, welche an Ihrem Geburtstag im Hotel sind, erhalten ein kleines Geschenk.

### Notizen des zweiten Treffens
Source: https://moodle.ffhs.ch/mod/page/view.php?id=228285

ID | Status | Comment | Original Text
--- | --- | --- | ---
0101 | ✔ | Shouldn't an `employee` entity reference a `person_id` instead of a `person` reference an `employee_id` as it is currently the case? See: https://moodle.ffhs.ch/mod/page/view.php?id=228273 <br> **Yes, this is implemented like this now.**| Auch die Mitarbeiter des Hotels dürfen mit Familie und Verwandten das Hotel benutzen und erhalten dabei Sonderkonditionen.
0102 | ✔ | Solved by the `employing_company` field in the `booking` table that references the company of a guest at the time of the booking. | Zudem ist es in den vergangenen Jahren gelungen, immer wieder mit Firmen zusammenzuarbeiten, welche für ihre Mitarbeitenden Geschäftsreisen in die Gegend buchen. Die Geschäftsreisenden kommen dann gerne als Privatpersonen wieder und bringen ihre Familien mit.

### Notizen Telefonat nach dem zweiten Treffen
Source: https://moodle.ffhs.ch/mod/page/view.php?id=228286

"Aurelia zählt die folgenden Angaben auf, welche sie in den bisher vorhandenen Adressdateien und Tabellen auffinden konnte."

ID | Status | Comment | Original Text
--- | --- | --- | ---
0201 | ✔ | Solved by the field `email` in table `person` | E-Mail-Adresse
0202 | ✔ | Solved by the field `birthday` in table `person` | Geburtsjahr
0203 | ✔ | Solved by the relation `person_phone` and the table `phone_number` | Telefonnummer, manchmal mehr als eine Nummer. Am wichtigsten ist die mobile Nummer, um den Gast auch unterwegs erreichen zu können.
0204 | ✔ | Solved by the field `street`, which is a text field, so it can contain any type of street name. | Eine Adresse kann mehrere Zeilen haben. Internationale Adressen können sehr umständlich formuliert sein.
0205 | ✔ | Solved by the field `zip` in table `address`. ZIP validation happens on application layer. | Postleitzahl - auch international (man habe viele Gäste aus Grossbritannien)
0206 | ✔ | Solved by the field `city` in table `address` | Ortschaft
0207 | ✔ | Solved by the field `country` in table `address` | Land
0208 | ✔ | Solved by the language and person_language table | Sprache
0209 | ✔ | Solved by the fields `social_insurance_number` (mandatory) and `legacy_social_insurance_number` (optional) | AHV-Nummer, aber nur bei Mitarbeitern. Bei einigen auch noch die alte AHV-Nummer
0200 | ✔ | Whatever this means ... | Von vielen Gästen gibt es keine genaue Adresse
0210 | ✔ | Solved by the FK relation `contact_person_id` in table `company` | Und bei Reisebüros braucht es noch die Ansprechperson.

### E-Mail von Aurelia
Source: https://moodle.ffhs.ch/mod/page/view.php?id=228287

ID | Status | Comment | Original Text
--- | --- | --- | ---
0301 | ✔ | Solved by the `room_attribute` table | Wir haben Einzel- und Doppelzimmer. Dabei vermeiden wir es möglichst, Doppelzimmer durch Einzelpersonen zu belegen.
0302 | ✔ | Solved by the `room_attribute` table | Bei den Doppelzimmern haben wir Zimmer mit getrennten Betten und Zimmer mit Queen-Size-Betten.
0303 | ✔ | Solved by the `room_attribute` table | In der Hochzeit-Suite ist ein King-Size-Bett.
0304 | ✔ | Solved by the `room_attribute` table | Wir haben Zimmer mit Bad/WC und andere Zimmer mit Dusche/WC. Im "Blauen Salon" haben wir sogar einen Wirlpool und eine Dusche.
0305 | ✔ | Solved by the `room_attribute` table | Die meisten Zimmer haben eine Minibar.
0306 | ? | Probably solved by `room_attribute` where the building to which a booked room belongs could be stored. However, it would probably be more concise if we used a proper 'building' or 'hotel' entity type... | Wir bauen ja gerade die Dépendance. Bei Reisegruppen wollen wir darauf achten, dass alle entweder im Haupttrakt oder in der Dépendance untergebracht sind.
0307 | ✔ | Solved by the `room_attribute` table | Einige der Gäste achten bei der Buchung vor allem auf den Blick auf die Alpen.
0308 | ✔ | Solved by the `room_attribute` table | Für einige Gäste ist das Stockwerk sehr wichtig. Manche wollen möglichst weit unten wohnen und andere bevorzugen die oberen Stockwerke.
0309 | ✔ | irrelevant for db| Wir haben ausschliesslich Nichtraucher-Zimmer.

### Notizen zum dritten Treffen
Source: https://moodle.ffhs.ch/mod/page/view.php?id=228289

ID | Status | Comment | Original Text
--- | --- | --- | ---
0401 | ✔ | Duplicate of #0101 | Mitarbeiter können auch Gäste sein und erhalten dann Sonderkonditionen für sich und ihre Begleitpersonen.
0402 | ✔ | Solved by the `referred_by` fields on `booking`. Travel Agencies (`company`) and Travel Agents can be SELECTed based on the amount of bookings they made in a given period of time.| Die Zusammenarbeit mit Reisebüros hat sich bewährt. Luzius möchte eine Übersicht erhalten, welches Reisebüro pro Jahr wieviele Übernachtungen bringt. Er trägt sich mit dem Gedanken, besonders guten Reisebüros Rabatt zu geben, oder auch besonders guten Mitarbeitern in Reisebüros zum Geburtstag eine kleine Aufmerksamkeit zu schicken. Aurelia fragt sich, woher sie das Geburtsdatum erfahren solle ...
0403 | ✔ | Solved by the `payment_card` table and optional fk `payment_card_id` from `booking_person` | Zur Buchung braucht man eigentlich nur die Angaben zur Person, sowie die E-Mail-Adresse. Aurelia meint, es wäre zeitgemässer, auch die Kreditkarte bei der Buchung zu verlangen. Auf den Online-Plattformen sei das üblich. Luzius meint, wir sollten das vorsehen (es solle aber vorerst nicht eine unbedingt notwendige Angabe sein).
0404 | ? | Could probably be solved by SELECTing all `room` entities that don't have any `booking` where `booking.checkin < now()` and `booking.checkout > now()`. However, maybe it's more efficient to add a 'occupied' property to the room entity type.| Bei der Buchung muss natürlich klar sein, ob das Hotel überhaupt Platz hat für die Übernachtung. Das Hotel hat 30 Zimmer mit verschiedenster Ausstattung. Aurelia hat ja dazu eine E-Mail geschickt.
0405 | ✔ | Room size can be stored in `room_attribute` | Luzius ist stolz auf die Einzelzimmer, welche ebenso geräumig sind, wie die Doppelzimmer.
0406 | ✔ | Solved by table `inquiry`| Aurelia weist darauf hin, dass Reisebüros oft anfragen, ob das Hotel Platz für eine Reisegruppe hätte. Dabei wird nur die Anzahl der Gäste genannt. Wenn Platz vorhanden ist, dann teilt das Reisebüro die Gäste selbst auf die Zimmer auf. Die Aufteilung wird dann beim Check-In eingetragen.
0407 | ✔ | Solved by table `inquiry` | Gerade die Reisebüros aus Fernost fragen für eine Gruppe mehrfach an. Und es kommt auch vor, dass Reisebüros für mehrere Gruppen anfragen. Da gilt es, diese Anfragen sorgfältig auseinander zu halten. Dass nach ein- bis zwei Tagen bei Reisebüro nachgefragt wird, ob die Buchung zu Stande kommen wird, hält Aurelia für selbstverständlich. Sie führt auch fein säuberlich Buch darüber, welche Anfragen zu welcher Buchung geführt haben. Das hilft ihr, einzuschätzen, wie wahrscheinlich eine Anfrage des jeweiligen Reisebüros zu einer Buchung führen wird.
0408 | ? | Duplicate of #0306 | Luzius berichtet, dass, das Hotel momentan durch einen Anbau erweitert wird.
0409 | ✔ | Solved by the fields `checkin` and `checkout` in table `booking` | Bei einer Buchung muss das Anreise-Datum und das Abreise-Datum angegeben werden.
0410 | ⌛ |  | Das Preismodell werden wir später untersuchen.

### Rückmeldung zum zweiten Block von Frau Vargas
Source: https://moodle.ffhs.ch/mod/forum/discuss.php?d=19712#p53079

ID | Status | Comment | Original Text
--- | --- | --- | ---
0501 | ? |  | Buchung: Die Buchung besitzt eine `referring_company`, `referring_person` und eine `employing_company`. Es wäre denkbar, dass die `referring_person` ausreicht. Davon kann auf das Reisebüro geschlossen werden. Allerdings hat in ihrem aktuellen Modell eine Person die Möglichkeit, zu verschiedenen Firmen zu gehören (`person_company`); dies dünkt mich semantisch nicht unbedingt gewollt, d.h. es ist schwer nachzuvollziehen, weshalb das so sein könnte. Aus diesem Grund (eine Person kann zu mehreren Firmen gehören) geht das mit dem Rückschluss von der Person auf die Company nicht.
0502 | ? |  | Wenn ich mich richtig erinnere, hatten Sie in einer früheren Version die Buchung und Buchungspositionen in zwei separaten Entitäten modelliert. Das fand ich eine gute und flexible Lösung. Sie können es sich dann sparen, dass z. B. bei Firmenbuchungen, die Referenz auf die Gastfirma, die `referring_person` und die `booking_person` mehrfach gemacht werden müssen. Sie könnten auch in Betracht ziehen, diese Informationen in die Entität `booking_person` zu verlegen.
0503 | ? |  | Eine der beiden Companies, so nehme ich an, wird verwendet für die Firmenbuchungen; der Name `guest_company` / `booking_company` wäre etwas aussagekräftiger.
0504 | ⌛ |  | Buchungsanfrage: Wenn Sie die Inquiries separat von der Buchung halten, dann wird es schwierig, aufgrund einer Anfrage die Zimmer zu blockieren. Aus dem Modell geht nicht klar hervor, wie Sie das lösen möchten. Vorstellbar wäre, dass es für Buchungen mehrere Stati gibt (z. B. Anfrage, Definitiv, Eingetroffen, Abgereist, Storniert). Das Hotel lässt ja auch kurzfristige Stornierungen ohne Kostenfolge zu, d.h. reservierte Zimmer müssen einigermassen dynamisch wieder frei gegeben werden können. Es kann auch sein, dass Gäste gar nie eintreffen und auch nicht stornieren. In diesem Fall ist es für die spätere Rechnungsstellung vermutlich nützlich zu wissen, ob die Gäste wirklich eingecheckt haben. Eine konkrete Anforderung dafür liegt jedoch noch nicht vor.