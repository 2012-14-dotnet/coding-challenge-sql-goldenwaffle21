--3 entries in each table
INSERT INTO Department VALUES(1,IT,Seattle);
INSERT INTO Department VALUES(2,Acquisitions,Houston);
INSERT INTO Department VALUES(3,ConsumerRelations,Toronto);

INSERT INTO Employee VALUES(1,Bob,Rando,555555555,2);
INSERT INTO Employee VALUES(2,Curly,Rando,666666666,1);
INSERT INTO Employee VALUES(3,Moe,Stooge,777777777,2);

INSERT INTO Employee VALUES(1,10,'12 Gereaux Lane','',Austin,TX,USA);
INSERT INTO Employee VALUES(2,5,'13 Gereaux Boulevard','',Tacoma,WA,USA);
INSERT INTO Employee VALUES(3,15,'11 Gereaux Place','',Houston,TX,USA);

GO;

--Add Marketing department
INSERT INTO Department VALUES(4,Marketing,Quilcene);
GO;

--Add employee Tina Smith
INSERT INTO Employee VALUES(1,Tina,Smith,333333333,3);
INSERT INTO Employee VALUES(1,8,'7 Gereaux Ave','Back Unit 2',Toronto,DC,Canada);
GO;

--List all employees in marketing
SELECT * FROM Employee WHERE DepID=4;
GO;

--Report total salary of marketing
SELECT SUM(Salary) FROM Employee WHERE DepID=4;
GO;

--Report the total employees for each department (my brain is failing me on this one; all I can think of is a UNION of separate counts for each but I'm out of time)

--Increase Tina's salary to 90,000
UPDATE Employee
SET Salary=90000 WHERE ID=4;
GO;
