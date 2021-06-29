CREATE TABLE Trainee(
	TraineeID int,
	Full_Name nvarchar(50),
	Birth_Day Date,
	Gender Bit,
	ET_IQ int,
	ET_Gmath int,
	ET_English int,
	Training_Class nvarchar(50),
	Evaluation_Notes nvarchar(255),
)
ALTER TABLE Trainee 
ADD CONSTRAINT MaKhoaChinh PRIMARY KEY (TraineeID)
INSERT INTO Trainee(TraineeID,Full_Name,Birth_Day,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes,Fsoft_Account)
VALUES(1,'Nguyen Van A','1998-05-07',1,15,12,19,'A01','khong','ANV5'),
	 (2,'Nguyen Van B','1998-07-07',1,15,12,20,'A02','khong','BNV7'),
	 (3,'Nguyen Van C','1995-06-05',1,18,12,13,'A09','khong','VNV6'),
	 (4,'Nguyen Van D','1993-08-04',1,16,15,15,'A03','khong','DNV8'),
	 (5,'Nguyen Van E','1994-06-03',1,7,7,15,'A03','khong','ENV6'),
	 (6,'Nguyen Thi Anh','1998-07-02',0,12,18,18,'A01','khong','ANT7'),
	 (7,'Nguyen Thi B','1997-01-05',0,10,16,14,'A04','khong','BNT1'),
	 (8,'Nguyen Thi C','1996-02-08',0,10,12,17,'A06','khong','CNT2'),
	 (9,'Nguyen Thi D','1992-05-09',0,13,15,19,'A05','khong','DNT5'),
	 (10,'Nguyen Thi E','1991-08-09',0,15,18,14,'A08','khong','ENT8');
--2--
DELETE FROM Trainee
ALTER TABLE Trainee ADD Fsoft_Account varchar(255)  not null UNIQUE 
--3--
CREATE VIEW ET_passed AS
SELECT * FROM Trainee WHERE (ET_IQ + ET_Gmath) >=20 AND ET_IQ >=8 AND ET_English>=8 AND ET_English>=18

--4--
SELECT MONTH(Birth_Day) Birth_Day, COUNT(*) Lan_Lap FROM  ET_passed
GROUP BY MONTH(Birth_Day)

--5--
SELECT * FROM Trainee WHERE LEN(Full_Name) =(SELECT MAX(LEN(Full_Name)) FROM Trainee)
