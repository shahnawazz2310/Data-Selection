                                                            -- Task 1
Create Database Movie_Library;
Use movie_library;

Create Table Directors(
Directorid int primary key,
Name varchar(255)
);

-- Inserting Directors
INSERT INTO DIRECTORS
VALUES
("1", "Rajkumar Hirani"),
("2", "Chrishtoper Nolan"),
("3", "Anthony Russo & Joe Russo");

Select * from directors;

Create Table Movies(
MovieId int primary key,
MovieName Varchar(100),
DirectorId int,
FOREIGN KEY (DIRECTORID) REFERENCES DIRECTORS(DIRECTORID)
);

-- Inserting Movies
INSERT INTO MOVIES
VALUES
("1", "3 Idiots", "1"),
("2", "Avengers: Endgame", "3"),
("3", "The Dark Knight", "2"),
("4", "Avengers: Infinity War", "3"),
("5", "Inception", "2"),
("6", "PK", "1");

Select * from movies;

CREATE TABLE AUDIENCE(
AudienceId int primary key,
FullName Varchar(100)
);

-- Inserting Audiences
INSERT INTO Audiences
VALUES
("2", "Nawaz Ansari");

SELECT * FROM AUDIENCES;

-- Renaming the table name from Audience to Audiences
RENAME TABLE AUDIENCE TO AUDIENCES;

CREATE TABLE WATCHEDMOVIES(
WatchedId int primary key,
WatchedDate date,
MovieId int,
AudienceId int,
FOREIGN KEY (MOVIEID) REFERENCES MOVIES (MOVIEID),
FOREIGN KEY (AUDIENCEID) REFERENCES AUDIENCES (AUDIENCEID)
);

INSERT INTO WATCHEDMOVIES
VALUES

("4", "2025-06-20", "1", "2");



-----------------------------------------------------------------------------------------------------------------
                                                          -- Task 2

-- Inserting Directors
INSERT INTO DIRECTORS
VALUES
("4", "Karan Johar");

-- Inserting Movies with one NULL DIRECTORSID
INSERT INTO MOVIES
VALUES
("7", "My Name is Khan", "4"),
("8", "Untitled", NULL);

-- Inserting Audiences
INSERT INTO Audiences
VALUES
("3", "Shahrukh Khan");

INSERT INTO Audiences
VALUES
("4", "");

-- Inserting WatchedMovies With assuming DEFAULT Date is set in Schema
INSERT INTO WATCHEDMOVIES
VALUES
("5", DEFAULT, "7", "3");


-- Updating a Movie Name
UPDATE MOVIES SET MovieName = "Sanju" WHERE MovieId = 8;

UPDATE MOVIES SET DirectorId = 1 WHERE MovieId = 8;


-- Deleting a Audience
Delete FROM Audiences WHERE AudienceId = 4;

UPDATE WATCHEDMOVIES SET WatchedDate = "2025-06-25" WHERE WatchedId = 5;
--------------------------------------------------------------------------------------------------------------------------------
                                                           -- Task 3
USE MOVIE_LIBRARY;

-- 1. Select all columns from Movies table 
SELECT * FROM MOVIES;

-- 2. Select specific columns (MovieId and MovieName) from Movies
SELECT MovieId, MovieName FROM MOVIES;

-- 3. Get all movies directed by Directorid = 1
SELECT * FROM Movies WHERE DirectorID = 1;

-- 4. Get audiences who joined after 2025-06-20
SELECT * FROM WatchedMovies WHERE WatchedDate > '2025-06-20';

-- 5. Get movies with 'Avengers: Infinity War' in the moviename
SELECT * FROM Movies WHERE MovieName LIKE '%Avengers: Infinity War%';

-- 6. Get audiences who joined between 2025-06-20 and 2025-06-22
SELECT * FROM WatchedMovies WHERE WatchedDate BETWEEN '2025-06-20' AND '2025-06-22';

-- 7. Get all watched movies sorted by WatchedDate (newest first)
SELECT * FROM WatchedMovies ORDER BY WatchedDate DESC;

-- 8. Limit the result to top 2 most recently watched movies
SELECT * FROM WatchedMovies ORDER BY WatchedDate DESC LIMIT 2;
---------------------------------------------------------------------------------------------------------------------------




