create database BloodDonation; 
USE BloodDonation;



CREATE TABLE Donor(
DonorId INT,
Name VARCHAR(255), Age INT,
Gender VARCHAR(255),
BloodTypeId INT, MHID INT,
PRIMARY KEY(DonorId)
);
ALTER TABLE Donor
ADD FOREIGN KEY(BloodTypeId) REFERENCES BloodType(BloodTypeId);

ALTER TABLE Donor
ADD FOREIGN KEY(MHID)
REFERENCES MedicalHistory(MHID); 
SELECT * FROM Donor;
INSERT INTO Donor(DonorId, Name, Age, Gender, BloodTypeId, MHID) VALUES(101,
'John Smith', 30, 'Male', 101, 201);
INSERT INTO Donor(DonorId, Name, Age, Gender, BloodTypeId, MHID) VALUES(102, 'Mary Brown', 25, 'Female', 102, 202);
INSERT INTO Donor(DonorId, Name, Age, Gender, BloodTypeId, MHID) VALUES(103, 'David Lee', 40, 'Male', 103, 203);
INSERT INTO Donor(DonorId, Name, Age, Gender, BloodTypeId, MHID) VALUES(104, 'Sarah White', 28, 'Female', 104, 204);
INSERT INTO Donor(DonorId, Name, Age, Gender, BloodTypeId, MHID) VALUES(105, 'James Clark', 35, 'Male', 105, 205);
INSERT INTO Donor(DonorId, Name, Age, Gender, BloodTypeId, MHID) VALUES(106, 'Lisa Davis', 29, 'Female', 106, 206);

INSERT INTO Donor(DonorId, Name, Age, Gender, BloodTypeId, MHID) VALUES(107, 'Michael Wang', 45, 'Male', 107, 207);
INSERT INTO Donor(DonorId, Name, Age, Gender, BloodTypeId, MHID) VALUES(108, 'Emily Kim', 27, 'Female', 108, 208);
INSERT INTO Donor(DonorId, Name, Age, Gender, BloodTypeId, MHID) VALUES(109, 'Daniel Chen', 32, 'Male', 109, 209);
INSERT INTO Donor(DonorId, Name, Age, Gender, BloodTypeId, MHID) VALUES(110, 'Jessica Liu', 26, 'Female', 110, 210);
INSERT INTO Donor(DonorId, Name, Age, Gender, BloodTypeId, MHID) VALUES(111,
'Robert Zhang', 38, 'Male', 111, 211);
INSERT INTO Donor(DonorId, Name, Age, Gender, BloodTypeId, MHID) VALUES(112, 'Olivia Wu', 24, 'Female', 112, 212);
INSERT INTO Donor(DonorId, Name, Age, Gender, BloodTypeId, MHID) VALUES(113, 'William Yu', 31, 'Male', 113, 213);
INSERT INTO Donor(DonorId, Name, Age, Gender, BloodTypeId, MHID) VALUES(114, 'Sophia Li', 33, 'Female', 114, 214);
INSERT INTO Donor(DonorId, Name, Age, Gender, BloodTypeId, MHID) VALUES(115,
'Ethan Wang', 28, 'Male', 115, 215);
INSERT INTO Donor(DonorId, Name, Age, Gender, BloodTypeId, MHID) VALUES(116, 'Mia Lee', 29, 'Female', 116, 216);
INSERT INTO Donor(DonorId, Name, Age, Gender, BloodTypeId, MHID) VALUES(117, 'Samuel Kim', 37, 'Male', 117, 217);
INSERT INTO Donor(DonorId, Name, Age, Gender, BloodTypeId, MHID) VALUES(118, 'Ava Chen', 27, 'Female', 118, 218);
INSERT INTO Donor(DonorId, Name, Age, Gender, BloodTypeId, MHID) VALUES(119, 'Benjamin Wu', 36, 'Male', 119, 219);
INSERT INTO Donor(DonorId, Name, Age, Gender, BloodTypeId, MHID) VALUES(120, 'Grace Zhang', 30, 'Female', 120, 220);
DROP TABLE Donor;

select * from Donor;


CREATE TABLE BloodBank( BankId INT AUTO_INCREMENT,
Name VARCHAR(100),
Location VARCHAR(100), ContactInfo VARCHAR(15), PRIMARY KEY(BankId)
);
SELECT * FROM BloodBank;

INSERT INTO BloodBank(Name, Location, ContactInfo) VALUES('Lifesaver Blood Bank', 'Hyderabad', '9876543212');
INSERT INTO BloodBank(Name, Location, ContactInfo) VALUES('Red Cross Blood Bank', 'Lucknow', '9556789345');
INSERT INTO BloodBank(Name, Location, ContactInfo) VALUES('Hope Blood Center', 'Jaipur', '9988776655');
INSERT INTO BloodBank(Name, Location, ContactInfo) VALUES('Vitality Blood Center', 'Chennai', '8877665544');
INSERT INTO BloodBank(Name, Location, ContactInfo) VALUES('Unity Blood Services', 'Ladhak', '9977553311');
INSERT INTO BloodBank(Name, Location, ContactInfo) VALUES('Harmony Blood Bank', 'Haryana', '7654321895');
INSERT INTO BloodBank(Name, Location, ContactInfo) VALUES('Angel Blood Donors', 'Punjab', '9635432189');
INSERT INTO BloodBank(Name, Location, ContactInfo) VALUES('Beacon Blood Center', 'Kolkata', '8275432199');
INSERT INTO BloodBank(Name, Location, ContactInfo) VALUES('Pacific Blood Bank', 'Gujarat', '9356743798');
INSERT INTO BloodBank(Name, Location, ContactInfo) VALUES('Sunshine Blood Donors', 'Mumbai', '9765434567');
INSERT INTO BloodBank(Name, Location, ContactInfo) VALUES('Heartland Blood Center', 'Pune', '9780927654');
INSERT INTO BloodBank(Name, Location, ContactInfo) VALUES('Starlight Blood Bank', 'Nagpur', '7896549823');
INSERT INTO BloodBank(Name, Location, ContactInfo) VALUES('Lifeblood Donations','Goa', '8971234590');
INSERT INTO BloodBank(Name, Location, ContactInfo) VALUES('Sunbeam Blood Center', 'Kerala', '9678543295');
INSERT INTO BloodBank(Name, Location, ContactInfo) VALUES('Rainbow Blood Bank', 'Banglore', '8516789902');
INSERT INTO BloodBank(Name, Location, ContactInfo) VALUES('Mountain Blood Center', 'Indore', '7298546231');
INSERT INTO BloodBank(Name, Location, ContactInfo) VALUES('Golden Gate Blood Bank', 'Odisha', '7456123023');
INSERT INTO BloodBank(Name, Location, ContactInfo) VALUES('Aurora Blood Services', 'Kanpur', '7345251908');
INSERT INTO BloodBank(Name, Location, ContactInfo) VALUES('Crescent Blood Donors', 'Nagaland', '9245667877');
INSERT INTO BloodBank(Name, Location, ContactInfo) VALUES('Freedom Blood Bank', 'Delhi', '8097456321');
DROP TABLE BloodBank;


CREATE TABLE BloodDonationEvent( EventId INT AUTO_INCREMENT,
Name VARCHAR(100),
Date DATE,
Location VARCHAR(50), PRIMARY KEY(EventId)
);
SELECT * FROM BloodDonationEvent;

INSERT INTO BloodDonationEvent(Name, Date, Location) VALUES('Blood Drive 2021', '2021-05-12', 'Hyderabad');
INSERT INTO BloodDonationEvent(Name, Date, Location) VALUES('Community Blood Fair', '2021-06-20', 'Lucknow');
INSERT INTO BloodDonationEvent(Name, Date, Location) VALUES('Summer Blood Bash',
'2021-07-10', 'Jaipur');
INSERT INTO BloodDonationEvent(Name, Date, Location) VALUES('Citywide Blood Fest', '2021-08-05', 'Chennai');
INSERT INTO BloodDonationEvent(Name, Date, Location) VALUES('Sunnyvale Blood Drive', '2021-09-12', 'Ladhak');
INSERT INTO BloodDonationEvent(Name, Date, Location) VALUES('Bay Area Blood Expo', '2021-10-03', 'Haryana');
INSERT INTO BloodDonationEvent(Name, Date, Location) VALUES('Seattle Bloodathon', '2021-11-08', 'Punjab');
INSERT INTO BloodDonationEvent(Name, Date, Location) VALUES('Boston Blood Festival', '2021-12-20', 'Kolkata');
INSERT INTO BloodDonationEvent(Name, Date, Location) VALUES('Mile-High Blood
Drive', '2022-01-15', 'Gujarat');
INSERT INTO BloodDonationEvent(Name, Date, Location) VALUES('Texas Donor Day', '2022-02-28', 'Mumbai');
INSERT INTO BloodDonationEvent(Name, Date, Location) VALUES('Atlanta Blood Fest', '2022-03-10', 'Pune');
INSERT INTO BloodDonationEvent(Name, Date, Location) VALUES('Desert Blood Drive', '2022-04-05', 'Nagpur');
INSERT INTO BloodDonationEvent(Name, Date, Location) VALUES('Philiy Blood Marathon', '2022-05-20', 'Goa');
INSERT INTO BloodDonationEvent(Name, Date, Location) VALUES('DC Blood Expo', '2022-06-15', 'Kerala');
INSERT INTO BloodDonationEvent(Name, Date, Location) VALUES('San Diego Donor
Fair', '2022-07-22', 'Banglore');
INSERT INTO BloodDonationEvent(Name, Date, Location) VALUES('Austin Blood Rally', '2022-08-08', 'Indore');
INSERT INTO BloodDonationEvent(Name, Date, Location) VALUES('Silicon Valley Donors', '2022-09-18', 'Odisha');
INSERT INTO BloodDonationEvent(Name, Date, Location) VALUES('Twin Cities Blood Fest', '2022-10-12', 'Kanpur');
INSERT INTO BloodDonationEvent(Name, Date, Location) VALUES('Portland Blood
Drive', '2022-11-25', 'Nagaland');
INSERT INTO BloodDonationEvent(Name, Date, Location) VALUES('Music City Blood Fest', '2022-12-30', 'Delhi');
CREATE TABLE BloodDonationRecord( RecordId INT,
DonorId INT, EventId INT, Date DATE, BPID INT,
HaemoglobinLevel DECIMAL(3,1), PRIMARY KEY(RecordId, DonorId, BPID)
);
ALTER TABLE BloodDonationRecord ADD FOREIGN KEY(DonorId)
REFERENCES Donor(DonorId);

ALTER TABLE BloodDonationRecord ADD FOREIGN KEY(EventId)
REFERENCES BloodDonationEvent(EventId);

ALTER TABLE BloodDonationRecord ADD FOREIGN KEY(BPID)
REFERENCES BloodPressure(BPID);


SELECT * FROM BloodDonationRecord;

INSERT INTO BloodDonationRecord(RecordId, DonorId, EventId, Date, BPID, HaemoglobinLevel) VALUES(1, 101, 1, '2023-03-01', 1, 13.5);
INSERT INTO BloodDonationRecord(RecordId, DonorId, EventId, Date, BPID, HaemoglobinLevel) VALUES(2, 102, 2, '2023-03-02', 2, 12.8);
INSERT INTO BloodDonationRecord(RecordId, DonorId, EventId, Date, BPID, HaemoglobinLevel) VALUES(3, 103, 3, '2023-03-03', 3, 14.2);
INSERT INTO BloodDonationRecord(RecordId, DonorId, EventId, Date, BPID, HaemoglobinLevel) VALUES(4, 104, 4, '2023-03-04', 4, 12.0);
INSERT INTO BloodDonationRecord(RecordId, DonorId, EventId, Date, BPID, HaemoglobinLevel) VALUES(5, 105, 5, '2023-03-05', 5, 13.7);
INSERT INTO BloodDonationRecord(RecordId, DonorId, EventId, Date, BPID, HaemoglobinLevel) VALUES(6, 106, 6, '2023-03-06', 6, 14.8);
INSERT INTO BloodDonationRecord(RecordId, DonorId, EventId, Date, BPID, HaemoglobinLevel) VALUES(7, 107, 7, '2023-03-07', 7, 12.6);
INSERT INTO BloodDonationRecord(RecordId, DonorId, EventId, Date, BPID, HaemoglobinLevel) VALUES(8, 108, 8, '2023-03-08', 8, 13.4);
INSERT INTO BloodDonationRecord(RecordId, DonorId, EventId, Date, BPID, HaemoglobinLevel) VALUES(9, 109, 9, '2023-03-09', 9, 14.1);
INSERT INTO BloodDonationRecord(RecordId, DonorId, EventId, Date, BPID, HaemoglobinLevel) VALUES(10, 110, 10, '2023-03-10', 10, 12.9);
INSERT INTO BloodDonationRecord(RecordId, DonorId, EventId, Date, BPID, HaemoglobinLevel) VALUES(11, 111, 11, '2023-03-11', 11, 13.3);
INSERT INTO BloodDonationRecord(RecordId, DonorId, EventId, Date, BPID, HaemoglobinLevel) VALUES(12, 112, 12, '2023-03-12', 12, 14.5);
INSERT INTO BloodDonationRecord(RecordId, DonorId, EventId, Date, BPID, HaemoglobinLevel) VALUES(13, 113, 13, '2023-03-13', 13, 11.7);
INSERT INTO BloodDonationRecord(RecordId, DonorId, EventId, Date, BPID, HaemoglobinLevel) VALUES(14, 114, 14, '2023-03-14', 14, 13.0);
INSERT INTO BloodDonationRecord(RecordId, DonorId, EventId, Date, BPID, HaemoglobinLevel) VALUES(15, 115, 15, '2023-03-15', 15, 12.3);
INSERT INTO BloodDonationRecord(RecordId, DonorId, EventId, Date, BPID, HaemoglobinLevel) VALUES(16, 116, 16, '2023-03-16', 16, 13.9);
INSERT INTO BloodDonationRecord(RecordId, DonorId, EventId, Date, BPID, HaemoglobinLevel) VALUES(17, 117, 17, '2023-03-17', 17, 14.2);
INSERT INTO BloodDonationRecord(RecordId, DonorId, EventId, Date, BPID, HaemoglobinLevel) VALUES(18, 118, 18, '2023-03-18', 18, 12.5);
INSERT INTO BloodDonationRecord(RecordId, DonorId, EventId, Date, BPID, HaemoglobinLevel) VALUES(19, 119, 19, '2023-03-19', 19, 13);
INSERT INTO BloodDonationRecord(RecordId, DonorId, EventId, Date, BPID, HaemoglobinLevel) VALUES(20, 120, 20, '2023-03-20', 20, 13.8);

DROP TABLE BloodDonationRecord;
CREATE TABLE Recipient( RecipientId INT AUTO_INCREMENT,
Name VARCHAR(80), Age INT,
GenderId INT, BloodTypeId INT, MHID INT,
PRIMARY KEY(RecipientId)
);
ALTER TABLE Recipient
ADD FOREIGN KEY(GenderId)
REFERENCES Gender(GenderId);

ALTER TABLE Recipient
ADD FOREIGN KEY(BloodTypeId) REFERENCES BloodType(BloodTypeID);

ALTER TABLE Recipient ADD FOREIGN KEY(MHID)
REFERENCES MedicalHistory(MHID);

SELECT * FROM Recipient;

INSERT INTO Recipient(Name, Age, GenderId, BloodTypeId, MHID) VALUES('John', 35, 1, 101, 201);
INSERT INTO Recipient(Name, Age, GenderId, BloodTypeId, MHID) VALUES('Mary', 28, 2, 102, 202);
INSERT INTO Recipient(Name, Age, GenderId, BloodTypeId, MHID) VALUES('Robert', 45, 1, 103, 203);
INSERT INTO Recipient(Name, Age, GenderId, BloodTypeId, MHID) VALUES('Susan', 30, 2, 104, 204);
INSERT INTO Recipient(Name, Age, GenderId, BloodTypeId, MHID) VALUES('David', 42, 1, 105, 205);
INSERT INTO Recipient(Name, Age, GenderId, BloodTypeId, MHID) VALUES('Jennifer', 29, 2, 106, 206);
INSERT INTO Recipient(Name, Age, GenderId, BloodTypeId, MHID) VALUES('William', 37, 1, 107, 207);
INSERT INTO Recipient(Name, Age, GenderId, BloodTypeId, MHID) VALUES('Emily', 31, 2, 108, 208);
INSERT INTO Recipient(Name, Age, GenderId, BloodTypeId, MHID) VALUES('Michael', 50, 1, 109, 209);
INSERT INTO Recipient(Name, Age, GenderId, BloodTypeId, MHID) VALUES('Linda', 27, 2, 110, 210);
INSERT INTO Recipient(Name, Age, GenderId, BloodTypeId, MHID) VALUES('James', 40, 1, 111, 211);
INSERT INTO Recipient(Name, Age, GenderId, BloodTypeId, MHID) VALUES('Sarah', 33, 2, 112, 212);
INSERT INTO Recipient(Name, Age, GenderId, BloodTypeId, MHID) VALUES('Christopher', 38, 1, 113, 213);
INSERT INTO Recipient(Name, Age, GenderId, BloodTypeId, MHID) VALUES('Jessica', 26, 2, 114, 214);
INSERT INTO Recipient(Name, Age, GenderId, BloodTypeId, MHID) VALUES('Matthew', 48, 1, 115, 215);
INSERT INTO Recipient(Name, Age, GenderId, BloodTypeId, MHID) VALUES('Amanda', 32, 2, 116, 216);
INSERT INTO Recipient(Name, Age, GenderId, BloodTypeId, MHID) VALUES('Daniel', 36, 1, 117, 217);
INSERT INTO Recipient(Name, Age, GenderId, BloodTypeId, MHID) VALUES('Olivia', 25, 2, 118, 218);
INSERT INTO Recipient(Name, Age, GenderId, BloodTypeId, MHID) VALUES('Joseph', 41, 1, 119, 219);
INSERT INTO Recipient(Name, Age, GenderId, BloodTypeId, MHID) VALUES('Sophia', 30, 2, 120, 220);
DROP TABLE Recipient;


CREATE TABLE TransfusionRecord( TransfusionId INT AUTO_INCREMENT,
RecipientId INT, DonorId INT, Date DATE, BloodBagId INT, DoctorID INT,
PRIMARY KEY(TransfusionID)
);
ALTER TABLE TransfusionRecord ADD FOREIGN KEY(DonorId)
REFERENCES Donor(DonorId);

ALTER TABLE TransfusionRecord ADD FOREIGN KEY(RecipientId) REFERENCES Recipient(RecipientId);

ALTER TABLE TransfusionRecord ADD FOREIGN KEY(DoctorID)
REFERENCES Doctor(DoctorID); SELECT * FROM TransfusionRecord;
INSERT INTO TransfusionRecord(RecipientId, DonorId, Date, BloodBagId, DoctorID)
VALUES(1, 101, '2023-03-01', 1, 201);
INSERT INTO TransfusionRecord(RecipientId, DonorId, Date, BloodBagId, DoctorID) VALUES(2, 102, '2023-03-02', 2, 202);
INSERT INTO TransfusionRecord(RecipientId, DonorId, Date, BloodBagId, DoctorID) VALUES(3, 103, '2023-03-03', 3, 203);
INSERT INTO TransfusionRecord(RecipientId, DonorId, Date, BloodBagId, DoctorID) VALUES(4, 104, '2023-03-04', 4, 204);
INSERT INTO TransfusionRecord(RecipientId, DonorId, Date, BloodBagId, DoctorID) VALUES(5, 105, '2023-03-05', 5, 205);
INSERT INTO TransfusionRecord(RecipientId, DonorId, Date, BloodBagId, DoctorID) VALUES(6, 106, '2023-03-06', 6, 206);
INSERT INTO TransfusionRecord(RecipientId, DonorId, Date, BloodBagId, DoctorID) VALUES(7, 107, '2023-03-07', 7, 207);
INSERT INTO TransfusionRecord(RecipientId, DonorId, Date, BloodBagId, DoctorID) VALUES(8, 108, '2023-03-08', 8, 208);
INSERT INTO TransfusionRecord(RecipientId, DonorId, Date, BloodBagId, DoctorID) VALUES(9, 109, '2023-03-09', 9, 209);
INSERT INTO TransfusionRecord(RecipientId, DonorId, Date, BloodBagId, DoctorID) VALUES(10, 110, '2023-03-10', 10, 210);
INSERT INTO TransfusionRecord(RecipientId, DonorId, Date, BloodBagId, DoctorID) VALUES(11, 111, '2023-03-11', 11, 211);
INSERT INTO TransfusionRecord(RecipientId, DonorId, Date, BloodBagId, DoctorID) VALUES(12, 112, '2023-03-12', 12, 212);
INSERT INTO TransfusionRecord(RecipientId, DonorId, Date, BloodBagId, DoctorID) VALUES(13, 113, '2023-03-13', 13, 213);
INSERT INTO TransfusionRecord(RecipientId, DonorId, Date, BloodBagId, DoctorID) VALUES(14, 114, '2023-03-14', 14, 214);
INSERT INTO TransfusionRecord(RecipientId, DonorId, Date, BloodBagId, DoctorID) VALUES(15, 115, '2023-03-15', 15, 215);
INSERT INTO TransfusionRecord(RecipientId, DonorId, Date, BloodBagId, DoctorID) VALUES(16, 116, '2023-03-16', 16, 216);
INSERT INTO TransfusionRecord(RecipientId, DonorId, Date, BloodBagId, DoctorID) VALUES(17, 117, '2023-03-17', 17, 217);
INSERT INTO TransfusionRecord(RecipientId, DonorId, Date, BloodBagId, DoctorID) VALUES(18, 118, '2023-03-18', 18, 218);
INSERT INTO TransfusionRecord(RecipientId, DonorId, Date, BloodBagId, DoctorID) VALUES(19, 119, '2023-03-19', 19, 219);
INSERT INTO TransfusionRecord(RecipientId, DonorId, Date, BloodBagId, DoctorID) VALUES(20, 120, '2023-03-20', 20, 220);



DROP TABLE TransfusionRecord;
CREATE TABLE Gender (
GenderID INT,
Male VARCHAR(10), Female VARCHAR(10), PRIMARY KEY(GenderId)
);
SELECT * FROM Gender;

INSERT INTO Gender (GenderID, Male, Female) VALUES (1, 'Male', 'Female'),
(2, 'Male', 'Female'),
(3, 'Male', 'Female'),
(4, 'Male', 'Female'),
(5, 'Male', 'Female'),
(6, 'Male', 'Female'),
(7, 'Male', 'Female'),
(8, 'Male', 'Female'),
(9, 'Male', 'Female'),
(10, 'Male', 'Female'),
(11, 'Male', 'Female'),
(12, 'Male', 'Female'),
(13, 'Male', 'Female'),
(14, 'Male', 'Female'),
(15, 'Male', 'Female'),
(16, 'Male', 'Female'),
(17, 'Male', 'Female'),
(18, 'Male', 'Female'),
(19, 'Male', 'Female'),
(20, 'Male', 'Female');
CREATE TABLE BloodType ( BloodTypeId INT, A_Positive VARCHAR(10), B_Positive VARCHAR(10), AB_Positive VARCHAR(10), O_Positive VARCHAR(10), O_Negative VARCHAR(10),
AB_Negative VARCHAR(10), B_Negative VARCHAR(10), A_Negative VARCHAR(10), PRIMARY KEY(BloodTypeId)
);
SELECT * FROM BloodType;

INSERT INTO BloodType (BloodTypeID, A_Positive, B_Positive, AB_Positive, O_Positive,
O_Negative, AB_Negative, B_Negative, A_Negative) VALUES (101, 'A+', 'B+', 'AB+', 'O+', 'O-', 'AB-', 'B-', 'A-'),
(102, 'A+', 'B+', 'AB+', 'O+', 'O-', 'AB-', 'B-', 'A-'),
(103, 'A+', 'B+', 'AB+', 'O+', 'O-', 'AB-', 'B-', 'A-'),
(104, 'A+', 'B+', 'AB+', 'O+', 'O-', 'AB-', 'B-', 'A-'),
(105, 'A+', 'B+', 'AB+', 'O+', 'O-', 'AB-', 'B-', 'A-'),
(106, 'A+', 'B+', 'AB+', 'O+', 'O-', 'AB-', 'B-', 'A-'),
(107, 'A+', 'B+', 'AB+', 'O+', 'O-', 'AB-', 'B-', 'A-'),
(108, 'A+', 'B+', 'AB+', 'O+', 'O-', 'AB-', 'B-', 'A-'),
(109, 'A+', 'B+', 'AB+', 'O+', 'O-', 'AB-', 'B-', 'A-'),
(110, 'A+', 'B+', 'AB+', 'O+', 'O-', 'AB-', 'B-', 'A-'),
(111, 'A+', 'B+', 'AB+', 'O+', 'O-', 'AB-', 'B-', 'A-'),
(112, 'A+', 'B+', 'AB+', 'O+', 'O-', 'AB-', 'B-', 'A-'),
(113, 'A+', 'B+', 'AB+', 'O+', 'O-', 'AB-', 'B-', 'A-'),
(114, 'A+', 'B+', 'AB+', 'O+', 'O-', 'AB-', 'B-', 'A-'),
(115, 'A+', 'B+', 'AB+', 'O+', 'O-', 'AB-', 'B-', 'A-'),
(116, 'A+', 'B+', 'AB+', 'O+', 'O-', 'AB-', 'B-', 'A-'),
(117, 'A+', 'B+', 'AB+', 'O+', 'O-', 'AB-', 'B-', 'A-'),
(118, 'A+', 'B+', 'AB+', 'O+', 'O-', 'AB-', 'B-', 'A-'),
(119, 'A+', 'B+', 'AB+', 'O+', 'O-', 'AB-', 'B-', 'A-'),
(120, 'A+', 'B+', 'AB+', 'O+', 'O-', 'AB-', 'B-', 'A-');
DROP TABLE BloodType;


CREATE TABLE MedicalHistory ( MHID INT,
Diseases VARCHAR(255), PRIMARY KEY(MHID)
);
SELECT * FROM MedicalHistory;

INSERT INTO MedicalHistory (MHID, Diseases) VALUES (201, 'Hypertension'),
(202, 'Diabetes'),
(203, 'Asthma'),
(204, 'Cancer'),
(205, 'Heart Disease'),
(206, 'Arthritis'),
(207, 'Migraine'), (208, 'Allergies'),
(209, 'Bronchitis'),
(210, 'Osteoporosis'),
(211, 'Depression'),
(212, 'Anxiety'),
(213, 'Epilepsy'),
(214, 'Alzheimer''s Disease'),
(215, 'Parkinson''s Disease'),
(216, 'HIV/AIDS'),
(217, 'Multiple Sclerosis'),
(218, 'Stroke'),
(219, 'Ulcer'),
(220, 'Chronic Kidney Disease');
DROP TABLE MedicalHistory;

CREATE TABLE BloodPressure( BPID INT,
High INT, Low INT,
PRIMARY KEY(BPID)
);
SELECT * FROM BloodPressure;

INSERT INTO BloodPressure (BPID, High, Low) VALUES (1, 120, 80),
(2, 130, 85),
(3, 140, 90),
(4, 125, 78),
(5, 135, 88),
(6, 118, 75),
(7, 128, 82),
(8, 145, 95),
(9, 122, 79),
(10, 132, 86),
(11, 123, 81),
(12, 133, 87),
(13, 126, 77),
(14, 136, 89),
(15, 130, 84),
(16, 120, 79),
(17, 140, 88),
(18, 128, 83),
(19, 125, 80), (20,
138, 92);
CREATE TABLE Instruction ( InstructionId INT AUTO_INCREMENT, Tattoos BOOLEAN,
Alcohol BOOLEAN, Cigarettes BOOLEAN, LastDonation DATE, PRIMARY KEY(InstructionId)
);
SELECT * FROM Instruction;

INSERT INTO Instruction (Tattoos, Alcohol, Cigarettes, LastDonation) VALUES (TRUE, FALSE, TRUE, '2023-01-15'),
(FALSE, TRUE, FALSE, '2022-11-22'),
(FALSE, FALSE, TRUE, '2023-03-10'),
(TRUE, TRUE, TRUE, '2022-08-05'),
(FALSE, FALSE, FALSE, '2023-02-18'),
(TRUE, TRUE, FALSE, '2023-04-30'),
(TRUE, TRUE, TRUE, '2022-10-12'),
(FALSE, TRUE, FALSE, '2023-05-25'),
(TRUE, FALSE, TRUE, '2023-03-01'),
(FALSE, FALSE, FALSE, '2022-12-08'),
(TRUE, TRUE, FALSE, '2023-06-14'),
(TRUE, TRUE, TRUE, '2022-09-20'),
(FALSE, TRUE, FALSE, '2023-07-03'),
(TRUE, FALSE, TRUE, '2023-04-08'),
(FALSE, FALSE, FALSE, '2023-01-29'),
(TRUE, TRUE, TRUE, '2022-11-17'),
(FALSE, TRUE, FALSE, '2023-08-19'),
(TRUE, FALSE, TRUE, '2023-05-07'),
(FALSE, FALSE, FALSE, '2023-02-11'),
(TRUE, TRUE, FALSE, '2023-09-10');
CREATE TABLE Feedback (
FeedbackId INT AUTO_INCREMENT PRIMARY KEY, Name VARCHAR(50),
Age INT,
Gender ENUM('Male', 'Female', 'Other'), Location VARCHAR(100), FeedbackText TEXT
);
SELECT * FROM Feedback;

INSERT INTO Feedback (Name, Age, Gender, Location, FeedbackText) VALUES ('John Doe', 30, 'Male', 'New York', 'Great service!'),
('Jane Smith', 25, 'Female', 'Los Angeles', 'Very satisfied with the experience.'), ('Sam Johnson', 45, 'Male', 'Chicago', 'The staff was friendly and helpful.'), ('Emily Brown', 28, 'Female', 'Houston', 'Excellent facilities and care.'),
('Michael Lee', 35, 'Male', 'Miami', 'I would highly recommend this blood bank.'), ('Sophia Kim', 22, 'Female', 'San Francisco', 'Quick and easy donation process.'), ('William Davis', 40, 'Male', 'Seattle', 'Everything went smoothly.'),
('Olivia Wilson', 29, 'Female', 'Boston', 'The team here is fantastic!'), ('James Taylor', 32, 'Male', 'Denver', 'Good job, keep it up!'),
('Ava Martinez', 27, 'Female', 'Dallas', 'Clean and well-organized.'), ('Noah Garcia', 38, 'Male', 'Phoenix', 'I appreciate the care they provide.'),
('Isabella Rodriguez', 24, 'Female', 'Philadelphia', 'Efficient and professional staff.'), ('Liam Smith', 33, 'Male', 'San Diego', 'Thank you for your service.'),
('Mia Johnson', 26, 'Female', 'Austin', 'My donation experience was positive.'), ('Benjamin Brown', 42, 'Male', 'Portland', 'Friendly and informative staff.'),
('Emma Lee', 31, 'Female', 'San Antonio', 'I felt comfortable throughout the process.'), ('Ethan White', 23, 'Male', 'Nashville', 'I will definitely come back.'),
('Olivia Wilson', 44, 'Female', 'Las Vegas', 'Good service overall.'), ('Liam Smith', 28, 'Male', 'Atlanta', 'A smooth and efficient experience.'), ('Ava Martinez', 37, 'Female', 'Raleigh', 'Keep up the good work!');
CREATE TABLE Hospital (
HospitalId INT AUTO_INCREMENT PRIMARY KEY, Name VARCHAR(100),
Location VARCHAR(100), ContactNo VARCHAR(20)
);
SELECT * FROM Hospital;

INSERT INTO Hospital (Name, Location, ContactNo) VALUES ('City General Hospital', 'New York', '555-123-4567'),
('Sunset Medical Center', 'Los Angeles', '555-987-6543'), ('Metropolitan Hospital', 'Chicago', '555-789-1234'), ('Houston Medical Center', 'Houston', '555-456-7890'), ('Bayview Hospital', 'Miami', '555-321-6547'),
('Golden Gate Medical Center', 'San Francisco', '555-234-5678'), ('Liberty Hospital', 'Seattle', '555-876-5432'),
('Central Hospital', 'Boston', '555-432-1098'),
('Rocky Mountain Medical Center', 'Denver', '555-654-3210'), ('Lone Star Hospital', 'Dallas', '555-890-1234'),
('Grand Canyon Medical Center', 'Phoenix', '555-345-6789'), ('Liberty Health Center', 'Philadelphia', '555-678-2345'), ('Emerald Medical Center', 'San Diego', '555-765-4321'), ('Bluegrass Hospital', 'Austin', '555-210-9876'),
('Pacific Medical Center', 'Portland', '555-543-6789'), ('Alamo Hospital', 'San Antonio', '555-876-5432'), ('Nashville General Hospital', 'Nashville', '555-234-5678'), ('Desert Medical Center', 'Las Vegas', '555-321-6547'),
('Peachtree Hospital', 'Atlanta', '555-789-1234'), ('Raleigh Medical Center', 'Raleigh', '555-987-6543');
CREATE TABLE UniversitySchool (
SchoolId INT AUTO_INCREMENT PRIMARY KEY, Name VARCHAR(100),
Location VARCHAR(100), ContactNo VARCHAR(20)
);
SELECT * FROM UniversitySchool;

INSERT INTO UniversitySchool (Name, Location, ContactNo) VALUES ('ABC University', 'New York', '555-123-4567'),
('XYZ School', 'Los Angeles', '555-987-6543'),
('123 College', 'Chicago', '555-789-1234'),
('City School', 'Houston', '555-456-7890'),
('Metro University', 'Miami', '555-321-6547'), ('Sunset School', 'San Francisco', '555-234-5678'), ('Liberty College', 'Seattle', '555-876-5432'), ('Elite University', 'Boston', '555-432-1098'), ('Tech School', 'Denver', '555-654-3210'),
('Star College', 'Dallas', '555-890-1234'), ('Green University', 'Phoenix', '555-345-6789'), ('Maple School', 'Philadelphia', '555-678-2345'), ('Harbor College', 'San Diego', '555-765-4321'), ('Lake University', 'Austin', '555-210-9876'), ('Pacific School', 'Portland', '555-543-6789'),
('Redwood College', 'San Antonio', '555-876-5432'), ('Hill University', 'Nashville', '555-234-5678'), ('Ocean School', 'Las Vegas', '555-321-6547'),
('Valley College', 'Atlanta', '555-789-1234'), ('Skyline University', 'Raleigh', '555-987-6543');
CREATE TABLE Doctor ( DoctorID INT PRIMARY KEY, Name VARCHAR(100), Address VARCHAR(255),
Age INT,
ContactNo VARCHAR(20)
);
SELECT * FROM Doctor;

INSERT INTO Doctor (DoctorID, Name, Address, Age, ContactNo) VALUES (201, 'Dr. Smith', '123 Main St, Cityville', 45, '555-123-4567'),
(202, 'Dr. Johnson', '456 Elm St, Townsville', 38, '555-987-6543'),
(203, 'Dr. Davis', '789 Oak St, Villageton', 50, '555-789-1234'),
(204, 'Dr. Wilson', '101 Pine St, Hamletville', 42, '555-456-7890'),
(205, 'Dr. Lee', '222 Cedar St, Riverside', 55, '555-321-6547'),
(206, 'Dr. Clark', '333 Birch St, Lakeside', 47, '555-234-5678'),
(207, 'Dr. Adams', '444 Maple St, Mountainview', 41, '555-876-5432'),
(208, 'Dr. Allen', '555 Willow St, Parkville', 49, '555-432-1098'),
(209, 'Dr. White', '666 Spruce St, Lakeshore', 37, '555-654-3210'),
(210, 'Dr. Harris', '777 Redwood St, Hillside', 53, '555-890-1234'),
(211, 'Dr. Turner', '888 Cedar St, Forestville', 48, '555-345-6789'),
(212, 'Dr. Moore', '999 Pine St, Riverside', 44, '555-678-2345'),
(213, 'Dr. King', '111 Oak St, Villageton', 51, '555-765-4321'),
(214, 'Dr. Wright', '222 Elm St, Townsville', 39, '555-210-9876'),
(215, 'Dr. Hall', '333 Maple St, Mountainview', 57, '555-543-6789'),
(216, 'Dr. Martin', '444 Birch St, Lakeside', 43, '555-876-5432'),
(217, 'Dr. Lewis', '555 Spruce St, Lakeshore', 46, '555-234-5678'),
(218, 'Dr. Turner', '666 Cedar St, Riverside', 52, '555-987-6543'),
(219, 'Dr. Taylor', '777 Willow St, Parkville', 40, '555-789-1234'),
(220, 'Dr. Adams', '888 Redwood St, Hillside', 56, '555-987-6543');

DROP TABLE Doctor; 
show tables;

