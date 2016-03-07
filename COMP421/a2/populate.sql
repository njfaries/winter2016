
/* department */

INSERT INTO Department VALUES (1892, 'Accounting');
INSERT INTO Department VALUES(1028, 'Sales');
INSERT INTO Department VALUES(1142, 'Management');
INSERT INTO Department VALUES(2283, 'Engineering');
INSERT INTO Department VALUES(923, 'Marketing');
INSERT INTO Department VALUES(19, 'Consulting');
INSERT INTO Department VALUES (199, 'Research');
INSERT INTO Department VALUES (20, 'Finance');
INSERT INTO Department VALUES (55, 'HR');
INSERT INTO Department VALUES (1, 'IT');
INSERT INTO Department VALUES (321,'Assassins');
INSERT INTO Department VALUES (322,'Superheroes');
INSERT INTO Department VALUES (323,'Badguys');
INSERT INTO Department VALUES (500,'Wizards');
INSERT INTO Department VALUES (600,'Disney Department');


/* Employee */

INSERT INTO Employee VALUES(1053, 'Jacob Wilmonte', NULL, 1142, 10000, 'Montreal', '1989-04-04', '2010-01-15' );
INSERT INTO Employee VALUES(4824, 'Sarah Cassidy', 1053, 1892, 8000, 'Montreal', '1992-09-13', '2012-02-23' );
INSERT INTO Employee VALUES (5, 'Sebastian Vettel', 4824, 1892, 10000, 'Vancouver', '1987-07-03', '2014-11-20' );
INSERT INTO Employee VALUES (0, 'Arya', 1053, 1892, 4000, NULL, '1992-09-05', '2011-01-11');
INSERT INTO Employee VALUES (1, 'Arya', NULL, 1028, 4000, 'Montreal', '1992-09-05', '2011-01-11');
INSERT INTO Employee VALUES (2, 'Mannis', 0, 19, 4000, 'Toronto', '1991-12-25', '2013-02-21');
INSERT INTO Employee VALUES (3, 'Bran', 0, 19, 3000, NULL, '1994-12-25', '2015-02-21');
INSERT INTO Employee VALUES (4, 'Dany', 4824, 199, 2500, 'Montreal', '1943-04-16', '2016-02-01');
INSERT INTO Employee VALUES (6, 'Alex', 5, 199, 2000, 'Montreal', '1994-02-15', '2016-01-01');
INSERT INTO Employee VALUES( 7, 'Thomas McCarthy', NULL, 19, 10000, 'Montreal', '1961-02-20', '2014-06-01');
INSERT INTO Employee VALUES( 8, 'Rob', 7, 19, 1000, 'Montreal', '1961-04-20', '2014-07-01');
INSERT INTO Employee VALUES( 10, 'Rob', 7, 19, 2000, 'Montreal', '1963-04-20', '2015-07-01');
INSERT INTO Employee VALUES( 9, 'Alex', 7, 19, 4000, 'Montreal', '1965-05-20', '2016-08-01');
INSERT INTO Employee VALUES (11, 'Finance Manager', NULL, 20, 10000, 'Ottawa', '1960-05-05' , '2016-01-01');
INSERT INTO Employee VALUES (12, 'Bill Bobby', 11, 20, 1000, 'Ottawa', '1960-05-05' , '2016-01-01');
INSERT INTO Employee VALUES (13, 'Bob Billy', 11, 20, 1000, 'Montreal', '1960-05-05' , '2016-01-01');
INSERT INTO Employee VALUES (14, 'Josh', 11, 19, 1000, 'Vancouver', '1960-05-05' , '2016-01-01');
INSERT INTO Employee VALUES (15, 'Joan', 11, 19, 1000, 'Vancouver', '1960-05-05' , '2016-01-01');
INSERT INTO Employee VALUES (17,'Wade Wilson',NULL, 321,20000,'Regina','1974-01-24','1987-03-01');
INSERT INTO Employee VALUES (16,'Slade Wilson',17, 321,10000,'Austin','1979-01-23','1999-04-01');
INSERT INTO Employee VALUES (18,'Peter Parker',17, 322,100,'New York','1989-01-25','2000-03-01');
INSERT INTO Employee VALUES (19,'Wilson Fisk',NULL, 323,200000,'Chicago','1965-01-26','1977-03-01');
INSERT INTO Employee VALUES(21, 'Mickey Mouse', NULL, 55, 200000, 'Florida', '1950-01-01','2010-05-02');
INSERT INTO employee VALUES (23, 'Frodo Baggins', 21, 55, 3500, null, '1970-05-28', '2011-01-02');
INSERT INTO employee VALUES (24, 'Gandalf Grey', 21, 55, 3600, null, '1920-04-06', '2010-09-25');
INSERT Into employee VALUES(22, 'Bilbo Baggins', 17, 323, 3000, null, '1971-11-21', '2010-08-01');
INSERT Into employee VALUES(25, 'Pilsbury Man', 4824, 321, 2000, 'Vancouver', '1992-11-11', '2015-12-01');
INSERT Into employee VALUES(26, 'Leonardo DiCaprio', 1053, 322, 200000, 'Los Angeles', '1954-01-21', '2013-12-01');
INSERT Into employee VALUES(27, 'Kobe Bryant', 1053, 322, 20000, 'Los Angeles', '1978-08-23', '1996-06-01');
INSERT Into employee VALUES(30, 'Minnie Mouse', 21, 600, 99999, 'Toronto', '1900-01-01', '2010-01-01');
INSERT Into employee VALUES(31, 'Donald Duck', 21, 600, 99999, 'Toronto', '1900-01-01', '2010-01-01');
INSERT Into employee VALUES(32, 'Goofy', 21, 600, 99999, 'Toronto', '1900-01-01', '2010-01-01');
INSERT Into employee VALUES(33, 'Pluto', 21, 600, 99999, 'Toronto', '1900-01-01', '2010-01-01');
INSERT Into employee VALUES(34, 'Toby Tortoise', 21, 600, 99999, 'Toronto', '1900-01-01', '2010-01-01');
INSERT Into employee VALUES(35, 'Oswald', 21, 600, 99999, 'Montreal', '1900-01-01', '2010-01-01');
INSERT Into employee VALUES(36, 'Chip and Dale', 21, 600, 99999, 'Montreal', '1900-01-01', '2010-01-01');
INSERT Into employee VALUES(37, 'Scrooge McDuck', 21, 600, 99999, 'Montreal', '1900-01-01', '2010-01-01');
INSERT Into employee VALUES(38, 'The Wanderer', 21, 500, 10000, 'Montreal', '1938-03-04', '2014-12-12');
INSERT Into employee VALUES(39, 'Homeless Engineer', 11, 2283, 10000, null, '1983-07-24', '2013-03-21');
INSERT Into employee VALUES(40, 'Financial Manager', NULL, 20, 10000, 'Montreal', '1978-03-29', '2015-06-30');
INSERT Into employee VALUES(41, 'Atlas', 40, 10000, 'Vancouver', '2000-04-28', '2014-08-29');
INSERT Into employee VALUES(42, 'P-Body', NULL, 19, 10000, 'Vancouver', '2000-08-24', '2014-08-29');
INSERT Into employee VALUES(43, 'Chell', NULL, 19, 10000, 'Vancouver', '2000-07-14', '2014-08-29');
INSERT Into employee VALUES(44, 'Wheatly', NULL, 19, 10000, 'Vancouver', '2000-04-04', '2014-08-29');
INSERT Into employee VALUES(45, 'PotatOS', NULL, 19, 10000, 'Vancouver', '2000-05-31', '2014-08-29');

/* commission */

INSERT INTO Commission VALUES (2, '2014-08-15', 10000);
INSERT INTO Commission VALUES (3, '2015-08-16', 5000);
INSERT INTO Commission VALUES (3, '2015-08-17', 6000);
INSERT INTO Commission VALUES (0, '2015-08-31', 1000);
INSERT INTO Commission VALUES (6, '2015-08-31', 100000);
INSERT INTO Commission VALUES(15, '2016-02-01', 3000);
INSERT INTO Commission VALUES(13, '2016-01-11', 2500);
INSERT INTO Commission VALUES (17,'2016-02-14',200000);
INSERT INTO Commission VALUES (17,'2016-02-15',12);
INSERT INTO Commission VALUES (16,'2015-03-14',90);
INSERT INTO Commission VALUES (16,'2015-03-15',20000);
INSERT INTO Commission VALUES (17,'1999-02-10', 666);
