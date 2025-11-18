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

INSERT INTO appointments (appointid, animalid, appointdate, reason)
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
