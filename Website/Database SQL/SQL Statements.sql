CREATE DATABASE Streaming_Website;

USE Streaming_Website;

CREATE TABLE UsersOnSite
(
    id int PRIMARY KEY AUTO_INCREMENT,
    ipAdd varchar(255) NOT NULL,
    created datetime DEFAULT CURRENT_TIMESTAMP,
    modified datetime DEFAULT CURRENT_TIMESTAMP On UPDATE CURRENT_TIMESTAMP  
);

CREATE TABLE Movies
(
    id int PRIMARY KEY AUTO_INCREMENT,
    movieTitle varchar(255) NOT NULL,
    moviePath varchar(255) NOT NULL,
    created datetime DEFAULT CURRENT_TIMESTAMP,
    modified datetime DEFAULT CURRENT_TIMESTAMP On UPDATE CURRENT_TIMESTAMP
);

INSERT INTO Movies (movieTitle, moviePath) 
VALUES 
('Is This Free?', '../Short Movies/Is This Free.mp4'),
('Lose Weight', '../Short Movies/Lose Weight.mp4'),
('The Black Hole', '../Short Movies/The Black Hole.mp4'),
('The Egyptian Pyramids', '../Short Movies/The Egyptian Pyramids.mp4'),
('The Gunfighter', '../Short Movies/The Gunfighter.mp4');