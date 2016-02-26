CREATE TABLE Users
(	uid INT PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	about VARCHAR(200),
	password,
	email VARCHAR(40) NOT NULL,
	image);

CREATE TABLE Conversations
(	cid INT PRIMARY KEY);

CREATE TABLE Messages
(	mid INT PRIMARY KEY,
	body VARCHAR(3000) NOT NULL,
	timesent TIMESTAMP NOT NULL,
	uid INT,
	FOREIGN KEY (uid) REFERENCES Users);

CREATE TABLE Comments
(	coid INT PRIMARY KEY,
	body VARCHAR(3000) NOT NULL,
	timesent TIMESTAMP NOT NULL,
	likes INT,
	uid INT,
	FOREIGN KEY (uid) REFERENCES Users);

CREATE TABLE Posts
(	pid INT PRIMARY KEY,
	timesent TIMESTAMP NOT NULL,
	likes INT);

CREATE TABLE Textpost
(	pid INT PRIMARY KEY,
	body VARCHAR(3000) NOT NULL,
	FOREIGN KEY (pid) REFERENCES Posts);

CREATE TABLE Imgpost
(	pid INT PRIMARY KEY,
	image
	caption VARCHAR(3000),
	FOREIGN KEY (pid) REFERENCES Posts);

CREATE TABLE Board
(	bid INT PRIMARY KEY,
	visibility INT NOT NULL);

CREATE TABLE Group
(	gid INT PRIMARY KEY
	visibility INT NOT NULL,
	name VARCHAR(40) NOT NULL);

CREATE TABLE 