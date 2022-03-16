-- Part One: Medical Center
DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center;

CREATE TABLE DOCTORS (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
);

CREATE TABLE DIEASES (
    id SERIAL PRIMARY KEY,
    diease_name TEXT NOT NULL
);

CREATE TABLE PATIENTS (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
);

CREATE TABLE VISITS (
  id SERIAL PRIMARY KEY,
  patient_id INT NOT NULL,
  diagnosed_diease INT NOT NULL,
  diagnosed_doctor INT NOT NULL,
  FOREIGN KEY (patient_id) REFERENCES PATIENTS(id) ON DELETE CASCADE,
  FOREIGN KEY (diagnosed_diease) REFERENCES DIEASES(id) ON DELETE CASCADE,
  FOREIGN KEY (diagnosed_doctor) REFERENCES DOCTORS(id) ON DELETE CASCADE
);

INSERT INTO DOCTORS (first_name, last_name) VALUES ('Joe', 'Smith');
INSERT INTO DOCTORS (first_name, last_name) VALUES ('Jake', 'Jones');
INSERT INTO DOCTORS (first_name, last_name) VALUES ('Samatha', 'Chalk');

INSERT INTO DIEASES (diease_name) VALUES ('Chicken Pox');
INSERT INTO DIEASES (diease_name) VALUES ('Measles');
INSERT INTO DIEASES (diease_name) VALUES ('Dehydration');

INSERT INTO PATIENTS (first_name, last_name) VALUES ('Fred', 'Jones');
INSERT INTO PATIENTS (first_name, last_name) VALUES ('Frank', 'Smith');
INSERT INTO PATIENTS (first_name, last_name) VALUES ('Jake', 'Fram');

INSERT INTO VISITS (patient_id, diagnosed_diease, diagnosed_doctor) VALUES (1, 1, 1);
INSERT INTO VISITS (patient_id, diagnosed_diease, diagnosed_doctor) VALUES (1, 3, 1);

INSERT INTO VISITS (patient_id, diagnosed_diease, diagnosed_doctor) VALUES (2, 1, 2);
INSERT INTO VISITS (patient_id, diagnosed_diease, diagnosed_doctor) VALUES (2, 2, 2);

INSERT INTO VISITS (patient_id, diagnosed_diease, diagnosed_doctor) VALUES (3, 2, 3);
INSERT INTO VISITS (patient_id, diagnosed_diease, diagnosed_doctor) VALUES (3, 3, 3);
