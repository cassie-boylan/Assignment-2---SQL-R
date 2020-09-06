CREATE SCHEMA movie_ratings;
--
-- Table structure for table viewers
--
  CREATE TABLE viewers (
  id int NOT NULL AUTO_INCREMENT,
  firstname VARCHAR(45) NOT NULL,
  gender CHAR(1),
  age INT,
  preferred_genre VARCHAR(12),
  PRIMARY KEY (id)
  );
  
--
-- Table structure for table movies
--
CREATE TABLE movies (
  id int NOT NULL AUTO_INCREMENT,
  title VARCHAR(45) NOT NULL,
  genre VARCHAR(12) NOT NULL,
  PRIMARY KEY (id)
  );
 
 CREATE TABLE ratings (
  rating_id INT NOT NULL AUTO_INCREMENT,
  movie_id INT,
  rating INT CONSTRAINT RATING_CK CHECK (rating BETWEEN 0 AND 5),
  viewer_id INT,
  PRIMARY KEY (rating_id),
  FOREIGN KEY(movie_id) REFERENCES movies(id),
  FOREIGN KEY(viewer_id) REFERENCES viewers(id)
  );
--
-- Loading data for table viewers
--
INSERT INTO viewers (firstname,gender,age,preferred_genre)
VALUES('Sam','M',27,'action'),('Jack','M', 23,'drama'),('Bonnie','F',59,'drama'),('Santa','F',65,'comedy'),('Kristen','F',29,'comedy'),('Emily','F',28,'drama'),('Rachel','F',31,'action'),('Mike','M',33,'action'),('Richie','M',42,'drama'),('John','M',63,'comedy');

--
-- Loading data for table movies
--
INSERT INTO movies (title, genre)
VALUES ('Parasite','drama'),('Avengers: End Game','action'),('Us','drama'),('Knives Out','comedy'),('Little Women','drama'),('Booksmart','comedy');

INSERT INTO ratings (movie_id,rating,viewer_id) VALUES
(1,5,1),(2,5,1),(3,3,1),(4,4,1),(5,NULL,1),(6,NULL,1),
(1,5,2),(2,5,2),(3,4,2),(4,5,2),(5,NULL,2),(6,5,2),
(1,5,3),(2,NULL,3),(3,5,3),(4,5,3),(5,5,3),(6,4,3),
(1,NULL,4),(2,4,4),(3,2,4),(4,5,4),(5,NULL,4),(6,5,4),
(1,5,5),(2,5,5),(3,4,5),(4,5,5),(5,5,5),(6,5,5),
(1,5,6),(2,NULL,6),(3,4,6),(4,4,6),(5,4,6),(6,NULL,6),
(1,4,7),(2,5,7),(3,NULL,7),(4,3,7),(5,3,7),(6,5,7),
(1,4,8),(2,5,8),(3,5,8),(4,5,8),(5,NULL,8),(6,NULL,8),
(1,3,9),(2,4,9),(3,2,9),(4,3,9),(5,NULL,9),(6,NULL,9),
(1,5,10),(2,5,10),(3,2,10),(4,5,10),(5,NULL,10),(6,3,10);

--
INSERT INTO movies VALUES 
(1,5,1),('Avengers: End Game',5,1),('Us',3,1),('Knives Out',4,1),('Little Women',NULL,1),('Booksmart',NULL,1),
(1,5,2),('Avengers: End Game',5,2),('Us',4,2),('Knives Out',5,2),('Little Women',NULL,2),('Booksmart',5,2),
('Parasite',5,3),('Avengers: End Game',NULL,3),('Us',5,3),('Knives Out',5,3),('Little Women',5,3),('Booksmart',4,3),
('Parasite',NULL,4),('Avengers: End Game',4,4),('Us',2,4),('Knives Out',5,4),('Little Women',NULL,4),('Booksmart',5,4),
('Parasite',5,5),('Avengers: End Game',5,5),('Us',4,5),('Knives Out',5,5),('Little Women',5,5),('Booksmart',5,5),
('Parasite',5,6),('Avengers: End Game',NULL,6),('Us',4,6),('Knives Out',4,6),('Little Women',4,6),('Booksmart',NULL,6),
('Parasite',4,7),('Avengers: End Game',5,7),('Us',NULL,7),('Knives Out',3,7),('Little Women',3,7),('Booksmart',5,7),
('Parasite',4,8),('Avengers: End Game',5,8),('Us',5,8),('Knives Out',5,8),('Little Women',NULL,8),('Booksmart',NULL,8),
('Parasite',3,9),('Avengers: End Game',4,9),('Us',2,9),('Knives Out',3,9),('Little Women',NULL,9),('Booksmart',NULL,9),
('Parasite',5,10),('Avengers: End Game',5,10),('Us',2,10),('Knives Out',5,10),('Little Women',NULL,10),('Booksmart',3,10);