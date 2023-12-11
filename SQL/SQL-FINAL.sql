DROP TABLE IF EXISTS Members;
DROP TABLE IF EXISTS Trainer;
DROP TABLE IF EXISTS Schedule;
DROP TABLE IF EXISTS Payment;
DROP TABLE IF EXISTS Rooms;
DROP TABLE IF EXISTS Payment;
DROP TABLE IF EXISTS Equipment;
DROP TABLE IF EXISTS FitClass;
DROP TABLE IF EXISTS Workshop;
DROP TABLE IF EXISTS Events;



CREATE TABLE Members
(
  MemberID INT NOT NULL,
  Name VARCHAR(255) NOT NULL,
  Email VARCHAR(255) NOT NULL,
  Password VARCHAR(255) NOT NULL,
  FitGoals VARCHAR(255) NOT NULL,
  HealthMetrics VARCHAR(255) NOT NULL,
  LoyaltyPoints INT NOT NULL,
  PRIMARY KEY (MemberID)
);

INSERT INTO Members VALUES(123456789,'Mohammad', 'Mohammada@gmail.com','iwanttogetbigfast', 'I want to gain 30 lbs in 3 months', '135 BPM','110 Points');
INSERT INTO Members VALUES(124456789,'Hugo', 'Hugoreyes@gmail.com','iwanttolooseweightfast', 'I want to loose 200 lbs', '85 BPM','89 Points');
INSERT INTO Members VALUES(125456789,'John', 'Johnlocke@gmail.com','iwanttoreachdestiney', 'I want to run a summit', '190 BPM','150 Points');
INSERT INTO Members VALUES(126456789,'Jin', 'Jinasa@gmail.com','iwanttogetbehappy', 'I want to to gain 15 pounds of mass', '175 BPM','120 Points');
INSERT INTO Members VALUES(127456789,'Sawyer', 'Fordsawyer@gmail.com','iwanttogetlean', 'I want to gain get more toned', '145 BPM','124 Points');


CREATE TABLE Trainer
(
  TrainerID INT NOT NULL,
  Name VARCHAR(255) NOT NULL,
  Email VARCHAR(255) NOT NULL,
  Password VARCHAR(255) NOT NULL,
  PRIMARY KEY (TrainerID),
  UNIQUE (Email)
);
INSERT INTO Trainer VALUES(11113456789,'Lyle', 'Lylehades@gmail.com','iamthestrongest');
INSERT INTO Trainer VALUES(12113456789,'Kate', 'Lylenina@gmail.com','iamthestrongest');
INSERT INTO Trainer VALUES(13113456789,'Benjamin', 'Benjaminlinus@gmail.com','iamthehater');
INSERT INTO Trainer VALUES(14113456789,'Anna', 'AnnaLucia@gmail.com','iwanttobeknown');
INSERT INTO Trainer VALUES(15113456789,'Jack', 'JackShepard@gmail.com','Mydadisalive');


CREATE TABLE Schedule
(
  ScheduleID INT NOT NULL,
  Date DATE NOT NULL,
  Standing VARCHAR(255) NOT NULL,
  PRIMARY KEY (ScheduleID)
);
INSERT INTO Schedule VALUES(213456789,'2023-12-10', 'Active');
INSERT INTO Schedule VALUES(213456689,'2023-12-09', 'Inactive');
INSERT INTO Schedule VALUES(213456589,'2023-12-08', 'Active');
INSERT INTO Schedule VALUES(213456489,'2023-12-07', 'Active');
INSERT INTO Schedule VALUES(213456389,'2023-12-06', 'Inactive');

CREATE TABLE Payment
(
  PaymentID INT NOT NULL,
  Date DATE NOT NULL,
  MemberID INT NOT NULL,
  PRIMARY KEY (PaymentID),
  FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);
INSERT INTO Payment VALUES(2134567,'2023-12-25',123456789);
INSERT INTO Payment VALUES(3134567,'2023-12-19',124456789);
INSERT INTO Payment VALUES(4134567,'2023-11-12',125456789);
INSERT INTO Payment VALUES(5134567,'2023-11-21',126456789);
INSERT INTO Payment VALUES(6134567,'2023-10-07',127456789);

CREATE TABLE Rooms
(
  BookingID INT NOT NULL,
  MemberID INT NOT NULL,
  RoomID INT NOT NULL,
  PRIMARY KEY (BookingID)
  FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);
INSERT INTO Rooms VALUES(2111,123456789,0000);
INSERT INTO Rooms VALUES(3111,124456789,0001);
INSERT INTO Rooms VALUES(4111,125456789,0002);
INSERT INTO Rooms VALUES(5111,126456789,0003);
INSERT INTO Rooms VALUES(6111,127456789,0004);

CREATE TABLE Equipment
(
  MaintenanceID INT NOT NULL,
  EquipmentID INT NOT NULL,
  Date DATE NOT NULL,
  PRIMARY KEY (MaintenanceID)
);
INSERT INTO Equipment VALUES(01000,1015,2023-11-10,);
INSERT INTO Equipment VALUES(02000,1115,2023-10-12,);
INSERT INTO Equipment VALUES(03000,1215,2023-09-15,);
INSERT INTO Equipment VALUES(04000,1315,2023-10-16,);
INSERT INTO Equipment VALUES(05000,1415,2023-03-18,);

CREATE TABLE FitClass
(
  ClassID INT NOT NULL,
  Class VARCHAR(255) NOT NULL,
  Limit INT NOT NULL,
  ScheduleID INT NOT NULL,
  PRIMARY KEY (ClassID),
  FOREIGN KEY (ScheduleID) REFERENCES Schedule(ScheduleID)
);
INSERT INTO FitClass VALUES(01000111,'Heavy Weight lifting',100, 213456789);
INSERT INTO FitClass VALUES(01000211,'High rep lifting',100, 213456689);
INSERT INTO FitClass VALUES(01000311,'High intensity lifting',100, 213456589);
INSERT INTO FitClass VALUES(01000411,'low Weight lifting',100, 213456489);
INSERT INTO FitClass VALUES(01000511,'moderate Weight lifting',100, 213456389);

CREATE TABLE Events
(
  EventID INT NOT NULL,
  Event VARCHAR(255) NOT NULL,
  Limit INT NOT NULL,
  ScheduleID INT NOT NULL,
  PRIMARY KEY (EventID),
  FOREIGN KEY (ScheduleID) REFERENCES Schedule(ScheduleID)
);
INSERT INTO Events VALUES(01010111000,'Back and Bies',100, 213456789);
INSERT INTO Events VALUES(01020111000,'shoulder and chest',100, 213456689);
INSERT INTO Events VALUES(01030111000,'Legs',100, 213456589);
INSERT INTO Events VALUES(01040111000,'Abs',100, 213456489);
INSERT INTO Events VALUES(01050111000,'Tricep',100, 213456389);

CREATE TABLE Workshop
(
  WorkshopID INT NOT NULL,
  Workshop VARCHAR(255) NOT NULL,
  Limit INT NOT NULL,
  ScheduleID INT NOT NULL,
  PRIMARY KEY (WorkshopID),
  FOREIGN KEY (ScheduleID) REFERENCES Schedule(ScheduleID)
);
INSERT INTO Workshop VALUES(0100011100011,'Limitless day',24, 213456789);
INSERT INTO Workshop VALUES(0100012100011,'Mindfullness day',32, 213456689);
INSERT INTO Workshop VALUES(0100013100011,'stamina intensity',45, 213456589);
INSERT INTO Workshop VALUES(0100014100011,'pushing until failure',12, 213456489);
INSERT INTO Workshop VALUES(0100015100011,'working out with Fasting',08, 213456389);

CREATE TABLE Progress
(
  ProgressID INT NOT NULL,
  Date DATE NOT NULL,
  ProgressNote VARCHAR(255) NOT NULL,
  TrainerID INT NOT NULL,
  PRIMARY KEY (ProgressID),
  FOREIGN KEY (TrainerID) REFERENCES Trainer(TrainerID)
);
INSERT INTO Progress VALUES(010001110001100,'2023-06-09','Mohammad used too much momentum in the first few sets',11113456789);
INSERT INTO Progress VALUES(010001210001100,'2023-05-29','Hugo uses his gym sessions wisely but does not stick to his diet',12113456789);
INSERT INTO Progress VALUES(010001310001100,'2023-08-27','John used a lot of passion but cant seem to push himself',13113456789);
INSERT INTO Progress VALUES(010001410001100,'2023-09-19','Jin used little momentum and does not follow instructions correctly',14113456789);
INSERT INTO Progress VALUES(010001510001100,'2023-02-11','Sawyer seems too lazys and does not put any effort',15113456789);
