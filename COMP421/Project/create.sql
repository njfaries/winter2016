CREATE TABLE Boards
(	bid INT PRIMARY KEY NOT NULL,
	visibility INT NOT NULL);

CREATE TABLE Conversations
(	cid INT PRIMARY KEY NOT NULL);

CREATE TABLE Users
(	uid INT PRIMARY KEY NOT NULL,
	name VARCHAR(20) NOT NULL,
	about VARCHAR(200),
	password VARCHAR(256) NOT NULL,
	email VARCHAR(40) NOT NULL,
	image VARCHAR(2048),
	bid INT UNIQUE,
	FOREIGN KEY (bid) REFERENCES Boards(bid));

CREATE TABLE Messages
(	mid INT PRIMARY KEY,
	body VARCHAR(3000) NOT NULL,
	timesent TIMESTAMP NOT NULL,
	uid INT,
	cid INT,
	FOREIGN KEY (uid) REFERENCES Users(uid),
	FOREIGN KEY (cid) REFERENCES Conversations(cid));

CREATE TABLE Conversing
(	cid INT NOT NULL,
	uid INT NOT NULL,
	PRIMARY KEY (cid, uid),
	FOREIGN KEY (uid) REFERENCES Users(uid),
	FOREIGN KEY (cid) REFERENCES Conversations(cid));

CREATE TABLE Comments
(	coid INT PRIMARY KEY NOT NULL,
	body VARCHAR(3000) NOT NULL,
	timesent TIMESTAMP NOT NULL,
	likes INT,
	uid INT,
	FOREIGN KEY (uid) REFERENCES Users(uid));

CREATE TABLE Posts
(	pid INT PRIMARY KEY NOT NULL,
	timesent TIMESTAMP NOT NULL,
	likes INT,
	uid INT,
	bid INT,
	FOREIGN KEY (uid) REFERENCES Users(uid),
	FOREIGN KEY (bid) REFERENCES Boards(bid));

CREATE TABLE Texts
(	pid INT PRIMARY KEY NOT NULL,
	body VARCHAR(3000) NOT NULL,
	FOREIGN KEY (pid) REFERENCES Posts(pid));

CREATE TABLE Pictures
(	pid INT PRIMARY KEY NOT NULL,
	image VARCHAR(2048),
	caption VARCHAR(3000),
	FOREIGN KEY (pid) REFERENCES Posts(pid));


CREATE TABLE Groups
(	gid INT PRIMARY KEY NOT NULL,
	visibility INT NOT NULL,
	name VARCHAR(40) NOT NULL,
	bid INT UNIQUE,
	FOREIGN KEY (bid) REFERENCES Boards(bid));

CREATE TABLE Memberships
(	uid INT NOT NULL,
	gid INT NOT NULL,
	PRIMARY KEY (uid, gid),
	FOREIGN KEY (uid) REFERENCES Users(uid),
	FOREIGN KEY (gid) REFERENCES Groups(gid));

CREATE TABLE Relations
(	uid1 INT,
	uid2 INT,
	status INT,
	day DATE,
	FOREIGN KEY (uid1) REFERENCES Users(uid),
	FOREIGN KEY (uid2) REFERENCES Users(uid));
