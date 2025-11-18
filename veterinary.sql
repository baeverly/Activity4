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

INSERT INTO owners (ownerid, ofirstname, olastname, address, phone, email)
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
