CREATE DATABASE veterinary;

CREATE TABLE owners
(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animals
(
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);

CREATE TABLE appointments
(
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

CREATE TABLE doctors
(
    doctorid INT PRIMARY KEY,
    dfirstname VARCHAR(50),
    dlastname VARCHAR(50),
    specialty VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE invoices
(
    invoiceid INT PRIMARY KEY,
    appointid INT,
    totalamount NUMERIC(10,2),
    paymentdate TIME,
    FOREIGN KEY (appointid) REFERENCES appointments(appointid)
);

CREATE TABLE medicalrecords
(
    recordid INT PRIMARY KEY,
    animalid INT,
    recorddate TIMESTAMP,
    doctorid INT,
    diagnosis TEXT,
    prescription TEXT,
    notes TEXT,
    FOREIGN KEY (animalid) references animals(animalid),
    FOREIGN KEY (doctorid) references doctors(doctorid)
);

INSERT INTO owners
    (ownerid, ofirstname, olastname, address, phone, email)
VALUES
    (1, 'Mark', 'Santos', 'Manila', '09101112222', 'mark.santos@example.com'),
    (2, 'Liza', 'Reyes', 'Quezon City', '09223334455', 'liza.reyes@example.com'),
    (3, 'Carlo', 'Garcia', 'Tagaytay', '09335556677', 'carlo.garcia@example.com'),
    (4, 'Mika', 'Torres', 'Batangas', '09447778899', 'mika.torres@example.com'),
    (5, 'Evan', 'Lopez', 'Laguna', '09556667788', 'evan.lopez@example.com'),
    (6, 'Rhea', 'Cruz', 'Cebu City', '09667778800', 'rhea.cruz@example.com'),
    (7, 'Daniel', 'Rivera', 'Pasig', '09778889911', 'daniel.rivera@example.com'),
    (8, 'Sofia', 'Mendoza', 'Makati', '09889990022', 'sofia.mendoza@example.com'),
    (9, 'Kevin', 'Villanueva', 'Baguio', '09990001133', 'kevin.villanueva@example.com'),
    (10, 'Alyssa', 'Navarro', 'Davao City', '09123450099', 'alyssa.navarro@example.com');

INSERT INTO pets
    (animalid, name, species, breed, dateofbirth, gender, color, ownerid)
VALUES
    (11, 'Cosmo', 'Rabbit', 'Mini Lop', '2023-01-15', 'Male', 'White', 1),
    (12, 'Zelda', 'Bird', 'Cockatiel', '2022-04-20', 'Female', 'Gray', 2),
    (13, 'Sheldon', 'Turtle', 'Red-Eared Slider', '2015-10-01', 'Male', 'Green', 3),
    (14, 'Cleo', 'Cat', 'Maine Coon', '2021-07-29', 'Female', 'Calico', 4),
    (15, 'Echo', 'Dog', 'Border Collie', '2024-03-05', 'Male', 'Black/White', 5),
    (16, 'Squirt', 'Fish', 'Betta', '2023-11-11', 'Male', 'Red', 6),
    (17, 'Gizmo', 'Dog', 'Dachshund', '2019-09-18', 'Male', 'Tan', 7),
    (18, 'Willow', 'Cat', 'Sphynx', '2022-02-08', 'Female', 'Pink', 8),
    (19, 'Blaze', 'Horse', 'Arabian', '2017-05-25', 'Male', 'Bay', 9),
    (20, 'Ollie', 'Dog', 'Pug', '2020-12-01', 'Female', 'Fawn', 10);

INSERT INTO appointments
    (appointid, animalid, appointdate, reason)
VALUES
    (1, 21, '2026-01-10', 'Annual Checkup'),
    (2, 22, '2026-01-11', 'Vaccination Booster'),
    (3, 23, '2026-01-12', 'Neutering Consultation'),
    (4, 24, '2026-01-13', 'Skin Irritation Treatment'),
    (5, 25, '2026-01-14', 'Ear Cleaning'),
    (6, 26, '2026-01-15', 'Surgery Follow-up'),
    (7, 27, '2026-01-16', 'Eye Checkup'),
    (8, 28, '2026-01-17', 'Ultrasound'),
    (9, 29, '2026-01-18', 'Allergy Testing'),
    (10, 30, '2026-01-19', 'General Health Assessment');

INSERT INTO doctors
    (doctorid, dfirstname, dlastname, speciality, phone, email)
VALUES
    (1, 'Dr.Maria', 'Santos', 'General Veterinarian', '987-654-3210', 'maria@example.com'),
    (2, 'Dr.Antonio', 'Gonzales', 'Feline Specialist', '555-123-4567', 'antonio@example.com'),
    (3, 'Dr.Felipe', 'Luna', 'Orthopedic Specialist', '111-222-3333', 'felipe@example.com'),
    (4, 'Dr.Sofia', 'Reyes', 'Dermatology Specialist', '999-888-7777', 'sofia@xample.com'),
    (5, 'Dr.Luis', 'Torres', 'Surgery Specialist', '123-555-7777', 'luis@example.com'),
    (6, 'Dr.Carmen', 'Fernandez', 'Opthalmology Specialist', '333-222-1111', 'carmen@example.com');

INSERT INTO invoices
    (invoiceid, appointid, totalamount, paymentdate)
VALUES
    (1, 1, 50.00, '09:30:00'),
    (2, 2, 75.00, '14:15:00'),
    (3, 3, 100.00, '11:00:00'),
    (4, 4, 200.00, '13:45:00'),
    (5, 5, 80.00, '10:30:00'),
    (6, 6, 30.00, '15:00:00'),
    (7, 7, 75.00, '09:15:00'),
    (8, 8, 150.00, '16:30:00'),
    (9, 9, 60.00, '14:45:00'),
    (10, 10, 40.00, '11:30:00');

INSERT INTO medicalrecords
    (recordid, animalid, recorddate, doctorid, diagnosis, prescription, notes)
VALUES
    (1, 1, '2023-01-05 00:00:00', 1, 'Health check', 'N/A', 'Regular checkup, no issue detected'),
    (2, 2, '2023-01-10 00:00:00', 1, 'Vaccination', 'Vaccine X', 'Administered vaccination X as per schedule'),
    (3, 3, '2023-02-02 00:00:00', 3, 'Sprained leg', 'Pain Medication', 'Rest recommended for two weeks'),
    (4, 4, '2023-02-15 00:00:00', 1, 'Dental cleaning', 'N/A', 'Completed dental cleaning procedure'),
    (5, 5, '2023-03-10 00:00:00', 4, 'Skin infection', 'Antibiotics', 'Prescribed antibiotics for skin infection'),
    (6, 6, '2023-03-10 00:00:00', 2, 'Flea infestation', 'Flea Treatment', 'Administered flea treatment'),
    (7, 7, '2023-04-12 00:00:00', 1, 'Vaccination', 'Vaccine Y', 'Administered vaccination Y as per schedule'),
    (8, 8, '2023-04-18 00:00:00', 5, 'Spaying', 'N/A', 'Successfully performed spaying surgery'),
    (9, 9, '2023-05-02 00:00:00', 4, 'Allergic reaction', 'Antihistamines', 'Allergic reaction due to food prescribed antihistamine'),
    (10, 10, '2023-05-20 00:00:00', 6, 'Conjunctivitis', 'Eye drops', 'Prescribed eye drops for conjunctivitis');
