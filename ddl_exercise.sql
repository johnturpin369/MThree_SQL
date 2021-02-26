CREATE DATABASE IF NOT EXISTS MovieCatalogue;

USE MovieCatalogue;

CREATE TABLE IF NOT EXISTS Genre(
	GenreID INT PRIMARY KEY AUTO_INCREMENT,
    GenreName VARCHAR(30) NOT NULL
    );
    
    CREATE TABLE IF NOT EXISTS Director(
	DirectorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    BirthDate DATE NULL
    );
    
    CREATE TABLE IF NOT EXISTS Rating(
	RatingID INT PRIMARY KEY AUTO_INCREMENT,
    RatingName CHAR(5) NOT NULL
    );
    
CREATE TABLE IF NOT EXISTS Movie(
	MovieID INT PRIMARY KEY AUTO_INCREMENT,
    GenreID INT NOT NULL,
    DirectorID INT NULL,
    RatingID INT NULL,
    Title VARCHAR(128) NOT NULL,
    ReleaseDate DATE NULL,
    FOREIGN KEY fk_movie_genre (GenreID)
		REFERENCES Genre(GenreID),
	FOREIGN KEY fk_movie_director (DirectorID)
		REFERENCES Director(DirectorID),
	FOREIGN KEY fk_movie_rating (RatingID)
		REFERENCES Rating(RatingID)
    );
    
CREATE TABLE IF NOT EXISTS Actor(
	ActorID INT PRIMARY KEY AUTO_INCREMENT,
    FirtstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    BirthDate DATE NULL
    );

CREATE TABLE IF NOT EXISTS CastMembers(
		CastMemberID INT PRIMARY KEY AUTO_INCREMENT,
        ActorID INT NOT NULL,
        MovieID INT NOT NULL,
        Role VARCHAR(50) NOT NULL,
        FOREIGN KEY fk_castmembers_actor (ActorID)
			REFERENCES Actor(ActorID),
		FOREIGN KEY fk_castmembers_movie (MovieID)
			REFERENCES Movie(MovieID)
        );



    
    
    