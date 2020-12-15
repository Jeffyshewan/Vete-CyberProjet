-- Doctors
insert into doctor(id, firstname, lastname, address, zipcode, arrival) values (1, 'Yolande', 'Moreau', '3 rue Deschiens', '59000',TO_DATE('03/02/1974', 'DD/MM/YYYY'));
insert into doctor(id, firstname, lastname, address, zipcode, arrival) values (2, 'Heloise', 'Letissier', '5 rue Bowie', '95360',TO_DATE('16/10/1975', 'DD/MM/YYYY'));
insert into doctor(id, firstname, lastname, address, zipcode, arrival) values (3, 'Jenny', 'Letellier', '105 rue a l envers', '93000',TO_DATE('11/12/1979', 'DD/MM/YYYY'));
insert into doctor(id, firstname, lastname, address, zipcode, arrival) values (4, 'Chiara', 'Brichot', '10 rue de maubeuge', '59600',TO_DATE('20/04/1990', 'DD/MM/YYYY'));
insert into doctor(id, firstname, lastname, address, zipcode, arrival) values (5, 'Pablo', 'Picasso', '3 avenue d Antibes', '02000',TO_DATE('23/01/1986', 'DD/MM/YYYY'));
insert into doctor(id, firstname, lastname, address, zipcode, arrival) values (6, 'Frank', 'Fontaine', '363 bis bvd rapture', '75000',TO_DATE('03/11/1968', 'DD/MM/YYYY'));

-- Medicine
insert into medicine(id, name) values (1, 'acepromazine');
insert into medicine(id, name) values (2, 'neomycin');
insert into medicine(id, name) values (3, 'metacam');
insert into medicine(id, name) values (4, 'pentobarbital');
insert into medicine(id, name) values (5, 'sucralfate');
insert into medicine(id, name) values (6, 'telazol');
insert into medicine(id, name) values (7, 'xylazine');
insert into medicine(id, name) values (8, 'ivermectin');
insert into medicine(id, name) values (9, 'ketamine');

-- Animal
insert into Animal(name, race, birth, death) values ('Boby', 'chien', TO_DATE('01/02/2015', 'DD/MM/YYYY'), TO_DATE('11/09/2020', 'DD/MM/YYYY'));
insert into Animal(name, race, birth) values ('Bill', 'chien', TO_DATE('01/05/2018', 'DD/MM/YYYY'));
insert into Animal(name, race, birth) values ('Darius', 'chien', TO_DATE('01/05/2016', 'DD/MM/YYYY'));
insert into Animal(name, race, birth, parent_1_id, parent_2_id) values ('Rex', 'chien', TO_DATE('01/11/2020', 'DD/MM/YYYY'), 1, 2);
insert into Animal(name, race, birth, parent_1_id) values ('Splat', 'chien', TO_DATE('01/02/2018', 'DD/MM/YYYY'), 4);
insert into Animal(name, race, birth) values ('Bring', 'chien', TO_DATE('21/11/2019', 'DD/MM/YYYY'));


-- RDV
insert into rdv(id, date, doctor_id, animal_id) values (1, '2020-05-03T14:00', 1, 1);
insert into rdv(id, date, doctor_id, animal_id) values (2, '2020-07-05T07:00', 2, 1);
insert into rdv(id, date, doctor_id, animal_id) values (3, '2020-05-09T21:00', 3, 2);
insert into rdv(id, date, doctor_id, animal_id) values (4, '2020-06-06T18:00', 4, 5);
insert into rdv(id, date, doctor_id, animal_id) values (5, '2020-06-03T17:00', 5, 4);
insert into rdv(id, date, doctor_id, animal_id) values (6, '2020-07-07T15:00', 1, 1);
insert into rdv(id, date, doctor_id, animal_id) values (7, '2020-08-22T12:00', 2, 3);
insert into rdv(id, date, doctor_id, animal_id) values (8, '2020-05-14T09:00', 3, 5);
insert into rdv(id, date, doctor_id, animal_id) values (9, '2020-04-09T13:00', 4, 3);
insert into rdv(id, date, doctor_id, animal_id) values (10, '2020-04-07T14:00', 5, 2);

-- Prescription
insert into prescription(name, doctor_id, animal_id) values ('ordo1', 1, 1);
insert into prescription(name, doctor_id, animal_id) values ('ordo2', 1, 2);
insert into prescription(name, doctor_id, animal_id) values ('ordo3', 1, 2);
insert into prescription(name, doctor_id, animal_id) values ('ordo4', 1, 2);
insert into prescription(name, doctor_id, animal_id) values ('ordo5', 1, 2);
insert into prescription(name, doctor_id, animal_id) values ('ordo6', 1, 2);
insert into prescription(name, doctor_id, animal_id) values ('ordo7', 2, 2);
insert into prescription(name, doctor_id, animal_id) values ('ordo8', 2, 2);
insert into prescription(name, doctor_id, animal_id) values ('ordo9', 3, 2);
insert into prescription(name, doctor_id, animal_id) values ('ordo10', 3, 2);
insert into prescription(name, doctor_id, animal_id) values ('ordo11', 3, 2);
insert into prescription(name, doctor_id, animal_id) values ('ordo12', 4, 2);
insert into prescription(name, doctor_id, animal_id) values ('ordo13', 5, 2);
insert into prescription(name, doctor_id, animal_id) values ('ordo14', 5, 2);
insert into prescription(name, doctor_id, animal_id) values ('ordo15', 5, 2);

-- Dosage
insert into DOSAGE(PRESCRIPTION_ID, MEDICINE_ID, quantity, frequency) values (1, 6, 1, 1);
insert into DOSAGE(PRESCRIPTION_ID, MEDICINE_ID, quantity, frequency) values (1, 1, 1, 1);
insert into DOSAGE(PRESCRIPTION_ID, MEDICINE_ID, quantity, frequency) values (1, 5, 1, 2);
insert into DOSAGE(PRESCRIPTION_ID, MEDICINE_ID, quantity, frequency) values (2, 2, 1, 2);
insert into DOSAGE(PRESCRIPTION_ID, MEDICINE_ID, quantity, frequency) values (2, 9, 1, 2);
insert into DOSAGE(PRESCRIPTION_ID, MEDICINE_ID, quantity, frequency) values (3, 7, 1, 2);
insert into DOSAGE(PRESCRIPTION_ID, MEDICINE_ID, quantity, frequency) values (5, 6, 2, 2);
insert into DOSAGE(PRESCRIPTION_ID, MEDICINE_ID, quantity, frequency) values (4, 3, 2, 2);
insert into DOSAGE(PRESCRIPTION_ID, MEDICINE_ID, quantity, frequency) values (6, 6, 2, 2);
insert into DOSAGE(PRESCRIPTION_ID, MEDICINE_ID, quantity, frequency) values (6, 9, 2, 1);
insert into DOSAGE(PRESCRIPTION_ID, MEDICINE_ID, quantity, frequency) values (7, 4, 2, 1);
insert into DOSAGE(PRESCRIPTION_ID, MEDICINE_ID, quantity, frequency) values (8, 3, 2, 1);
insert into DOSAGE(PRESCRIPTION_ID, MEDICINE_ID, quantity, frequency) values (9, 9, 1, 3);
insert into DOSAGE(PRESCRIPTION_ID, MEDICINE_ID, quantity, frequency) values (9, 4, 1, 3);
insert into DOSAGE(PRESCRIPTION_ID, MEDICINE_ID, quantity, frequency) values (9, 7, 1, 3);
insert into DOSAGE(PRESCRIPTION_ID, MEDICINE_ID, quantity, frequency) values (10, 9, 1, 3);
insert into DOSAGE(PRESCRIPTION_ID, MEDICINE_ID, quantity, frequency) values (11, 3, 2, 1);
insert into DOSAGE(PRESCRIPTION_ID, MEDICINE_ID, quantity, frequency) values (11, 7, 2, 1);
insert into DOSAGE(PRESCRIPTION_ID, MEDICINE_ID, quantity, frequency) values (12, 6, 2, 1);
insert into DOSAGE(PRESCRIPTION_ID, MEDICINE_ID, quantity, frequency) values (13, 1, 2, 1);

-- authentification + role admin + user
insert into ROLE values (1, '"ROLE_ADMIN');
insert into ROLE values (2, 'ROLE_USER');

insert into USER(num, username, password) values (1, 'Chiara', 'justPixel');
insert into USER(num, username, password) values (2, 'Adrien', 'justPixel');
insert into USER(num, username, password) values (3, 'Jeff', 'justPixel');

insert into USER_ROLES values (1, 1),
(2, 2),
(1, 2),
(3, 1);
