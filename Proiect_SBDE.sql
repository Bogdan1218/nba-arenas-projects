--DROP TABLE ARENE_NBA CASCADE CONSTRAINTS;
--DROP TABLE ECHIPE_NBA CASCADE CONSTRAINTS;
--DROP TABLE JUCATORI_NBA CASCADE CONSTRAINTS;

-- CREAREA TABELEI "ECHIPE_NBA":
CREATE TABLE ECHIPE_NBA
(ID_Echipa VARCHAR2(20) PRIMARY KEY,
Denumire_Echipa VARCHAR2(40) NOT NULL,
Stat VARCHAR2(20),
Conferinta VARCHAR2(5) NOT NULL,
Divizie VARCHAR2(20) NOT NULL,
Titluri_Castigate NUMBER(3,0) NOT NULL,
Victorii_Sezon NUMBER(3,0) NOT NULL,
Infrangeri_Sezon NUMBER(3,0) NOT NULL
);

-- CREAREA TABELEI "ARENE_NBA":
CREATE TABLE ARENE_NBA
(ID_Arena VARCHAR2(20) PRIMARY KEY,
Denumire_Arena VARCHAR2(50) NOT NULL,
Oras VARCHAR2(30) NOT NULL,
Capacitate NUMBER(6) CONSTRAINT ck_capacitate CHECK (Capacitate > 0) NOT NULL,
An_Inaugurare NUMBER(4) CONSTRAINT ck_an CHECK (An_Inaugurare BETWEEN 1900 
AND 2025) NOT NULL,
ID_Echipa VARCHAR2(20) CONSTRAINT uq_id_echipa_arena UNIQUE NOT NULL, 
Longitudine NUMBER(15,4) NOT NULL,
Latitudine NUMBER(15,4) NOT NULL,
GEOM_Arena SDO_GEOMETRY NOT NULL,
CONSTRAINT fk_arene_echipe FOREIGN KEY (ID_Echipa) REFERENCES ECHIPE_NBA 
(ID_Echipa)
);

-- CREAREA TABELEI "JUCATORI_NBA":
CREATE TABLE JUCATORI_NBA
(ID_Jucator VARCHAR2(20) PRIMARY KEY,
Nume VARCHAR2(20) NOT NULL,
Prenume VARCHAR2(20) NOT NULL,
Pozitie VARCHAR2(10) NOT NULL,
Numar_Tricou VARCHAR2(3) NOT NULL,
Salariu_An NUMBER(9,0) NOT NULL,
ID_Echipa VARCHAR2(20) NOT NULL,
CONSTRAINT fk_jucatori_echipe FOREIGN KEY (ID_Echipa) REFERENCES ECHIPE_NBA
(ID_Echipa));

-- POPULAREA TABELEI "ECHIPE_NBA":
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('1', 'Atlanta Hawks', 'Georgia', 'Est', 'Sud-Est', 1, 40, 42);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('2', 'Boston Celtics', 'Massachusetts', 'Est', 'Atlantic', 18, 61, 21);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('3', 'Brooklyn Nets', 'New York', 'Est', 'Atlantic', 0, 26, 56);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('4', 'Charlotte Hornets', 'North Carolina', 'Est', 'Sud-Est', 0, 19, 63);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('5', 'Chicago Bulls', 'Illinois', 'Est', 'Centrala', 6, 39, 43);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('6', 'Cleveland Cavaliers', 'Ohio', 'Est', 'Centrala', 1, 64, 18);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('7', 'Dallas Mavericks', 'Texas', 'Vest', 'Sud-Vest', 1, 39, 43);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('8', 'Denver Nuggets', 'Colorado', 'Vest', 'Nord-Vest', 1, 50, 32);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('9', 'Detroit Pistons', 'Michigan', 'Est', 'Centrala', 3, 44, 38);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('10', 'Golden State Warriors', 'California', 'Vest', 'Pacific', 7, 49, 33);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('11', 'Houston Rockets', 'Texas', 'Vest', 'Sud-Vest', 2, 52, 30);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('12', 'Indiana Pacers', 'Indiana', 'Est', 'Centrala', 0, 50, 32);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('13', 'Los Angeles Clippers', 'California', 'Vest', 'Pacific', 0, 50, 32);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('14', 'Los Angeles Lakers', 'California', 'Vest', 'Pacific', 17, 50, 32);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('15', 'Memphis Grizzlies', 'Tennessee', 'Vest', 'Sud-Vest', 0, 48, 34);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('16', 'Miami Heat', 'Florida', 'Est', 'Sud-Est', 3, 37, 45);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('17', 'Milwaukee Bucks', 'Wisconsin', 'Est', 'Centrala', 2, 48, 34);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('18', 'Minnesota Timberwolves', 'Minnesota', 'Vest', 'Nord-Vest', 0, 49, 33);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('19', 'New Orleans Pelicans', 'Louisiana', 'Vest', 'Sud-Vest', 0, 21, 61);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('20', 'New York Knicks', 'New York', 'Est', 'Atlantic', 2, 51, 31);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('21', 'Oklahoma City Thunder', 'Oklahoma', 'Vest', 'Nord-Vest', 0, 68, 14);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('22', 'Orlando Magic', 'Florida', 'Est', 'Sud-Est', 0, 41, 41);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('23', 'Philadelphia 76ers', 'Pennsylvania', 'Est', 'Atlantic', 3, 24, 58);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('24', 'Phoenix Suns', 'Arizona', 'Vest', 'Pacific', 0, 36, 46);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('25', 'Portland Trail Blazers', 'Oregon', 'Vest', 'Nord-Vest', 1, 36, 46);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('26', 'Sacramento Kings', 'California', 'Vest', 'Pacific', 1, 40, 42);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('27', 'San Antonio Spurs', 'Texas', 'Vest', 'Sud-Vest', 5, 34, 48);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('28', 'Toronto Raptors', NULL, 'Est', 'Atlantic', 1, 30, 42);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('29', 'Utah Jazz', 'Utah', 'Vest', 'Nord-Vest', 0, 17, 65);
INSERT INTO ECHIPE_NBA (ID_Echipa, Denumire_Echipa, Stat, Conferinta, Divizie, Titluri_Castigate, Victorii_Sezon, Infrangeri_Sezon) 
VALUES ('30', 'Washington Wizards', 'Washington DC', 'Est', 'Sud-Est', 1, 18, 64);

-- POPULAREA TABELEI "ARENE_NBA":
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('1', 'State Farm Arena', 'Atlanta', 17044, 1999, '1', -84.3958, 33.7576, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-84.3958, 33.7576, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('2', 'TD Garden', 'Boston', 17732, 1995, '2', -71.0617, 42.3663, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-71.0617, 42.3663, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('3', 'Barclays Center', 'Brooklyn', 17732, 2012, '3', -73.9749, 40.6828, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-73.9749, 40.6828, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('4', 'Spectrum Center', 'Charlotte', 19077, 2005, '4', -80.8389, 35.2254, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-80.8389, 35.2254, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('5', 'United Center', 'Chicago', 20917, 1994, '5', -87.6737, 41.8809, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-87.6737, 41.8809, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('6', 'Rocket Mortgage FieldHouse', 'Cleveland', 19432, 1994, '6', -81.4023, 41.5647, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-81.4023, 41.5647, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('7', 'American Airlines Center', 'Dallas', 19200, 2001, '7', -96.8093, 32.7905, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-96.8093, 32.7905, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('8', 'Ball Arena', 'Denver', 19520, 1999, '8', -105.0070, 39.7488, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-105.0070, 39.7488, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('9', 'Little Caesars Arena', 'Detroit', 20332, 2017, '9', -83.0540, 42.3419, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-83.0540, 42.3419, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('10', 'Chase Center', 'San Francisco', 18064, 2019, '10', -122.3873, 37.7681, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-122.3873, 37.7681, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('11', 'Toyota Center', 'Houston', 18055, 2003, '11', -95.3619, 29.7511, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-95.3619, 29.7511, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('12', 'Gainbridge Fieldhouse', 'Indianapolis', 17923, 1999, '12', -86.1547, 39.7642, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-86.1547, 39.7642, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('13', 'Intuit Dome', 'Inglewood', 18000, 2024, '13', -118.3417, 33.9440, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-118.3417, 33.9440, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('14', 'Crypto.com Arena', 'Los Angeles', 18997, 1999, '14', -118.2665, 34.0432, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-118.2665, 34.0432, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('15', 'FedExForum', 'Memphis', 17794, 2004, '15', -90.0503, 35.1402, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-90.0503, 35.1402, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('16', 'Kaseya Center', 'Miami', 19600, 1999, '16', -80.1878, 25.7813, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-80.1878, 25.7813, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('17', 'Fiserv Forum', 'Milwaukee', 17341, 2018, '17', -87.9168, 43.0442, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-87.9168, 43.0442, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('18', 'Target Center', 'Minneapolis', 18978, 1990, '18', -93.2760, 44.9795, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-93.2760, 44.9795, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('19', 'Smoothie King Center', 'New Orleans', 16867, 1999, '19', -90.0818, 29.9482, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-90.0818, 29.9482, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('20', 'Madison Square Garden', 'New York', 19812, 1968, '20', -73.9935, 40.7505, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-73.9935, 40.7505, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('21', 'Paycom Center', 'Oklahoma City', 18203, 2002, '21', -97.5150, 35.4672, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-97.5150, 35.4672, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('22', 'Kia Center', 'Orlando', 18846, 2010, '22', -81.3803, 28.5391, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-81.3803, 28.5391, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('23', 'Wells Fargo Center', 'Philadelphia', 20318, 1996, '23', -75.1710, 39.9015, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-75.1710, 39.9015, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('24', 'Footprint Center', 'Phoenix', 17071, 1992, '24', -112.0710, 33.4452, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-112.0710, 33.4452, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('25', 'Moda Center', 'Portland', 19393, 1995, '25', -122.6660, 45.5367, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-122.6660, 45.5367, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('26', 'Golden 1 Center', 'Sacramento', 17500, 2016, '26', -121.4990, 38.5804, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-121.4990, 38.5804, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('27', 'Frost Bank Center', 'San Antonio', 18418, 2002, '27', -98.4375, 29.4270, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-98.4375, 29.4270, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('28', 'Scotiabank Arena', 'Toronto', 19800, 1999, '28', -79.3794, 43.6433, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-79.3794, 43.6433, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('29', 'Delta Center', 'Salt Lake City', 18306, 1991, '29', -111.9010, 40.7681, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-111.9010, 40.7681, NULL), NULL, NULL));
INSERT INTO ARENE_NBA (ID_Arena, Denumire_Arena, Oras, Capacitate, An_Inaugurare, ID_Echipa, Longitudine, Latitudine, GEOM_Arena)
VALUES ('30', 'Capital One Arena', 'Washington', 20356, 1997, '30', -77.0210, 38.9020, SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(-77.0210, 38.9020, NULL), NULL, NULL));

-- POPULAREA TABELEI "JUCATORI_NBA":
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('1', 'Young', 'Trae', 'PG', '11', 45999660, '1');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('2', 'Daniels', 'Dyson', 'SG/PG', '5', 7707709, '1');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('3', 'Risacher', 'Zaccharie', 'SF', '10', 13197720, '1');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('4', 'Johnson', 'Jalen', 'PF', '1', 30000000, '1');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('5', 'Porzingis', 'Kristaps', 'C', '8', 30731707, '1');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('6', 'White', 'Derrick', 'PG', '9', 28100000, '2');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('7', 'Simons', 'Anfernee', 'SG', '4', 27678571, '2');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('8', 'Brown', 'Jaylen', 'SF/SG', '7', 53142264, '2');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('9', 'Hauser', 'Sam', 'PF/SF', '30', 10044644, '2');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('10', 'Queta', 'Neemias', 'C', '88', 2349578, '2');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('11', 'Demin', 'Egor', 'PG', '8', 6889200, '3');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('12', 'Thomas', 'Cam', 'SG', '24', 5993172, '3');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('13', 'Mann', 'Terance', 'SF/SG', '14', 15500000, '3');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('14', 'Porter Jr', 'Michael', 'PF/SF', '17', 38333050, '3');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('15', 'Claxton', 'Nic', 'C', '33', 25352272, '3');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('16', 'Ball', 'Lamelo', 'PG', '1', 37958760, '4');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('17', 'Miller', 'Brandon', 'SG/SF', '24', 11968800, '4');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('18', 'Knueppel', 'Kon', 'SF/SG', '7', 10015680, '4');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('19', 'Bridges', 'Miles', 'PF', '0', 25000000, '4');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('20', 'Diabate', 'Moussa', 'C/PF', '14', 2270735, '4');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('21', 'Giddey', 'Josh', 'PG', '3', 25000000, '5');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('22', 'White', 'Coby', 'SG/PG', '0', 12888889, '5');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('23', 'Dosunmu', 'Ayo', 'SF/SG', '11', 7518518, '5');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('24', 'Buzelis', 'Matas', 'PF', '14', 5455560, '5');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('25', 'Vucevic', 'Nikola', 'C', '9', 21481481, '5');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('26', 'Garland', 'Darius', 'PG', '10', 39446090, '6');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('27', 'Mitchell', 'Donovan', 'SG', '45', 46394100, '6');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('28', 'Hunter', 'DeAndre', 'SF', '12', 23303571, '6');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('29', 'Mobley', 'Evan', 'PF', '4', 46394100, '6');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('30', 'Allen', 'Jarrett', 'C', '31', 20000000, '6');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('31', 'Tuta', 'Mihail-Bogdan', 'PG', '77', 5685000, '7');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('32', 'Thompson', 'Klay', 'SG', '31', 16666667, '7');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('33', 'Flagg', 'Cooper', 'SF/PF', '32', 13825920, '7');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('34', 'Davis', 'Anthony', 'PF/C', '3', 54126450, '7');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('35', 'Lively II', 'Dereck', 'C', '2', 5253360, '7');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('36', 'Murray', 'Jamal', 'PG', '27', 46394100, '8');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('37', 'Braun', 'Christian', 'SG', '0', 4921797, '8');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('38', 'Johnson', 'Cameron', 'SF', '23', 21057065, '8');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('39', 'Gordon', 'Aaron', 'PF', '32', 22841455, '8');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('40', 'Jokic', 'Nikola', 'C', '15', 55224526, '8');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('41', 'Cunningham', 'Cade', 'PG', '2', 46394100, '9');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('42', 'Ivey', 'Jaden', 'SG/PG', '23', 10107163, '9');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('43', 'Thompson', 'Ausar', 'SF/PF', '9', 8775000, '9');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('44', 'Harris', 'Tobias', 'PF', '12', 26634146, '9');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('45', 'Duren', 'Jalen', 'C', '0', 6483144, '9');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('46', 'Curry', 'Stephen', 'PG', '30', 59606817, '10');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('47', 'Podziemski', 'Brandin', 'SG/PG', '2', 3687960, '10');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('48', 'Moody', 'Moses', 'SF/SG', '4', 11574075, '10');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('49', 'Butler III', 'Jimmy', 'PF/SF', '10', 54126450, '10');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('50', 'Green', 'Draymond', 'C/PF', '23', 25892857, '10');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('51', 'Sheppard', 'Reed', 'PG/SG', '15', 10603560, '11');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('52', 'Thompson', 'Amen', 'SG/SF/PF', '1', 9690600, '11');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('53', 'Durant', 'Kevin', 'SF/PF', '7', 54708609, '11');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('54', 'Smith Jr', 'Jabari', 'PF', '10', 12350392, '11');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('55', 'Sengun', 'Alperen', 'C', '28', 33944954, '11');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('56', 'Nembhard', 'Andrew', 'PG', '2', 18102000, '12');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('57', 'Mathurin', 'Bennedict', 'SG', '0', 9187573, '12');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('58', 'Nesmith', 'Aaron', 'SF', '23', 11000000, '12');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('59', 'Siakam', 'Pascal', 'PF/C', '43', 45550512, '12');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('60', 'Jackson', 'Isaiah', 'C/PF', '22', 7600000, '12');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('61', 'Harden', 'James', 'PG/SG', '1', 39182693, '13');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('62', 'Beal', 'Bradley', 'SG', '0', 5354000, '13');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('63', 'Leonard', 'Kawhi', 'SF/PF', '2', 50000000, '13');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('64', 'Collins', 'John', 'PF', '20', 26580000, '13');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('65', 'Zubac', 'Ivica', 'C', '40', 18102000, '13');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('66', 'Doncic', 'Luka', 'PG', '77', 45999660, '14');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('67', 'Reaves', 'Austin', 'SG', '15', 13937574, '14');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('68', 'James', 'LeBron', 'SF/PF', '23', 52627153, '14');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('69', 'Hachimura', 'Rui', 'PF', '28', 18259259, '14');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('70', 'Ayton', 'Deandre', 'C', '5', 8104000, '14');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('71', 'Morant', 'Ja', 'PG', '12', 39446090, '15');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('72', 'Caldwell-Pope', 'Kentavious', 'SG', '3', 21621500, '15');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('73', 'Wells', 'Jaylen', 'SF/PF', '0', 1955377, '15');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('74', 'Aldama', 'Santi', 'PF', '7', 18485916, '15');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('75', 'Jackson Jr', 'Jaren', 'C/PF', '8', 35000000, '15');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('76', 'Mitchell', 'Davion', 'PG', '45', 11600000, '16');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('77', 'Powell', 'Norman', 'SG/SF', '24', 20482758, '16');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('78', 'Wiggins', 'Andrew', 'SF', '22', 28223215, '16');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('79', 'Jovic', 'Nikola', 'PF', '5', 4445417, '16');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('80', 'Adebayo', 'Bam', 'C', '13', 37096620, '16');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('81', 'Porter Jr', 'Kevin', 'PG/SG', '7', 5134000, '17');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('82', 'Trent Jr', 'Gary', 'SG', '5', 3697105, '17');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('83', 'Kuzma', 'Kyle', 'SF', '0', 22410605, '17');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('84', 'Antetokounmpo', 'Giannis', 'PF', '34', 54126450, '17');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('85', 'Turner', 'Myles', 'C', '3', 25318251, '17');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('86', 'Conley', 'Mike', 'PG', '10', 10774038, '18');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('87', 'Edwards', 'Anthony', 'SG', '5', 45550512, '18');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('88', 'McDaniels', 'Jaden', 'SF/PF', '3', 24393104, '18');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('89', 'Randle', 'Julius', 'PF', '30', 30864198, '18');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('90', 'Gobert', 'Rudy', 'C', '27', 35000000, '18');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('91', 'Poole', 'Jordan', 'PG/SG', '3', 31848215, '19');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('92', 'Murphy III', 'Trey', 'SG/SF', '25', 27000000, '19');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('93', 'Jones', 'Herbert', 'SF', '2', 13937574, '19');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('94', 'Williamson', 'Zion', 'PF', '1', 39446090, '19');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('95', 'Missi', 'Yves', 'C', '21', 3353040, '19');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('96', 'Brunson', 'Jalen', 'PG', '11', 34944001, '20');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('97', 'Bridges', 'Mikal', 'SG/SF', '25', 24900000, '20');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('98', 'Anunoby', 'OG', 'SF/PF', '8', 39568966, '20');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('99', 'Towns', 'Karl-Anthony', 'PF/C', '32', 53142264, '20');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('100', 'Robinson', 'Mitchell', 'C', '23', 12954546, '20');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('101', 'Gilgeous-Alexander', 'Shai', 'PG', '2', 38333050, '21');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('102', 'Dort', 'Luguentz', 'SG', '5', 18222222, '21');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('103', 'Williams', 'Jalen', 'SF/PF', '8', 6580997, '21');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('104', 'Holmgren', 'Chet', 'PF/C', '7', 13731368, '21');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('105', 'Hartenstein', 'Isaiah', 'C', '55', 28500000, '21');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('106', 'Suggs', 'Jalen', 'PG/SG', '4', 35000000, '22');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('107', 'Bane', 'Desmond', 'SG', '3', 36725670, '22');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('108', 'Wagner', 'Franz', 'SF', '22', 38661750, '22');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('109', 'Banchero', 'Paolo', 'PF', '5', 15334769, '22');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('110', 'Carter Jr', 'Wendell', 'C', '34', 10850000, '22');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('111', 'Maxey', 'Tyrese', 'PG', '0', 37958760, '23');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('112', 'Grimes', 'Quentin', 'SG', '5', 8741209, '23');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('113', 'Edgecombe', 'VJ', 'SF/SG', '77', 11108880, '23');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('114', 'George', 'Paul', 'PF/SF', '8', 51666090, '23');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('115', 'Embiid', 'Joel', 'C', '21', 55224526, '23');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('116', 'Booker', 'Devin', 'PG/SG', '1', 53142264, '24');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('117', 'Green', 'Jalen', 'SG', '4', 33584499, '24');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('118', 'Brooks', 'Dillon', 'SF', '3', 21124110, '24');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('119', 'Dunn', 'Ryan', 'PF', '0', 2657760, '24');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('120', 'Williams', 'Mark', 'C', '15', 6276531, '24');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('121', 'Holiday', 'Jrue', 'PG', '5', 32400000, '25');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('122', 'Sharpe', 'Shaedon', 'SG', '17', 8399983, '25');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('123', 'Avdija', 'Deni', 'SF', '8', 14375000, '25');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('124', 'Camara', 'Toumani', 'PF/SF', '33', 2221677, '25');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('125', 'Clingan', 'Donovan', 'C', '23', 7178400, '25');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('126', 'Monk', 'Malik', 'PG/SG', '0', 18797619, '26');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('127', 'LaVine', 'Zach', 'SG', '8', 47499660, '26');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('128', 'DeRozan', 'Demar', 'SF', '10', 24570000, '26');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('129', 'Murray', 'Keegan', 'PF/SF', '13', 11144093, '26');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('130', 'Sabonis', 'Domantas', 'C/PF', '11', 42336000, '26');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('131', 'Fox', 'DeAaron', 'PG', '4', 37096620, '27');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('132', 'Castle', 'Stephon', 'SG/PG', '5', 9560520, '27');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('133', 'Vassell', 'Devin', 'SF', '24', 27000000, '27');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('134', 'Barnes', 'Harrison', 'PF/SF', '40', 19000000, '27');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('135', 'Wembanyama', 'Victor', 'C', '1', 13376880, '27');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('136', 'Quickley', 'Immanuel', 'PG/SG', '5', 32500000, '28');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('137', 'Barrett', 'RJ', 'SG', '9', 27705357, '28');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('138', 'Ingram', 'Brandon', 'SF', '3', 38095238, '28');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('139', 'Barnes', 'Scottie', 'PF/SF', '4', 38661750, '28');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('140', 'Poeltl', 'Jakob', 'C', '19', 19500000, '28');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('141', 'Collier', 'Isaiah', 'PG', '8', 2638200, '29');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('142', 'Sensabaugh', 'Brice', 'SG/SF', '28', 2693760, '29');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('143', 'Bailey', 'Ace', 'SF/SG', '19', 9069840, '29');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('144', 'Markkanen', 'Lauri', 'PF', '23', 46394100, '29');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('145', 'Kessler', 'Walker', 'C', '24', 4878938, '29');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('146', 'Carrington', 'Bub', 'PG/SG', '7', 4677600, '30');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('147', 'McCollum', 'CJ', 'SG', '3', 30666666, '30');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('148', 'Middleton', 'Khris', 'SF', '32', 33296296, '30');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('149', 'Coulibaly', 'Bilal', 'PF/SG', '0', 7275600, '30');
INSERT INTO JUCATORI_NBA (ID_Jucator, Nume, Prenume, Pozitie, Numar_Tricou, Salariu_An, ID_Echipa) VALUES ('150', 'Sarr', 'Alex', 'C/PF', '20', 11808420, '30');

-- Actualizarea viziunii standard de metadate:
INSERT INTO USER_SDO_GEOM_METADATA (TABLE_NAME, COLUMN_NAME, DIMINFO, SRID) 
VALUES ('ARENE_NBA', 'GEOM_ARENA', SDO_DIM_ARRAY(SDO_DIM_ELEMENT('Longitude', -180, 180, 0.75), SDO_DIM_ELEMENT('Latitude', -90, 90, 0.75)), 8307);
--DELETE FROM USER_SDO_GEOM_METADATA
--WHERE TABLE_NAME = 'ARENE_NBA';

-- Crearea indecsilor spatiali:
CREATE INDEX arene_spatial_idx ON ARENE_NBA(GEOM_Arena) INDEXTYPE IS MDSYS.SPATIAL_INDEX;
--DROP INDEX arene_spatial_idx;

-- INTEROGARI:
--1. Sa se calculeze distanta de la arena echipei care este introdusa de la tastatura (pe baza ID-ului, de la 1 la 30) fata de restul echipelor din liga.
SET SERVEROUTPUT ON;
DECLARE
    v_ID_Echipa_Sursa ARENE_NBA.ID_Echipa%TYPE := &echipa_aleasa; 
    v_Echipa_Sursa_Geom ARENE_NBA.GEOM_Arena%TYPE;
    v_Longitudine_Sursa NUMBER(15,4);
    v_Latitudine_Sursa NUMBER(15,4);
    v_Denumire_Arena VARCHAR2(50);
    v_Denumire_Echipa VARCHAR2(40);
BEGIN
    SELECT a.GEOM_Arena, a.Longitudine, a.Latitudine, a.Denumire_Arena, e.Denumire_Echipa
    INTO v_Echipa_Sursa_Geom, v_Longitudine_Sursa, v_Latitudine_Sursa, v_Denumire_Arena, v_Denumire_Echipa
    FROM ARENE_NBA a, ECHIPE_NBA e
    WHERE a.ID_Echipa = v_ID_Echipa_Sursa AND a.ID_Echipa = e.ID_Echipa; 
    DBMS_OUTPUT.PUT_LINE('--- Distanta de la arena ' || v_Denumire_Arena || ' (detinuta de echipa ' || v_Denumire_Echipa || ')' || ' la restul arenelor ---');
    FOR curs IN (SELECT ID_Echipa, Denumire_Arena, GEOM_Arena FROM ARENE_NBA WHERE ID_Echipa != v_ID_Echipa_Sursa AND (Longitudine != v_longitudine_sursa OR Latitudine != v_latitudine_sursa))  
    LOOP
        DBMS_OUTPUT.PUT_LINE('ID ' || curs.ID_Echipa || ': ' || curs.Denumire_Arena || ' --> ' || ROUND(SDO_GEOM.SDO_DISTANCE(v_echipa_sursa_geom, curs.GEOM_Arena, 0.75, 'unit = KM'), 2) || ' km');
    END LOOP;
END;

--2. Sa se afiseze cea mai indepartata arena fata de arena echipei ”Boston Celtics” (ID 2) din toate arenele aflate in Conferinta de Vest, respectiv Conferinta de Est.
-- Boston fata de restul arenelor din Vest:
SELECT a2.ID_Echipa, a2.Denumire_Arena, a2.Oras, a2.Capacitate, e.Conferinta, e.Denumire_Echipa, ROUND(SDO_GEOM.SDO_DISTANCE(a1.GEOM_Arena, a2.GEOM_Arena, 0.75, 'unit = KM'), 2) AS Distanta_Maxima_Vest
FROM ARENE_NBA a1, ARENE_NBA a2, ECHIPE_NBA e
WHERE a1.ID_Echipa = '2' AND a2.ID_Echipa != a1.ID_Echipa AND a2.ID_Echipa = e.ID_Echipa AND e.Conferinta = 'Vest'
ORDER BY Distanta_Maxima_Vest DESC
FETCH FIRST 1 ROW ONLY;
-- Boston fata de restul arenelor din Est:
SELECT a2.ID_Echipa, a2.Denumire_Arena, a2.Oras, a2.Capacitate, e.Conferinta, e.Denumire_Echipa, ROUND(SDO_GEOM.SDO_DISTANCE(a1.GEOM_Arena, a2.GEOM_Arena, 0.75, 'unit = KM'), 2) AS Distanta_Maxima_Est
FROM ARENE_NBA a1, ARENE_NBA a2, ECHIPE_NBA e
WHERE a1.ID_Echipa = '2' AND a2.ID_Echipa != a1.ID_Echipa AND a2.ID_Echipa = e.ID_Echipa AND e.Conferinta = 'Est'
ORDER BY Distanta_Maxima_Est DESC
FETCH FIRST 1 ROW ONLY;

--3. Sa se afiseze arenele care se afla in emisfera Sud – Estica.
SELECT a.ID_Echipa, a.Denumire_Arena, a.Oras, a.GEOM_Arena.SDO_POINT.X AS Longitudine, a.GEOM_Arena.SDO_POINT.Y AS Latitudine, a.GEOM_Arena
FROM ARENE_NBA a
WHERE a.GEOM_Arena.SDO_POINT.Y < 39 AND a.GEOM_Arena.SDO_POINT.X >= -90
ORDER BY Longitudine, Latitudine;

--4. Sa se afiseze arenele invecinate pe o distanta de maxim 1500 de km fata de arena introdusa de la tastatura (pe baza ID-ului, de la 1 la 30).
DECLARE
    v_ID_Arena_Sursa ARENE_NBA.ID_Echipa%TYPE := &id_arena_aleasa; 
    v_Geom_Arena_Sursa ARENE_NBA.GEOM_Arena%TYPE;
    v_Denumire_Arena ARENE_NBA.Denumire_Arena%TYPE;
    v_Denumire_Echipa ECHIPE_NBA.Denumire_Echipa%TYPE;
    v_Raza NUMBER(6) := 1500;   
BEGIN
    SELECT a.GEOM_Arena, a.Denumire_Arena, Denumire_Echipa e 
    INTO v_Geom_Arena_Sursa, v_Denumire_Arena, v_Denumire_Echipa
    FROM ARENE_NBA a, ECHIPE_NBA e
    WHERE a.ID_Echipa = v_ID_Arena_Sursa AND a.ID_Echipa = e.ID_Echipa;
    DBMS_OUTPUT.PUT_LINE('--- Arenele aflate la distanta maxima de ' || v_Raza || ' km fata de arena ' || v_Denumire_Arena || ' (detinuta de echipa ' || v_Denumire_Echipa || ') ---');
    FOR curs IN (SELECT a.ID_Echipa, a.Denumire_Arena, a.GEOM_Arena, SDO_GEOM.SDO_DISTANCE(v_Geom_Arena_Sursa, a.GEOM_Arena, 0.75, 'unit = KM') AS Distanta_Km
    FROM ARENE_NBA a
    WHERE a.ID_Echipa != v_ID_Arena_Sursa AND SDO_WITHIN_DISTANCE(v_Geom_Arena_Sursa, a.GEOM_Arena, 'distance = ' || v_Raza || ' unit = KM') = 'TRUE'
    ORDER BY Distanta_Km ASC)
    LOOP
        DBMS_OUTPUT.PUT_LINE('ID ' || curs.ID_Echipa || ': ' || curs.Denumire_Arena || ' --> ' || ROUND(curs.distanta_km, 2) || ' km');
    END LOOP;
END;

--5. Sa se afiseze salariul mediu, maxim si minim pentru fiecare pozitie de joc singulara (PG, SG, SF, PF, C), dar tinand cont doar de salariile jucatorilor ale caror arene se afla intr-o raza de 1000 de km de echipa Dallas Mavericks (ID 7).
SELECT j.Pozitie, ROUND(AVG(j.Salariu_An),0) AS Salariu_Mediu_Pozitie, MAX(j.Salariu_An) AS Salariu_Maxim_Pozitie, MIN(j.Salariu_An) as Salariu_Minim_Pozitie
FROM ARENE_NBA a1, ARENE_NBA a2, JUCATORI_NBA j
WHERE a1.ID_Echipa = '7' AND SDO_WITHIN_DISTANCE(a1.GEOM_Arena, a2.GEOM_Arena, 'distance = 1000 unit = KM') = 'TRUE' AND a1.ID_Echipa != a2.ID_Echipa AND j.ID_Echipa = a2.ID_Echipa AND j.Pozitie NOT LIKE '%/%'
GROUP BY j.Pozitie
ORDER BY Salariu_Mediu_Pozitie DESC, Salariu_Maxim_Pozitie DESC, Salariu_Minim_Pozitie DESC;

--6. Sa se calculeze suprafata totala a celui mai mic poligon format din primele 5 echipe din NBA din punct de vedere al salariului total acordat jucatorilor.
SELECT e.ID_Echipa, e.Denumire_Echipa, SUM(j.Salariu_An) AS Total_Salarii FROM ECHIPE_NBA e, JUCATORI_NBA j WHERE e.ID_Echipa = j.ID_Echipa GROUP BY e.ID_Echipa, e.Denumire_Echipa ORDER BY SUM(j.Salariu_An) DESC FETCH FIRST 5 ROWS ONLY;

SELECT ROUND(SDO_GEOM.SDO_AREA(SDO_AGGR_MBR(a.GEOM_Arena), 0.75, 'unit = SQ_KM'), 2) || ' km patrati' AS Suprafata_Totala_Top5
FROM ARENE_NBA a, (SELECT e.ID_Echipa FROM ECHIPE_NBA e, JUCATORI_NBA j WHERE e.ID_Echipa = j.ID_Echipa GROUP BY e.ID_Echipa ORDER BY SUM(j.Salariu_An) DESC FETCH FIRST 5 ROWS ONLY) Top_Salarii_Echipe 
WHERE a.ID_Echipa = Top_Salarii_Echipe.ID_Echipa;

--7. Sa se afiseze in Map View reuniunea topologica dintre arenele echipelor din cele doua conferinte (Vest si Est) care prezinta capacitatea cea mai mare a arenei in conferintele din care fac parte, pe o raza de 500 de km.
SELECT SDO_GEOM.SDO_UNION(SDO_GEOM.SDO_BUFFER(a1.GEOM_Arena, 500, 0.75, 'unit = KM'), SDO_GEOM.SDO_BUFFER(a2.GEOM_Arena, 500, 0.75, 'unit = KM'), 0.75 ) AS Reuniune_500km
FROM ARENE_NBA a1, ARENE_NBA a2 
WHERE a1.ID_Echipa = (SELECT a12.ID_Echipa FROM ARENE_NBA a12, ECHIPE_NBA e1 WHERE a12.ID_Echipa = e1.ID_Echipa AND e1.Conferinta = 'Vest' ORDER BY a12.Capacitate DESC FETCH FIRST 1 ROW ONLY)
AND a2.ID_Echipa = (SELECT a22.ID_Echipa FROM ARENE_NBA a22, ECHIPE_NBA e2 WHERE a22.ID_Echipa = e2.ID_Echipa AND e2.Conferinta = 'Est' ORDER BY a22.Capacitate DESC FETCH FIRST 1 ROW ONLY);
-- DROP TABLE Tabela_UNION;
CREATE TABLE Tabela_UNION as SELECT SDO_GEOM.SDO_UNION(SDO_GEOM.SDO_BUFFER(a1.GEOM_Arena, 500, 0.75, 'unit=KM'), SDO_GEOM.SDO_BUFFER(a2.GEOM_Arena, 500, 0.75, 'unit = KM'), 0.75 ) Reuniune_500km
FROM ARENE_NBA a1, ARENE_NBA a2 
WHERE a1.ID_Echipa = (SELECT a12.ID_Echipa FROM ARENE_NBA a12, ECHIPE_NBA e1 WHERE a12.ID_Echipa = e1.ID_Echipa AND e1.Conferinta = 'Vest' ORDER BY a12.Capacitate DESC FETCH FIRST 1 ROW ONLY)
AND a2.ID_Echipa = (SELECT a22.ID_Echipa FROM ARENE_NBA a22, ECHIPE_NBA e2 WHERE a22.ID_Echipa = e2.ID_Echipa AND e2.Conferinta = 'Est' ORDER BY a22.Capacitate DESC FETCH FIRST 1 ROW ONLY);

--8. Sa se afiseze primii 10 jucatori din Conferinta de Vest din perspectiva salariului, alaturi de distanta arenei echipei pentru care joaca fata de centroidul arenelor Conferintei de Vest.
SELECT j.Prenume, j.Nume, j.Salariu_An, a.Denumire_Arena, e.Denumire_Echipa, ROUND(SDO_GEOM.SDO_DISTANCE(a.GEOM_Arena, CENTROID_VEST.Centroid_Geom, 0.75, 'unit = KM'), 2) || ' km' AS Distanta_Arenei_Jucatorului_fata_de_Centroid
FROM JUCATORI_NBA j, ECHIPE_NBA e, ARENE_NBA a, (SELECT SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(AVG(a2.GEOM_Arena.SDO_POINT.X), AVG(a2.GEOM_Arena.SDO_POINT.Y),NULL),NULL, NULL) AS Centroid_Geom
FROM ARENE_NBA a2, ECHIPE_NBA e2 WHERE a2.ID_Echipa = e2.ID_Echipa AND e2.Conferinta = 'Vest') CENTROID_VEST
WHERE j.ID_Echipa = e.ID_Echipa AND j.ID_Echipa = a.ID_Echipa AND e.Conferinta = 'Vest'
ORDER BY j.Salariu_An DESC 
FETCH FIRST 10 ROWS ONLY; 

--9. Sa se afiseze toti jucatorii echipelor din Conferinta de Vest care se afla in afara celui mai mic dreptunghi care cuprinde toate arenele din Conferinta de Vest.
SELECT j.ID_Jucator, j.Nume, j.Prenume, e.Denumire_Echipa, a.Denumire_Arena, e.Conferinta
FROM JUCATORI_NBA j, ECHIPE_NBA e, ARENE_NBA a
WHERE j.ID_Echipa = e.ID_Echipa AND j.ID_Echipa = a.ID_Echipa 
AND SDO_RELATE(a.GEOM_Arena, (SELECT SDO_AGGR_MBR(a2.GEOM_Arena) FROM ARENE_NBA a2, ECHIPE_NBA e2 WHERE a2.ID_Echipa = e2.ID_Echipa AND e2.Conferinta = 'Vest'), 'mask = DISJOINT') = 'TRUE'
ORDER BY j.ID_Jucator, j.Salariu_An DESC;
-- DROP TABLE Tabela_Dreptunghi_Mic;
CREATE TABLE Tabela_Dreptunghi_Mic as SELECT SDO_AGGR_MBR(a.GEOM_Arena) as Cel_Mai_Mic_Dreptunghi
FROM ARENE_NBA a, ECHIPE_NBA e
WHERE a.ID_Echipa = e.ID_Echipa AND e.Conferinta = 'Vest';