
CREATE TABLE Books
    (
    Name VARCHAR (50) NOT NULL,
    Genre VARCHAR (50) NOT NULL,
    Popular INT,
    BRated INT,
    Rating INT,
    Likes INT,
    BookShelfed INT
   );




CREATE TABLE My_Books
    (
    Name VARCHAR (50) NOT NULL,
    Genre VARCHAR (50) NOT NULL,
   Popular INT,
    BRated INT,
    Rating INT,
    Likes INT,
    BookShelfed INT
   );




 INSERT INTO Books
  VALUES ('Hitchhikers Guide to the Galaxy', 'sci-fi', 0, 1,5,10000,3000);




 INSERT INTO My_Books
   VALUES ('Hitchhikers Guide to the Galaxy', 'sci-fi', 0, 1,5,10000,3000);




 INSERT INTO Books
   VALUES ('Blood Meridian', 'western', 1, 0,5,1434,4252);




INSERT INTO Books
   VALUES ('The Hobbit', 'fatasy', 0, 0,5,11,1111);




 INSERT INTO Books
   VALUES ('Don Quixote', 'adventure', 1, 1,5,43,5353);




 INSERT INTO My_Books
 VALUES ('Don Quixote', 'adventure', 1, 1,5,43,5353);




 INSERT INTO Books
    VALUES ('Candide', 'comedy', 0, 1,5,100,3242);




INSERT INTO Books
   VALUES ('The Shining', 'horror', 1, 0,5,143,4335);




 INSERT INTO Books
    VALUES ('Harry Potter', 'fantasy', 0, 1,5,43,4353);




 INSERT INTO My_Books
   VALUES ('Harry Potter', 'fantasy', 0, 1,5,43,4353);




 INSERT INTO Books
  VALUES ('Narnia', 'fantasy', 1, 1,5,400000,10000);




 INSERT INTO Books
   VALUES ('The Golden Compass', 'fantasy', 0, 1,5,50000,10000);




INSERT INTO Books
    VALUES ('Hyperion', 'sci-fi', 1, 0,5,50000,6000);




 CREATE PROCEDURE SelectAllPopular
(
        q OUT SYS_REFCURSOR
)
IS
BEGIN
    OPEN q FOR SELECT *
    FROM Books
    WHERE Popular = 1;
 
END;

  /


CREATE PROCEDURE SelectBestRated
(
  q OUT SYS_REFCURSOR
)
IS
BEGIN
  OPEN q FOR SELECT *
  FROM Books
  WHERE BRated = 1;

END;
 /




CREATE PROCEDURE SelectGenre
(
  q OUT SYS_REFCURSOR,GenreS in CHAR
)
IS
BEGIN
  OPEN q FOR SELECT *
  FROM Books
  WHERE Genre LIKE GenreS;
END;
 /


