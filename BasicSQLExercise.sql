use animals;
create table Foods(
	NameOfAnimal varchar(50) primary key,
    Food varchar(10),
    Good varchar(1)
);

create table Tags(
	Tag INT primary key,
    Height INT,
    Weight INT
);

create table info(
	Tag INT,
    NameOfAnimal varchar(50),
    Breed varchar(50),
    Color varchar(50),
    Age INT,
    primary key (Tag , NameOfAnimal),
    FOREIGN key(Tag)
		references Tags(Tag),
	FOREIGN key (NameOfAnimal)
		references Foods(NameOfAnimal)

);


INSERT INTO foods(NameofAnimal , Food, Good)
VALUES ("Fido","Dry","Y");
INSERT INTO foods(NameofAnimal , Food, Good)
VALUES ("Rex","Wet","N");
INSERT INTO foods(NameofAnimal , Food, Good)
VALUES ("Bubbles","Dry","Y");
INSERT INTO foods(NameofAnimal , Food, Good)
VALUES ("Cujo","Wet","N");


INSERT INTO Tags(Tag,Height,Weight)
VALUES ("1573","15","21");
INSERT INTO Tags(Tag,Height,Weight)
VALUES ("2684","9","7");
INSERT INTO Tags(Tag,Height,Weight)
VALUES ("3795","27","130");
INSERT INTO Tags(Tag,Height,Weight)
VALUES ("4806","6","5");


INSERT INTO info(Tag,NameOfAnimal,Breed,Color,Age)
VALUES ("1573","Fido","Beagle","Brown/White","1.5");
INSERT INTO info(Tag,NameOfAnimal,Breed,Color,Age)
VALUES ("2684","Rex","Pekingese","White","9");
INSERT INTO info(Tag,NameOfAnimal,Breed,Color,Age)
VALUES ("3795","Bubbles","Rottweiler","Black","5");
INSERT INTO info(Tag,NameOfAnimal,Breed,Color,Age)
VALUES ("4806","Cujo","Chihuahua","Gold","4");

SELECT Tag FROM tags;

SELECT Food,Good FROM foods;

SELECT Breed FROM info;
SELECT Tag,Height,Weight FROM tags;


INSERT INTO foods(NameofAnimal , Food, Good)
VALUES ("Knife","Dry","Y");
INSERT INTO foods(NameofAnimal , Food, Good)
VALUES ("BigSoup","Wet","N");
INSERT INTO foods(NameOfAnimal , Food , Good)
VALUES ('Baby','Wet','N');


INSERT INTO Tags(Tag,Height,Weight)
VALUES ("8674","15","21");
INSERT INTO Tags(Tag,Height,Weight)
VALUES ("2343","9","7");
INSERT INTO Tags(Tag,Height,Weight)
VALUES('1234','7','5');

INSERT INTO info(Tag,NameOfAnimal,Breed,Color,Age)
VALUES ("8674","Knife","Rottweiler","Black","1");
INSERT INTO info(Tag,NameOfAnimal,Breed,Color,Age)
VALUES ("2343","BigSoup","Chihuahua","Gold","2");
INSERT INTO info(Tag,NameOfAnimal,Breed,Color,Age)
VALUES ('1234','Baby','Y','Brown','10');

SELECT DISTINCT Color FROM info;
SELECT Color FROM info;

SELECT * FROM info WHERE Age = 2;

SELECT * FROM info
WHERE Color = 'Black' or Color = 'Gold';

SELECT * FROM info
WHERE NOT Color = 'Black';

SELECT * FROM info
ORDER BY Age;

Select * From info
ORDER BY Age DESC; 

SELECT * FROM info
WHERE NameOfAnimal IS NULL;

SELECT * FROM info
WHERE Age = '2';

UPDATE info
SET Age = '4'
WHERE NameOfAnimal = 'Beagle';

SELECT * FROM info
WHERE Age = '4';

SELECT * FROM info;

UPDATE info
SET Breed = 'Kangal' 
WHERE NameOfAnimal = 'Baby';

SELECT * FROM info;

SELECT MIN(Age) AS SmallestAge
From info;

SELECT MAX(Age) AS BiggestAge
FROM info;

SELECT COUNT(NameOfAnimal)
FROM info;

SELECT AVG(Age) FROM info;

SELECT SUM(AGE) FROM info;

SELECT * FROM foods
WHERE NameOfAnimal LIKE 'b%';

SELECT * FROM info
WHERE Color LIKE '_old';

SELECT * FROM info
WHERE Color IN ('Black','Gold');

SELECT * FROM info
WHERE Age BETWEEN 2 AND 5;

