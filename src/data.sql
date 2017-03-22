-- USE `starview`;

INSERT INTO `employee_type` (`name`) VALUES
  ('Funktionsstufe 1'),
  ('Funktionsstufe 2'),
  ('Funktionsstufe 3'),
  ('Funktionsstufe 4');

INSERT INTO `gender` (`name`) VALUES
  ('männlich'),
  ('weiblich');

INSERT INTO `name_suffix` (`name`) VALUES
  ('Dr.'),
  ('Prof.');

INSERT INTO `person` (`forename`, `surname`, `birthday`) VALUES ('Sonja', 'Huber', '1953-08-02');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`, `gender_id`) VALUES
  ('Mike', 'Hauser', 'mike.hauser@starview.ch', '1988-01-15', 1),
  ('Hans', 'Meier', 'hans.meier@starview.ch', '1973-02-18', 1),
  ('Tania', 'Brunner', 'tania.brunner@starview.ch', '1969-07-15', 2);
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Andrea', 'Tanner', 'andrea.tanner@starview.ch', '1959-10-05');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Rebbecca','Didio','rebbecca.didio@didio.com.au','1964-09-14');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Stevie','Hallo','stevie.hallo@hotmail.com','1959-10-23');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Mariko','Stayer','mariko_stayer@hotmail.com','1953-09-09');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Gerardo','Woodka','gerardo_woodka@hotmail.com','1950-04-05');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Mayra','Bena','mayra.bena@gmail.com','1989-10-01');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Idella','Scotland','idella@hotmail.com','1996-04-19');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Sherill','Klar','sklar@hotmail.com','1954-10-28');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Ena','Desjardiws','ena_desjardiws@desjardiws.com.au','1970-04-15');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Vince','Siena','vince_siena@yahoo.com','1967-04-03');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Theron','Jarding','tjarding@hotmail.com','1938-07-15');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Amira','Chudej','amira.chudej@chudej.net.au','1987-11-19');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Marica','Tarbor','marica.tarbor@hotmail.com','1991-05-19');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Shawna','Albrough','shawna.albrough@albrough.com.au','2000-01-18');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Paulina','Maker','paulina_maker@maker.net.au','1954-09-30');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Rose','Jebb','rose@jebb.net.au','1949-04-02');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Reita','Tabar','rtabar@hotmail.com','1933-10-13');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Maybelle','Bewley','mbewley@yahoo.com','1994-05-05');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Camellia','Pylant','camellia_pylant@gmail.com','1967-12-01');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Roy','Nybo','rnybo@nybo.net.au','1942-07-09');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Albert','Sonier','albert.sonier@gmail.com','1936-05-09');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Hayley','Taghon','htaghon@taghon.net.au','1977-03-13');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Norah','Daleo','ndaleo@daleo.net.au','1941-03-08');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Rosina','Sidhu','rosina_sidhu@gmail.com','1976-01-10');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Royal','Costeira','royal_costeira@costeira.com.au','1938-04-19');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Barrie','Nicley','bnicley@nicley.com.au','1943-09-07');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Linsey','Gedman','lgedman@gedman.net.au','1969-06-20');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Laura','Bourbonnais','laura.bourbonnais@yahoo.com','1998-02-21');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Fanny','Stoneking','fstoneking@hotmail.com','1957-08-14');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Kristian','Ellerbusch','kristian@yahoo.com','1953-03-18');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Gwen','Julye','gjulye@hotmail.com','1963-11-03');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Ben','Majorga','ben.majorga@hotmail.com','1951-03-13');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Trina','Oto','trina@oto.com.au','1992-07-15');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Emelda','Geffers','emelda.geffers@gmail.com','1973-12-13');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Zana','Ploszaj','zana_ploszaj@ploszaj.net.au','1950-11-30');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Shaun','Rael','shaun.rael@rael.com.au','1974-10-09');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Oren','Lobosco','olobosco@hotmail.com','1984-12-22');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Catherin','Aguele','caguele@gmail.com','1984-06-26');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Pearlene','Boudrie','pboudrie@boudrie.net.au','1980-12-08');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Kathryn','Bonalumi','kathryn.bonalumi@yahoo.com','1976-07-20');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Suzan','Landa','suzan.landa@gmail.com','1969-10-06');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Sommer','Agar','sagar@agar.net.au','1995-09-01');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Keena','Rebich','krebich@rebich.net.au','1980-10-06');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Rupert','Hinkson','rupert_hinkson@hinkson.net.au','1977-12-25');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Aleta','Poarch','apoarch@gmail.com','1964-01-27');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Jamal','Korczynski','jamal_korczynski@gmail.com','1978-04-05');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Luz','Broccoli','luz_broccoli@hotmail.com','1946-01-15');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Janessa','Ruthers','janessa@yahoo.com','1994-07-25');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Lavonne','Esco','lavonne.esco@yahoo.com','1942-06-07');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Honey','Lymaster','honey_lymaster@lymaster.net.au','1992-11-28');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Jean','Cecchinato','jean.cecchinato@gmail.com','1999-04-23');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Katlyn','Flitcroft','kflitcroft@hotmail.com','1981-06-28');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Cassie','Soros','csoros@gmail.com','1936-05-19');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Rolf','Gene','rolf_gene@gene.com.au','1987-02-19');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Darnell','Moothart','darnell_moothart@yahoo.com','1938-10-24');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Cherilyn','Fraize','cherilyn_fraize@fraize.net.au','1979-07-14');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Lynda','Lazzaro','lynda.lazzaro@gmail.com','1950-07-04');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Leigha','Capelli','leigha.capelli@capelli.com.au','1975-12-31');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Delfina','Binnie','delfina_binnie@binnie.net.au','1933-05-22');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Carlota','Gephardt','carlota.gephardt@gephardt.com.au','1970-06-30');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Alida','Helger','alida@helger.com.au','1981-04-21');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Donte','Resureccion','donte.resureccion@yahoo.com','1988-12-26');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Lou','Kriner','lou.kriner@hotmail.com','1978-10-24');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Dortha','Vrieze','dortha@vrieze.net.au','1968-09-30');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Genevive','Sanborn','genevive@hotmail.com','1962-09-19');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Alease','Strawbridge','alease_strawbridge@strawbridge.com.au','1957-05-31');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Veda','Mishkin','veda.mishkin@mishkin.com.au','1975-06-08');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Craig','Vandersloot','craig_vandersloot@yahoo.com','1941-10-22');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Lauran','Tovmasyan','ltovmasyan@tovmasyan.net.au','1988-06-28');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Aaron','Kloska','aaron_kloska@kloska.net.au','1938-08-15');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Francene','Skursky','francene.skursky@skursky.net.au','1947-10-06');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Zena','Daria','zdaria@gmail.com','1971-02-19');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Brigette','Breckenstein','brigette@breckenstein.com.au','1981-01-24');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Jeniffer','Jezek','jeniffer@gmail.com','2000-11-15');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Selma','Elm','selm@elm.net.au','1989-02-21');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Elenora','Handler','ehandler@yahoo.com','1959-06-11');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Nadine','Okojie','nadine.okojie@okojie.com.au','1961-10-06');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Kristin','Shiflet','kristin@hotmail.com','1969-02-01');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Melinda','Fellhauer','melinda_fellhauer@fellhauer.com.au','1943-09-25');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Kirby','Litherland','kirby.litherland@hotmail.com','1946-11-12');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Kent','Ivans','kent_ivans@yahoo.com','1952-07-29');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Dan','Platz','dan_platz@hotmail.com','1938-09-10');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Millie','Pirkl','millie_pirkl@gmail.com','1962-09-18');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Moira','Qadir','moira.qadir@gmail.com','1976-02-01');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Reta','Qazi','reta.qazi@yahoo.com','1960-08-25');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Brittney','Lolley','brittney@lolley.net.au','1980-05-13');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Leandro','Bolka','leandro_bolka@hotmail.com','1965-10-20');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Edison','Sumera','edison.sumera@sumera.net.au','1939-11-23');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Breana','Cassi','breana@yahoo.com','1988-05-22');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Jarvis','Nicols','jarvis@gmail.com','1942-09-13');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Felicitas','Orlinski','felicitas_orlinski@orlinski.com.au','1976-06-08');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Geraldine','Neisius','geraldine@gmail.com','1969-02-25');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Alfred','Pacleb','alfred@pacleb.net.au','1941-06-01');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Leatha','Block','leatha_block@gmail.com','1949-04-03');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Jacquelyne','Rosso','jacquelyne.rosso@yahoo.com','1982-05-30');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Jonelle','Epps','jepps@hotmail.com','1963-06-21');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Rosamond','Amlin','rosamond.amlin@gmail.com','1988-05-17');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Johnson','Mcenery','johnson@gmail.com','1974-07-01');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Elliot','Scatton','elliot.scatton@hotmail.com','1966-08-27');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Gerri','Perra','gerri@yahoo.com','1998-08-18');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Rosendo','Jelsma','rosendo_jelsma@hotmail.com','2000-12-02');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Eveline','Brickhouse','eveline@yahoo.com','1983-10-09');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Laurene','Bennett','laurene_bennett@gmail.com','1944-02-11');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Tegan','Ebershoff','tegan_ebershoff@hotmail.com','1987-03-17');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Tracie','Huro','thuro@gmail.com','1941-07-29');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Mertie','Kazeck','mertie.kazeck@kazeck.com.au','1998-08-20');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Clare','Bortignon','clare_bortignon@hotmail.com','1992-11-08');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Rebeca','Baley','rebeca_baley@hotmail.com','1942-11-12');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Nilsa','Pawell','npawell@pawell.net.au','1984-10-09');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Samuel','Arellanes','samuel.arellanes@arellanes.net.au','1934-05-18');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Ivette','Servantes','ivette_servantes@servantes.com.au','1950-06-30');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Merrilee','Fajen','merrilee@fajen.net.au','1964-09-03');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Gianna','Eilers','gianna@yahoo.com','1970-06-26');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Hyman','Phinazee','hphinazee@yahoo.com','1951-01-21');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Buck','Pascucci','buck@yahoo.com','1938-10-02');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Kenny','Leicht','kenny@leicht.com.au','1996-01-26');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Tabetha','Bai','tabetha.bai@gmail.com','1998-10-24');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Alonso','Popper','alonso_popper@hotmail.com','1937-12-25');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Alonzo','Polek','alonzo_polek@polek.net.au','1960-06-15');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Son','Magnotta','son.magnotta@magnotta.net.au','1971-01-02');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Jesusita','Druck','jesusita@druck.net.au','1948-05-27');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Annice','Kunich','annice_kunich@kunich.net.au','1960-03-15');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Delila','Buchman','delila.buchman@hotmail.com','1977-08-06');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Iraida','Sionesini','iraida.sionesini@yahoo.com','1988-10-26');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Alona','Driesenga','alona_driesenga@hotmail.com','1968-04-16');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Lajuana','Vonderahe','lajuana.vonderahe@yahoo.com','1978-07-22');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Madelyn','Maestri','madelyn.maestri@yahoo.com','1971-07-21');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Louann','Susmilch','louann_susmilch@yahoo.com','1997-09-18');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('William','Devol','wdevol@devol.net.au','1949-04-09');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Corazon','Grafenstein','cgrafenstein@gmail.com','1947-05-07');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Fairy','Burket','fairy_burket@burket.com.au','1949-06-03');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Lashawn','Urion','lurion@yahoo.com','1937-11-18');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Ronald','Gayner','rgayner@hotmail.com','1968-07-07');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Shizue','Hayduk','shayduk@gmail.com','1997-06-12');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Nida','Fitz','nfitz@hotmail.com','1990-02-04');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Amos','Limberg','alimberg@limberg.com.au','1935-12-03');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Dexter','Prosienski','dexter@prosienski.net.au','1933-01-30');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Ludivina','Calamarino','lcalamarino@yahoo.com','1998-06-25');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Ariel','Stavely','ariel_stavely@stavely.com.au','1982-08-30');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Haley','Vaughn','haley_vaughn@vaughn.net.au','1952-08-16');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Raelene','Legeyt','raelene@gmail.com','1941-05-07');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Micaela','Shiflett','micaela_shiflett@shiflett.com.au','1951-02-09');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Alpha','Prudhomme','aprudhomme@hotmail.com','1983-01-17');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Zack','Warman','zwarman@gmail.com','2000-02-07');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Wilford','Pata','wilford_pata@pata.net.au','1937-06-22');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Carman','Robasciotti','carman_robasciotti@hotmail.com','1996-06-11');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Carylon','Bayot','carylon@gmail.com','1997-11-24');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Gladys','Schmale','gschmale@schmale.net.au','1971-12-09');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Matilda','Peleg','matilda.peleg@hotmail.com','1973-08-28');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Jacklyn','Wojnar','jacklyn@hotmail.com','1956-11-30');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Tashia','Charney','tashia.charney@charney.net.au','1955-05-18');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Dorian','Eischens','deischens@gmail.com','1972-07-05');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Jesus','Merkt','jesus_merkt@merkt.net.au','1946-10-04');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Brandee','Svoboda','brandee_svoboda@svoboda.net.au','1978-12-14');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Edda','Mcquaide','emcquaide@yahoo.com','1947-05-12');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Felix','Bumby','felix.bumby@bumby.com.au','1968-06-24');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Ben','Kellman','ben_kellman@kellman.net.au','1979-09-01');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Mickie','Upton','mickie.upton@yahoo.com','1983-01-21');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Phung','Krome','pkrome@yahoo.com','1974-12-19');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Lashonda','Langanke','lashonda@langanke.net.au','1959-08-04');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Patria','Popa','patria.popa@gmail.com','1967-02-27');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Nidia','Horr','nidia@gmail.com','1969-08-01');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Skye','Culcasi','skye_culcasi@hotmail.com','1944-05-21');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Kanisha','Reyelts','kreyelts@yahoo.com','1977-12-18');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Hector','Barras','hector.barras@barras.com.au','1937-01-06');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Stefan','Mongolo','stefan_mongolo@mongolo.net.au','1941-10-27');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Francoise','Byon','francoise@hotmail.com','1990-06-25');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Lindy','Vandermeer','lindy@vandermeer.com.au','1989-12-27');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Arthur','Diniz','arthur@gmail.com','1948-01-21');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Nicholle','Hulme','nicholle_hulme@hulme.com.au','1958-11-03');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Tijuana','Mesch','tijuana_mesch@gmail.com','1944-06-03');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Lorenza','Schoenleber','lorenza.schoenleber@schoenleber.com.au','1978-12-25');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Iola','Baird','ibaird@baird.net.au','1983-03-09');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Sang','Weigner','sweigner@gmail.com','1990-07-04');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Leonor','Prez','lprez@prez.com.au','1934-03-01');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Silvana','Whelpley','swhelpley@yahoo.com','1971-02-09');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Anthony','Stever','anthony.stever@hotmail.com','1991-04-01');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Wenona','Carmel','wenona@gmail.com','1983-05-13');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Isadora','Yurick','iyurick@hotmail.com','1979-07-15');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Mose','Vonseggern','mose_vonseggern@hotmail.com','1956-04-03');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Marci','Aveline','marci.aveline@hotmail.com','1971-02-01');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Michel','Hoyne','michel@hoyne.com.au','1990-06-14');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Stephania','Connon','stephania.connon@connon.com.au','1983-04-24');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Charolette','Turk','cturk@yahoo.com','1979-12-31');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Katie','Magro','katie_magro@gmail.com','1992-09-12');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Inocencia','Angeron','inocencia.angeron@angeron.net.au','1944-10-02');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Nikita','Novosel','nikita_novosel@novosel.net.au','1947-03-05');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Malcolm','Gohlke','malcolm@yahoo.com','1936-07-11');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Desiree','Englund','denglund@gmail.com','1970-03-22');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Holley','Worland','holley.worland@hotmail.com','1963-02-24');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Maryann','Tates','mtates@yahoo.com','1979-10-31');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Ling','Dibello','ling_dibello@yahoo.com','1946-07-30');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Hailey','Kopet','hailey_kopet@kopet.com.au','1965-10-17');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Farrah','Malboeuf','farrah@malboeuf.com.au','1959-03-11');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Candra','Deritis','candra@deritis.net.au','1961-05-03');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Reuben','Hegland','reuben@yahoo.com','1952-09-01');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Anglea','Andrion','anglea.andrion@andrion.com.au','1989-08-23');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Paris','Tuccio','paris.tuccio@hotmail.com','1953-08-09');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Latricia','Schmoyer','latricia_schmoyer@hotmail.com','1973-07-21');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Jeffrey','Leuenberger','jleuenberger@yahoo.com','2000-08-01');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Dean','Vollstedt','dvollstedt@vollstedt.com.au','1946-08-18');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Deane','Haag','dhaag@hotmail.com','1946-01-11');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Edelmira','Pedregon','edelmira_pedregon@hotmail.com','1951-06-25');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Andrew','Keks','andrew@gmail.com','1978-01-21');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Miesha','Decelles','mdecelles@decelles.net.au','1999-08-08');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Javier','Osmer','javier@osmer.com.au','1955-05-21');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Kizzy','Stangle','kizzy.stangle@yahoo.com','1949-05-14');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Sharan','Wodicka','sharan@wodicka.net.au','2000-09-13');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Novella','Fritch','nfritch@fritch.com.au','1992-03-20');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('German','Dones','german@gmail.com','1934-01-30');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Robt','Blanck','robt.blanck@yahoo.com','1978-07-13');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Rossana','Biler','rossana.biler@biler.net.au','1943-10-11');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Henriette','Gish','henriette.gish@gish.net.au','1985-09-12');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Buffy','Stitely','buffy_stitely@stitely.com.au','1991-02-04');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Christiane','Osmanski','christiane@gmail.com','1992-02-16');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Annamae','Lothridge','alothridge@hotmail.com','1977-01-28');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Vanesa','Glockner','vanesa@glockner.com.au','1974-09-26');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Gennie','Pastorino','gennie.pastorino@gmail.com','1933-10-23');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Tamra','Kenfield','tkenfield@kenfield.com.au','1964-12-04');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Tien','Kinney','tien_kinney@kinney.com.au','1976-04-26');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Malcom','Leja','malcom@leja.com.au','1981-12-17');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Claudia','Gawrych','claudia@gmail.com','1957-10-26');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Page','Entzi','page@entzi.net.au','1958-07-21');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Lorita','Roches','lorita_roches@roches.net.au','1994-04-29');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Annita','Lek','annita.lek@lek.net.au','1995-09-03');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Eliseo','Mikovec','emikovec@mikovec.com.au','1959-08-10');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Tyisha','Layland','tyisha@yahoo.com','1954-09-30');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Colene','Tolbent','colene.tolbent@tolbent.net.au','1997-06-14');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Francis','Senters','fsenters@gmail.com','1965-09-19');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Hester','Dollins','hester_dollins@gmail.com','1982-07-07');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Susana','Baumgarter','susana.baumgarter@yahoo.com','1994-01-04');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Dahlia','Tummons','dahlia.tummons@gmail.com','1991-01-18');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Osvaldo','Falvey','osvaldo.falvey@yahoo.com','1968-03-12');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Armando','Barkley','armando.barkley@yahoo.com','1996-04-13');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Torie','Deras','torie_deras@yahoo.com','1987-09-18');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Tamie','Hollimon','tamie@hollimon.com.au','1939-05-13');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Lettie','Hessenthaler','lettie_hessenthaler@hessenthaler.net.au','1935-07-31');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Chaya','Muhlbauer','chaya_muhlbauer@muhlbauer.net.au','1940-02-16');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Terina','Wildeboer','terina_wildeboer@wildeboer.com.au','1966-10-12');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Lisbeth','Agney','lisbeth.agney@agney.net.au','1978-05-06');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Lillian','Dominique','lillian@hotmail.com','1975-08-14');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Corrina','Lindblom','clindblom@gmail.com','1956-09-28');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Dylan','Chaleun','dylan_chaleun@hotmail.com','1935-03-25');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Jerrod','Luening','jerrod_luening@luening.com.au','1936-08-10');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Gracie','Vicente','gracie.vicente@hotmail.com','1971-10-28');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Barabara','Amedro','barabara@amedro.net.au','1937-08-01');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Delsie','Ducos','dducos@hotmail.com','1985-12-31');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Cassie','Digregorio','cdigregorio@digregorio.net.au','1973-02-10');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Tamekia','Kajder','tamekia_kajder@yahoo.com','1995-03-26');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Johanna','Saffer','johanna@yahoo.com','1935-12-14');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Sharita','Kruk','sharita_kruk@gmail.com','1950-12-16');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Gerald','Chrusciel','gerald@chrusciel.net.au','1941-06-09');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Ardella','Dieterich','ardella.dieterich@yahoo.com','1973-02-08');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Jackie','Kellebrew','jackie.kellebrew@kellebrew.com.au','1990-04-03');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Mabelle','Ramero','mabelle.ramero@ramero.net.au','1964-08-18');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Jonell','Biasi','jbiasi@biasi.net.au','1956-04-15');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Linwood','Wessner','linwood.wessner@hotmail.com','1944-02-02');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Samira','Heninger','sheninger@yahoo.com','1994-02-05');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Julieta','Cropsey','julieta@yahoo.com','1941-05-25');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Serita','Barthlow','serita_barthlow@gmail.com','1944-01-25');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Tori','Tepley','tori@tepley.net.au','1955-10-22');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Nancey','Whal','nancey@whal.net.au','1997-10-18');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Wilbert','Beckes','wilbert@hotmail.com','1957-10-23');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Werner','Hermens','whermens@hermens.net.au','1961-09-20');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Sunny','Catton','scatton@catton.com.au','1982-12-10');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Keva','Moehring','keva.moehring@moehring.net.au','1934-02-18');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Mary','Dingler','mary.dingler@gmail.com','1952-12-05');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Huey','Bukovac','huey.bukovac@hotmail.com','1966-04-03');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Antonio','Eighmy','antonio.eighmy@yahoo.com','1973-02-27');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Quinn','Weissbrodt','qweissbrodt@weissbrodt.com.au','1968-01-10');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Carin','Georgiades','cgeorgiades@gmail.com','1953-10-12');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Jill','Davoren','jill_davoren@davoren.net.au','1951-03-21');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Sanjuana','Goodness','sgoodness@goodness.net.au','1946-07-21');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Elin','Koerner','elin_koerner@koerner.com.au','1994-04-27');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Charlena','Decamp','charlena@gmail.com','1966-11-22');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Annette','Breyer','abreyer@hotmail.com','1951-08-11');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Alexis','Morguson','amorguson@morguson.com.au','1944-02-05');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Princess','Saffo','princess_saffo@hotmail.com','1998-09-29');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Ashton','Sutherburg','asutherburg@gmail.com','1984-09-13');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Elmer','Redlon','elmer@hotmail.com','1981-04-26');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Aliza','Akiyama','aliza@yahoo.com','1967-04-18');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Ora','Handrick','ora.handrick@gmail.com','1952-01-21');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Brent','Ahlborn','bahlborn@ahlborn.com.au','1997-12-25');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Tora','Telch','tora@telch.net.au','1941-02-19');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Hildred','Eilbeck','hildred_eilbeck@eilbeck.net.au','1978-10-26');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Dante','Freiman','dante_freiman@freiman.net.au','1980-04-02');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Emmanuel','Avera','emmanuel@yahoo.com','1972-03-28');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Keshia','Wasp','kwasp@wasp.net.au','1951-01-31');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Sherman','Mahmud','sherman@mahmud.com.au','1957-02-27');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Lore','Brothers','lore@hotmail.com','1954-10-22');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Shawn','Weibe','shawn@hotmail.com','1940-01-14');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Karima','Cheever','karima_cheever@hotmail.com','1995-07-31');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Francesco','Kloos','fkloos@kloos.com.au','1948-03-27');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('King','Picton','king@hotmail.com','1995-04-01');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Mica','Simco','msimco@gmail.com','1981-01-09');
INSERT INTO `person` (`forename`, `surname`, `email`, `birthday`) VALUES ('Lamonica','Princiotta','lamonica@hotmail.com','1944-09-23');

INSERT INTO `person_name_suffix` (`person_id`, `name_suffix_id`) VALUES
  (1, 1),
  (1, 2),
  (2, 1);

INSERT INTO `phone_number_type` (`name`) VALUES ('Privat'), ('Mobil'), ('Geschäft');

INSERT INTO `phone_number` (`phone_number_type_id`, `number`) VALUES ('2', '123412431241');
INSERT INTO `phone_number` (`phone_number_type_id`, `number`) VALUES ('1', '129837419274');
INSERT INTO `phone_number` (`phone_number_type_id`, `number`) VALUES ('3', '385293875398');
INSERT INTO `phone_number` (`phone_number_type_id`, `number`) VALUES ('3', '098034532545');
INSERT INTO `phone_number` (`phone_number_type_id`, `number`) VALUES ('3', '123482390535');

INSERT INTO `person_phone` (`person_id`, `phone_number_id`) VALUES ('1', '2');
INSERT INTO `person_phone` (`person_id`, `phone_number_id`) VALUES ('2', '3');
INSERT INTO `person_phone` (`person_id`, `phone_number_id`) VALUES ('3', '4');
INSERT INTO `person_phone` (`person_id`, `phone_number_id`) VALUES ('4', '5');

INSERT INTO `language` (`id`, `language`) VALUES ('1', 'Arabisch');
INSERT INTO `language` (`id`, `language`) VALUES ('2', 'Belgisch');
INSERT INTO `language` (`id`, `language`) VALUES ('3', 'Deutsch');
INSERT INTO `language` (`id`, `language`) VALUES ('4', 'Englisch');
INSERT INTO `language` (`id`, `language`) VALUES ('5', 'Französisch');
INSERT INTO `language` (`id`, `language`) VALUES ('6', 'Holländisch');
INSERT INTO `language` (`id`, `language`) VALUES ('7', 'Italienisch');
INSERT INTO `language` (`id`, `language`) VALUES ('8', 'Polnisch');
INSERT INTO `language` (`id`, `language`) VALUES ('9', 'Russisch');
INSERT INTO `language` (`id`, `language`) VALUES ('10', 'Spanisch');
INSERT INTO `language` (`id`, `language`) VALUES ('11', 'Tschechisch');

INSERT INTO `person_language` (`person_id`, `language_id`, `is_preferred`) VALUES ('1', '3', '1');
INSERT INTO `person_language` (`person_id`, `language_id`, `is_preferred`) VALUES ('1', '5', '0');
INSERT INTO `person_language` (`person_id`, `language_id`, `is_preferred`) VALUES ('1', '4', '0');
INSERT INTO `person_language` (`person_id`, `language_id`, `is_preferred`) VALUES ('2', '3', '1');
INSERT INTO `person_language` (`person_id`, `language_id`, `is_preferred`) VALUES ('2', '4', '0');
INSERT INTO `person_language` (`person_id`, `language_id`, `is_preferred`) VALUES ('2', '7', '0');
INSERT INTO `person_language` (`person_id`, `language_id`, `is_preferred`) VALUES ('3', '3', '1');
INSERT INTO `person_language` (`person_id`, `language_id`, `is_preferred`) VALUES ('3', '4', '0');
INSERT INTO `person_language` (`person_id`, `language_id`, `is_preferred`) VALUES ('3', '1', '0');
INSERT INTO `person_language` (`person_id`, `language_id`, `is_preferred`) VALUES ('3', '9', '0');
INSERT INTO `person_language` (`person_id`, `language_id`, `is_preferred`) VALUES ('3', '11', '0');
INSERT INTO `person_language` (`person_id`, `language_id`, `is_preferred`) VALUES ('4', '4', '1');
INSERT INTO `person_language` (`person_id`, `language_id`, `is_preferred`) VALUES ('4', '3', '0');
INSERT INTO `person_language` (`person_id`, `language_id`, `is_preferred`) VALUES ('4', '7', '0');
INSERT INTO `person_language` (`person_id`, `language_id`, `is_preferred`) VALUES ('5', '3', '1');
INSERT INTO `person_language` (`person_id`, `language_id`, `is_preferred`) VALUES ('5', '10', '0');

INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('98120150910', '3955731427349', '1', 1);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('11071804293', '8814910594771', '2', 2);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('26425829140', '4467830161295', '3', 3);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('63700816357', '9006021087102', '4', 4);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('32928719112', '5885399947139', '4', 5);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('99178642270', '7871375194733', '2', 6);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('84176100120', '6684817766592', '3', 7);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('62235755443', '5083014864110', '4', 8);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('92975788874', '2401097650959', '2', 9);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('26232155861', '5096539536063', '1', 10);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('64603497658', '8943682385830', '2', 11);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('88416931227', '6959873162776', '4', 12);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('70280746925', '4536817216486', '3', 13);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('65583714356', '4207796567367', '2', 14);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('83150161564', '1071363594231', '4', 15);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('96498746078', '8409041101977', '1', 16);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('24340590391', '1869691448092', '1', 17);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('40375797767', '1295834051432', '2', 18);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('24856429504', '1690292730919', '3', 19);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('25327471852', '3547410475947', '3', 20);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('44905979650', '2711186460434', '1', 21);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('17999494144', '2665215419380', '1', 22);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('25472181296', '5267834960935', '4', 23);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('21819933262', '8918357124645', '3', 24);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('40996687009', '8967158225929', '2', 25);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`,  `employee_type_id`, `person_id`) VALUES ('87514473779', '1561580626092', '4', 26);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`, `employee_type_id`, `person_id`) VALUES ('12345678901', '1234567890123', '1', 27);
INSERT INTO `employee` (`legacy_social_insurance_number`, `social_insurance_number`, `employee_type_id`, `person_id`) VALUES ('23456789012', '2345678901234', '3', 28);

INSERT INTO `company_type` (`name`) VALUES
  ('Reisebüro'),
  ('Andere');

INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Reisebüro Harry Kolb AG', '1');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Reisebüro Travelpoint Müller', '1');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Basilisk Reisebüro AG', '1');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Reisebüro ATR-Tours', '1');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Reisebüro Legends Travel GmbH', '1');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Artesian Ice & Cold Storage Co', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Midway Hotel', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Selsor, Robert J Esq', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Vincent J Petti & Co', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Prentiss, Paul F Esq', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Public Works Department', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Prudential Lighting Corp', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Wood, J Scott Esq', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Swanson Peterson Fnrl Home Inc', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Old Cider Mill Grove', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Cooper Myers Y Co', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Angelo International', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Blackley, William J Pa', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Phoenix Phototype', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Quartzite Processing Inc', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Biltmore Textile Co Inc', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Gateway Refrigeration', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Anchorage Yamaha', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Wynns Precision Inc Az Div', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Paragon Cable Tv', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Eagle Computer Services Inc', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Kansas Association Ins Agtts', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Di Giacomo, Richard F Esq', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Butler, Frank B Esq', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Alphagraphics Printshops', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Voyager Travel Service', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('N Amer Plast & Chemls Co Inc', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('D L Downing General Contr Inc', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Community Insurance Agy Inc', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('House Of Ing', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Vei Inc', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Hanna, Robert J Esq', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Design Rite Homes Inc', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('State Library', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Vista Grande Baptist Church', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Poole Publications Inc', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Affilated Consulting Group Inc', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Northwestern Mutual Life Ins', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Barrett Burke Wilson Castl', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Helricks Inc', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Wynn, Mary Ellen Esq', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Mackraft Signs', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Ansaring Answering Service', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Joiner & Goudeau Law Offices', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Cox, J Thomas Jr', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Bill, Michael M', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('A B C Tank Co', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Jolley, Mark A Cpa', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Melco Embroidery Systems', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Witchs Brew', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Funding Equity Corp', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Saturn Of Delray', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Motel 6', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Ultimate In Womens Apparel The', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Ballinger, Maria Chan Esq', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('N E Industrial Distr Inc', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Joondeph, Jerome J Esq', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Art In Forms', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Central Hudson Ent Corp', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Marscher, William F Iii', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Smith, Sean O Esq', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Maverik Country Stores Inc', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('United Christian Cmnty Crdt Un', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Radecker, H Philip Jr', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Cullen, Jack J Esq', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Kszl Am Radio', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Blewett, Yvonne S', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Sheraton Inn Atlanta Northwest', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Preston, Anne M Esq', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('A & A Custom Rubber Stamps', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Hirsch, Walter W Esq', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Jones, Peter B Esq', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Sterling Institute', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Cross Western Store', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Demer Normann Smith Ltd', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Ny Stat Trial Lawyers Assn', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Mann, Charles E Esq', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Airnetics Engineering Co', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('American Pie Co Inc', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Brown Chiropractic', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Classic Video Duplication Inc', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Mcclier Corp', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Gormley Lore Murphy', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Thudium Mail Advg Company', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Jen E Distributing Co', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Re/max Realty Services', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Roundys Pole Fence Co', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Chadds Ford Winery', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Barragar, Anne L Esq', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Kvoo Radio', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Donovan, William P Esq', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Overseas General Business Co', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Nilad Machining', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Byrne, Beth Hobbs', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Dileo, Lucille A Esq', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('First Express', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Elbin Internatl Baskets', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Multiform Business Printing', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Jin Shin Travel Agency', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Electra Gear Divsn Regal', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('Sparta Home Center', '2');
INSERT INTO `company` (`name`, `company_type_id`) VALUES ('R A C E Enterprises Inc', '2');

INSERT INTO `country` (`code`, `name`) VALUES
  ('AF', 'Afghanistan'),
  ('AL', 'Albania'),
  ('DZ', 'Algeria'),
  ('DS', 'American Samoa'),
  ('AD', 'Andorra'),
  ('AO', 'Angola'),
  ('AI', 'Anguilla'),
  ('AQ', 'Antarctica'),
  ('AG', 'Antigua and Barbuda'),
  ('AR', 'Argentina'),
  ('AM', 'Armenia'),
  ('AW', 'Aruba'),
  ('AU', 'Australia'),
  ('AT', 'Austria'),
  ('AZ', 'Azerbaijan'),
  ('BS', 'Bahamas'),
  ('BH', 'Bahrain'),
  ('BD', 'Bangladesh'),
  ('BB', 'Barbados'),
  ('BY', 'Belarus'),
  ('BE', 'Belgium'),
  ('BZ', 'Belize'),
  ('BJ', 'Benin'),
  ('BM', 'Bermuda'),
  ('BT', 'Bhutan'),
  ('BO', 'Bolivia'),
  ('BA', 'Bosnia and Herzegovina'),
  ('BW', 'Botswana'),
  ('BV', 'Bouvet Island'),
  ('BR', 'Brazil'),
  ('IO', 'British Indian Ocean Territory'),
  ('BN', 'Brunei Darussalam'),
  ('BG', 'Bulgaria'),
  ('BF', 'Burkina Faso'),
  ('BI', 'Burundi'),
  ('KH', 'Cambodia'),
  ('CM', 'Cameroon'),
  ('CA', 'Canada'),
  ('CV', 'Cape Verde'),
  ('KY', 'Cayman Islands'),
  ('CF', 'Central African Republic'),
  ('TD', 'Chad'),
  ('CL', 'Chile'),
  ('CN', 'China'),
  ('CX', 'Christmas Island'),
  ('CC', 'Cocos (Keeling) Islands'),
  ('CO', 'Colombia'),
  ('KM', 'Comoros'),
  ('CG', 'Congo'),
  ('CK', 'Cook Islands'),
  ('CR', 'Costa Rica'),
  ('HR', 'Croatia (Hrvatska)'),
  ('CU', 'Cuba'),
  ('CY', 'Cyprus'),
  ('CZ', 'Czech Republic'),
  ('DK', 'Denmark'),
  ('DJ', 'Djibouti'),
  ('DM', 'Dominica'),
  ('DO', 'Dominican Republic'),
  ('TP', 'East Timor'),
  ('EC', 'Ecuador'),
  ('EG', 'Egypt'),
  ('SV', 'El Salvador'),
  ('GQ', 'Equatorial Guinea'),
  ('ER', 'Eritrea'),
  ('EE', 'Estonia'),
  ('ET', 'Ethiopia'),
  ('FK', 'Falkland Islands (Malvinas)'),
  ('FO', 'Faroe Islands'),
  ('FJ', 'Fiji'),
  ('FI', 'Finland'),
  ('FR', 'France'),
  ('FX', 'France, Metropolitan'),
  ('GF', 'French Guiana'),
  ('PF', 'French Polynesia'),
  ('TF', 'French Southern Territories'),
  ('GA', 'Gabon'),
  ('GM', 'Gambia'),
  ('GE', 'Georgia'),
  ('DE', 'Germany'),
  ('GH', 'Ghana'),
  ('GI', 'Gibraltar'),
  ('GK', 'Guernsey'),
  ('GR', 'Greece'),
  ('GL', 'Greenland'),
  ('GD', 'Grenada'),
  ('GP', 'Guadeloupe'),
  ('GU', 'Guam'),
  ('GT', 'Guatemala'),
  ('GN', 'Guinea'),
  ('GW', 'Guinea-Bissau'),
  ('GY', 'Guyana'),
  ('HT', 'Haiti'),
  ('HM', 'Heard and Mc Donald Islands'),
  ('HN', 'Honduras'),
  ('HK', 'Hong Kong'),
  ('HU', 'Hungary'),
  ('IS', 'Iceland'),
  ('IN', 'India'),
  ('IM', 'Isle of Man'),
  ('ID', 'Indonesia'),
  ('IR', 'Iran (Islamic Republic of)'),
  ('IQ', 'Iraq'),
  ('IE', 'Ireland'),
  ('IL', 'Israel'),
  ('IT', 'Italy'),
  ('CI', 'Ivory Coast'),
  ('JE', 'Jersey'),
  ('JM', 'Jamaica'),
  ('JP', 'Japan'),
  ('JO', 'Jordan'),
  ('KZ', 'Kazakhstan'),
  ('KE', 'Kenya'),
  ('KI', 'Kiribati'),
  ('KP', 'Korea, Democratic People''s Republic of'),
  ('KR', 'Korea, Republic of'),
  ('XK', 'Kosovo'),
  ('KW', 'Kuwait'),
  ('KG', 'Kyrgyzstan'),
  ('LA', 'Lao People''s Democratic Republic'),
  ('LV', 'Latvia'),
  ('LB', 'Lebanon'),
  ('LS', 'Lesotho'),
  ('LR', 'Liberia'),
  ('LY', 'Libyan Arab Jamahiriya'),
  ('LI', 'Liechtenstein'),
  ('LT', 'Lithuania'),
  ('LU', 'Luxembourg'),
  ('MO', 'Macau'),
  ('MK', 'Macedonia'),
  ('MG', 'Madagascar'),
  ('MW', 'Malawi'),
  ('MY', 'Malaysia'),
  ('MV', 'Maldives'),
  ('ML', 'Mali'),
  ('MT', 'Malta'),
  ('MH', 'Marshall Islands'),
  ('MQ', 'Martinique'),
  ('MR', 'Mauritania'),
  ('MU', 'Mauritius'),
  ('TY', 'Mayotte'),
  ('MX', 'Mexico'),
  ('FM', 'Micronesia, Federated States of'),
  ('MD', 'Moldova, Republic of'),
  ('MC', 'Monaco'),
  ('MN', 'Mongolia'),
  ('ME', 'Montenegro'),
  ('MS', 'Montserrat'),
  ('MA', 'Morocco'),
  ('MZ', 'Mozambique'),
  ('MM', 'Myanmar'),
  ('NA', 'Namibia'),
  ('NR', 'Nauru'),
  ('NP', 'Nepal'),
  ('NL', 'Netherlands'),
  ('AN', 'Netherlands Antilles'),
  ('NC', 'New Caledonia'),
  ('NZ', 'New Zealand'),
  ('NI', 'Nicaragua'),
  ('NE', 'Niger'),
  ('NG', 'Nigeria'),
  ('NU', 'Niue'),
  ('NF', 'Norfolk Island'),
  ('MP', 'Northern Mariana Islands'),
  ('NO', 'Norway'),
  ('OM', 'Oman'),
  ('PK', 'Pakistan'),
  ('PW', 'Palau'),
  ('PS', 'Palestine'),
  ('PA', 'Panama'),
  ('PG', 'Papua New Guinea'),
  ('PY', 'Paraguay'),
  ('PE', 'Peru'),
  ('PH', 'Philippines'),
  ('PN', 'Pitcairn'),
  ('PL', 'Poland'),
  ('PT', 'Portugal'),
  ('PR', 'Puerto Rico'),
  ('QA', 'Qatar'),
  ('RE', 'Reunion'),
  ('RO', 'Romania'),
  ('RU', 'Russian Federation'),
  ('RW', 'Rwanda'),
  ('KN', 'Saint Kitts and Nevis'),
  ('LC', 'Saint Lucia'),
  ('VC', 'Saint Vincent and the Grenadines'),
  ('WS', 'Samoa'),
  ('SM', 'San Marino'),
  ('ST', 'Sao Tome and Principe'),
  ('SA', 'Saudi Arabia'),
  ('SN', 'Senegal'),
  ('RS', 'Serbia'),
  ('SC', 'Seychelles'),
  ('SL', 'Sierra Leone'),
  ('SG', 'Singapore'),
  ('SK', 'Slovakia'),
  ('SI', 'Slovenia'),
  ('SB', 'Solomon Islands'),
  ('SO', 'Somalia'),
  ('ZA', 'South Africa'),
  ('GS', 'South Georgia South Sandwich Islands'),
  ('ES', 'Spain'),
  ('LK', 'Sri Lanka'),
  ('SH', 'St. Helena'),
  ('PM', 'St. Pierre and Miquelon'),
  ('SD', 'Sudan'),
  ('SR', 'Suriname'),
  ('SJ', 'Svalbard and Jan Mayen Islands'),
  ('SZ', 'Swaziland'),
  ('SE', 'Sweden'),
  ('CH', 'Switzerland'),
  ('SY', 'Syrian Arab Republic'),
  ('TW', 'Taiwan'),
  ('TJ', 'Tajikistan'),
  ('TZ', 'Tanzania, United Republic of'),
  ('TH', 'Thailand'),
  ('TG', 'Togo'),
  ('TK', 'Tokelau'),
  ('TO', 'Tonga'),
  ('TT', 'Trinidad and Tobago'),
  ('TN', 'Tunisia'),
  ('TR', 'Turkey'),
  ('TM', 'Turkmenistan'),
  ('TC', 'Turks and Caicos Islands'),
  ('TV', 'Tuvalu'),
  ('UG', 'Uganda'),
  ('UA', 'Ukraine'),
  ('AE', 'United Arab Emirates'),
  ('GB', 'United Kingdom'),
  ('US', 'United States'),
  ('UM', 'United States minor outlying islands'),
  ('UY', 'Uruguay'),
  ('UZ', 'Uzbekistan'),
  ('VU', 'Vanuatu'),
  ('VA', 'Vatican City State'),
  ('VE', 'Venezuela'),
  ('VN', 'Vietnam'),
  ('VG', 'Virgin Islands (British)'),
  ('VI', 'Virgin Islands (U.S.)'),
  ('WF', 'Wallis and Futuna Islands'),
  ('EH', 'Western Sahara'),
  ('YE', 'Yemen'),
  ('ZR', 'Zaire'),
  ('ZM', 'Zambia');

INSERT INTO `place` (`name`, `zip`, `country_id`) VALUES
  ('Meierskappel', '5436', 211),
  ('Heimstett', '2532', 211),
  ('Oberbüren', '9245', 211),
  ('Netstal', '8754', 211),
  ('Boerriet', '9463', 211),
  ('Saanen', '3792', 211),
  ('Schattdorf', '6412', 211),
  ('Chiusa Sclafani', 'N9C 8Y3', 118),
  ('Kingston-on-Thames', '728785', 241),
  ('Colombo', 'M9 5KU', 230),
  ('Eschwege', '765826', 134),
  ('Laakirchen', '08655', 111),
  ('Maasmechelen', '3042', 41),
  ('Whitehaven', '45654-078', 165),
  ('Saint-Prime', '683059', 90),
  ('Heist-aan-Zee', '82162', 2),
  ('Yumbel', '68335', 27);

INSERT INTO `address` (`street`, `place_id`) VALUES
  ('Altgasse 42a', 3),
  ('Wylerstrasse 127', 4),
  ('Mattastrasse 17', 5),
  ('Grüningerstrasse 11', 6),
  ('Südbahnstrasse 3', 7),
  ('5959 Arcu. Road', 8),
  ('8260 Egestas St.', 9),
  ('220-781 Elementum Rd.', 10),
  ('Ap #830-3755 Enim Road', 11),
  ('Ap #779-2776 Est Street', 12),
  ('Ap #593-145 Rutrum St.', 13),
  ('300-7397 Pede. Ave', 14),
  ('P.O. Box 142, 6179 Ac Rd.', 15),
  ('Ap #164-6566 Eu Rd.', 16),
  ('9088 Lorem Road', 17);

INSERT INTO `person_address` (`address_id`, `person_id`) VALUES
  ('1', '1'),
  ('2', '2'),
  ('3', '3'),
  ('4', '4'),
  ('5', '5'),
  ('6', '6'),
  ('7', '7'),
  ('8', '8'),
  ('9', '9');

INSERT INTO `room` (`name`, `description`) VALUES ('Corner Suite', 'Unsere 4 Corner Suiten erwarten Sie mit einem einladenden Schlafbereich mit modernem und geräumigen Bad sowie einem abtrennbaren Salon mit einer Sitzgruppe um einen klassischen Tisch. Auf 50 m2 vereinen sich geschmackvolle Materialien und Textilien zu einem harmonischen Gesamtbild. Ein besonderes Glanzlicht setzt der Kronleuchter des Wohnzimmers, das über eine separate Gästetoilette verfügt. Sie haben von hier einen herrlichen Ausblick auf den Vierwaldstättersee und das Alpenpanorama. Die Corner Suite ist wahlweise mit Twin- oder Doppelbett buchbar.');
INSERT INTO `room` (`name`, `description`) VALUES ('Suite of Arts', 'Unsere Suite of Arts ist ein echtes Kunstwerk in sich selbst. Reproduktionen von Miró, Kandinsky und Chagall schmücken die Wände, Designmöbel und Unikate aus den 60er- und 70er-Jahren geben ihr einen besonderen Charakter mit unaufdringlicher Extravaganz. Auf 75 m² verfügen Sie über ein Schlafzimmer mit Doppelbett und geräumigem Badezimmer, dazu über einen Salon, der ein Unikat darstellt in seiner Verbindung von Wohlfühlatmosphäre und künstlerischen Akzenten. Die Fensterfronten eröffnen den uneingeschränkten Blick auf die Leuchtenstadt, den Vierwaldstättersee und die Zentralschweizer Bergwelt.');
INSERT INTO `room` (`name`, `description`) VALUES ('Palace Suite', 'Unsere Suite der Extraklasse. Sie verfügt über zwei grosszügige Schlafzimmer mit geräumigen Bädern als Rückzugsorte. Dazu bietet sie ein separates Wohn- und Esszimmer sowie eine mit einer Lounge und Sitzgelegenheiten möblierte Terrasse. Der Blick auf den Vierwaldstättersee, die Leuchtenstadt und die Berge ist einmalig, genau wie die PALACE Suite. Auf insgesamt 125 m² können Sie hier ein luxuriöses Erlebnis geniessen, zu dem kontemporäre Möbel, wertvolles Parkett und ausgewählte Textilien und Materialien beitragen. Die Suite ist wahlweise mit Twin- oder Doppelbett buchbar.');
INSERT INTO `room` (`name`, `description`) VALUES ('Junior Suite', 'Unsere 23 Junior Suiten bieten Platz. Weit ist der Blick auf den See, die Leuchtenstadt Luzern und in die Berge. Die harmonische Farbkombination des modern-eleganten Designs lädt zum Verweilen ein. Wir haben die Junior Suite mit Möbeln aus Tulpenholz, Palisander oder Olivenesche ausgestattet. Die hellen Räume werden zusätzlich mit Lampen beschienen, die von einem Light Designer aus Lyon exklusiv für das PALACE LUZERN kreiert wurden. Auf einem dezent gemusterten hochwertigen Teppich finden ein bequemes Bett (wahlweise Twin- oder Doppelbett) und eine Sitzgruppe auf insgesamt 42 m² platz. Ein geräumiges und modernes Badezimmer rundet das Wohngefühl von behaglichem Luxus ab.');
INSERT INTO `room` (`name`, `description`) VALUES ('Familien Zimmer', 'Unsere Zimmer für die ganze Familie mit grosszügiger Raumgestaltung in attraktiven Farben. Auf 50 m² sind sie mit einer Sitzgruppe ausgestattet, die zu einem Bett ausgezogen werden kann, dazu mit einem bequemen Bett (wahlweise Twin- oder Doppelbett) für die Eltern. In dieser behaglichen und hellen Atmosphäre ist genügend Platz zum Spielen für die Kinder, und auch das Badezimmer ist so ausgestattet, dass alle ihren Platz finden. Die Familienzimmer verfügen über einen faszinierenden Blick auf den Vierwaldstättersee und das Zentralschweizer Bergpanorama. Selbstverständlich bieten wir spezielle Kindermenus an, die von unserem Room Service auch im Zimmer serviert werden.');
INSERT INTO `room` (`name`, `description`) VALUES ('Superior Zimmer', 'Alle Superior Zimmer bieten einen atemberaubenden Blick auf den Vierwaldstättersee, das Zentralschweizer Bergpanorama und die Leuchtenstadt Luzern. Sie sind mit einer Sitzgruppe, einem Schreibtisch und wahlweise einem Twin- oder Doppelbett ausgestattet. Auf 35 m² sind die grosszügig gestalteten Zimmer im klassisch-stilvollen Grandhotel-Interieur gehalten. Eine dezent-moderne Farbgestaltung und ausgewählte Textilien schaffen eine behagliche Atmosphäre, ergänzt um ein modernes Badezimmer und einen sehr geräumigen Kleiderschrank im Entrée. Sie sind für eine oder zwei Personen geeignet.');
INSERT INTO `room` (`name`, `description`) VALUES ('Standard Zimmer', 'Unsere Standard Zimmer empfangen Sie auf 25 m² mit klassischem Interieur in einer behaglichen Wohnatmosphäre. Ein charmantes Design mit edlen Materialien in warmen Farben lädt in diesen hellen Räumen zum Verweilen und Entspannen ein. Von klassisch-elegant über Art Deco bis künstlerisch modern stehen Ihnen in diesen 32 Zimmern verschiedene Stilrichtungen zur Auswahl. Die Zimmer verfügen entweder über Stadt- oder Seeblick; letztere Zimmer verfügen zusätzlich über einen Balkon, von dem sich der Ausblick auf den Vierwaldtstättersee, die Leuchtenstadt Luzern und das Bergpanorama geniessen lässt. Das Zimmer ist wahlweise mit Twin- oder Doppelbett buchbar und für eine oder zwei Personen geeignet.');
INSERT INTO `room` (`name`, `description`) VALUES ('Deluxe Zimmer', 'Die Deluxe Zimmer haben wir in der besten Tradition des PALACE LUZERN im Belle Epoque Stil gehalten. Die elegant-dezente Kombination von stilechten Texturen, Materialien und Möbeln schafft eine Wohlfühlatmosphäre mit ihrer modernen Interpretation einer glorreichen Geschichtsepoche. Auf 35 m² verfügen Sie über eine Sitzgruppe, einen Schreibtisch und wahlweise über ein Twin- oder Doppelbett. Die Deluxe Zimmer verfügen über einen Balkon und eine atemberaubende Aussicht auf den Vierwaldstättersee, die Leuchtenstadt Luzern und das Zentralschweizer Bergpanorama.');

INSERT INTO `attribute` (`description`) VALUES ('Ausblick: Seeblick');
INSERT INTO `attribute` (`description`) VALUES ('Grösse: 35 m²');
INSERT INTO `attribute` (`description`) VALUES ('Bett: 1 King oder 2 Twin');
INSERT INTO `attribute` (`description`) VALUES ('Belegung: 2 Erwachsene');
INSERT INTO `attribute` (`description`) VALUES ('Ausblick: Stadtblick');
INSERT INTO `attribute` (`description`) VALUES ('Grösse: 25 m²');
INSERT INTO `attribute` (`description`) VALUES ('Grösse: 50m²');
INSERT INTO `attribute` (`description`) VALUES ('Bett: 1 King oder 2 Twin und 1 Sofa');
INSERT INTO `attribute` (`description`) VALUES ('Belegung: 2 Erwachsene & 2 Kinder');
INSERT INTO `attribute` (`description`) VALUES ('Grösse: 40 m²');
INSERT INTO `attribute` (`description`) VALUES ('Ausblick: See und Alpen');
INSERT INTO `attribute` (`description`) VALUES ('Bett: 1 King');
INSERT INTO `attribute` (`description`) VALUES ('Belegung: 4 Erwachsene oder 2 Erwachsene & 2 Kinder');
INSERT INTO `attribute` (`description`) VALUES ('Grösse: 100-150 m²');
INSERT INTO `attribute` (`description`) VALUES ('Bett: 2 King oder Twin');
INSERT INTO `attribute` (`description`) VALUES ('Grösse: 42 m²');
INSERT INTO `attribute` (`description`) VALUES ('Bett: 1 King oder Twin');

INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-15', '2017-03-30');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-18', '2017-04-03');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-19', '2017-04-04');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-19', '2017-03-30');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-18', '2017-03-30');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-20', '2017-03-30');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-10', '2017-03-30');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-21', '2017-03-30');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-22', '2017-03-30');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-23', '2017-03-30');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-24', '2017-03-30');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-25', '2017-03-30');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-25', '2017-03-30');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-25', '2017-03-30');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-25', '2017-03-30');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-25', '2017-03-30');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-25', '2017-03-30');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-25', '2017-03-30');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-25', '2017-03-30');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-25', '2017-03-30');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-25', '2017-03-30');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-25', '2017-03-30');
INSERT INTO `booking` (`checkin`, `checkout`) VALUES ('2017-03-25', '2017-03-30');

INSERT INTO `booking_person` (`person_id`, `booking_id`, `isResponsible`) VALUES ('6', '1','1');
INSERT INTO `booking_person` (`person_id`, `booking_id`) VALUES ('7', '1');
INSERT INTO `booking_person` (`person_id`, `booking_id`) VALUES ('8', '1');

INSERT INTO `booking_person` (`person_id`, `booking_id`, `isResponsible`) VALUES ('9', '2','1');
INSERT INTO `booking_person` (`person_id`, `booking_id`) VALUES ('10', '2');
INSERT INTO `booking_person` (`person_id`, `booking_id`) VALUES ('11', '2');
INSERT INTO `booking_person` (`person_id`, `booking_id`) VALUES ('12', '2');

INSERT INTO `booking_person` (`person_id`, `booking_id`, `isResponsible`) VALUES ('13', '3','1');
INSERT INTO `booking_person` (`person_id`, `booking_id`) VALUES ('14', '13');

INSERT INTO `booking_person` (`person_id`, `booking_id`, `isResponsible`) VALUES ('15', '4','1');
INSERT INTO `booking_person` (`person_id`, `booking_id`, `isResponsible`) VALUES ('16', '5','1');
INSERT INTO `booking_person` (`person_id`, `booking_id`, `isResponsible`) VALUES ('17', '6','1');
INSERT INTO `booking_person` (`person_id`, `booking_id`, `isResponsible`) VALUES ('18', '7','1');
INSERT INTO `booking_person` (`person_id`, `booking_id`, `isResponsible`) VALUES ('19', '8','1');
INSERT INTO `booking_person` (`person_id`, `booking_id`, `isResponsible`) VALUES ('20', '9','1');
INSERT INTO `booking_person` (`person_id`, `booking_id`, `isResponsible`) VALUES ('21', '10','1');
INSERT INTO `booking_person` (`person_id`, `booking_id`, `isResponsible`) VALUES ('22', '11','1');
INSERT INTO `booking_person` (`person_id`, `booking_id`, `isResponsible`) VALUES ('23', '12','1');

INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('1', '11');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('1', '7');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('1', '12');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('1', '4');

INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('2', '11');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('2', '10');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('2', '12');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('2', '4');

INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('3', '11');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('3', '14');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('3', '15');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('3', '13');

INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('4', '1');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('4', '16');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('4', '17');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('4', '4');

INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('5', '1');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('5', '7');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('5', '8');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('5', '9');

INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('6', '1');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('6', '2');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('6', '3');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('6', '4');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('7', '5');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('7', '6');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('7', '3');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('7', '4');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('8', '1');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('8', '2');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('8', '3');
INSERT INTO `attribute_room` (`room_id`, `attribute_id`) VALUES ('8', '4');

INSERT INTO `booking_room` (`booking_id`, `room_id`) VALUES ('1', '1');
INSERT INTO `booking_room` (`booking_id`, `room_id`) VALUES ('2', '2');
INSERT INTO `booking_room` (`booking_id`, `room_id`) VALUES ('3', '3');

UPDATE `booking` SET `referring_company_id`='1' WHERE `id`='1';
UPDATE `booking` SET `referring_company_id`='2' WHERE `id`='2';
UPDATE `booking` SET `referring_company_id`='1' WHERE `id`='3';
UPDATE `booking` SET `referring_company_id`='1' WHERE `id`='4';
UPDATE `booking` SET `referring_company_id`='2' WHERE `id`='5';
UPDATE `booking` SET `referring_company_id`='3' WHERE `id`='6';
UPDATE `booking` SET `referring_company_id`='4' WHERE `id`='7';
UPDATE `booking` SET `referring_company_id`='3' WHERE `id`='8';

INSERT INTO `person_company` (`person_id`, `company_id`) VALUES ('100', '1');
INSERT INTO `person_company` (`person_id`, `company_id`) VALUES ('100', '2');
INSERT INTO `person_company` (`person_id`, `company_id`) VALUES ('101', '3');
INSERT INTO `person_company` (`person_id`, `company_id`) VALUES ('102', '1');
INSERT INTO `person_company` (`person_id`, `company_id`) VALUES ('103', '3');
INSERT INTO `person_company` (`person_id`, `company_id`) VALUES ('103', '4');
INSERT INTO `person_company` (`person_id`, `company_id`) VALUES ('104', '5');
INSERT INTO `person_company` (`person_id`, `company_id`) VALUES ('105', '5');
INSERT INTO `person_company` (`person_id`, `company_id`) VALUES ('106', '4');
INSERT INTO `person_company` (`person_id`, `company_id`) VALUES ('106', '3');

UPDATE `booking` SET `referring_person_id`='100' WHERE `id`='1';
UPDATE `booking` SET `referring_person_id`='101' WHERE `id`='2';
UPDATE `booking` SET `referring_person_id`='101' WHERE `id`='3';
UPDATE `booking` SET `referring_person_id`='102' WHERE `id`='4';
UPDATE `booking` SET `referring_person_id`='105' WHERE `id`='5';
UPDATE `booking` SET `referring_person_id`='105' WHERE `id`='6';
UPDATE `booking` SET `referring_person_id`='106' WHERE `id`='7';
UPDATE `booking` SET `referring_person_id`='107' WHERE `id`='8';

INSERT INTO `payment_card` (`number`, `expirationdate`, `company`, `name`) VALUES ('3455345343454', '03-18', 'MASTERCARD', 'Hans Meier');
INSERT INTO `payment_card` (`number`, `expirationdate`, `company`, `name`) VALUES ('786423459865', '04-19', 'Visa', 'Tania Meier');

UPDATE `booking_person` SET `payment_card_id`='1' WHERE `person_id`='6' and`booking_id`='1';
UPDATE `booking_person` SET `payment_card_id`='1' WHERE `person_id`='9' and`booking_id`='2';
UPDATE `booking_person` SET `payment_card_id`='2' WHERE `person_id`='11' and`booking_id`='2';