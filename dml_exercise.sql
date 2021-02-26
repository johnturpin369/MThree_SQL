USE moviecatalogue;

-- dates should be 'YYYY/MM/DD'

INSERT INTO Actor(FirstName, LastName, Birthdate) VALUES
	('Bill', 'Murray', '1950/09/21'),
	('Dan', 'Aykroyd', '1952/01/07'),
    ('John', 'Candy', '1950/10/31'),
    ('Steve', 'Martin', NULL),
    ('Sylvester', 'Stallone', NULL);

INSERT INTO Director(FirstName, LastName, BirthDate) VALUES
	('Ivan', 'Reitman', '1946/10/27'),
    ('Ted', 'Kotcheff', NULL);
    
INSERT INTO Rating(RatingName) VALUES
	('G'),
    ('PG'),
    ('PG-13'),
    ('R');

INSERT INTO Genre(GenreName) VALUES
	('Action'),
    ('Comedy'),
    ('Drama'),
	('Horror');

INSERT INTO Movie(GenreID, DirectorID, RatingID, Title, ReleaseDate) VALUES
	(1, 2, 4, 'Rambo: First Blood', '1982/10/22'),
    (2,1, 4, 'Planes, Trains & Automobiles', '1987/11/25'),
    (2, 1, 2, 'Ghostbusters', NULL),
    (2, NULL, 2, 'The Great Outdoors', '1988/06/17');
    
INSERT INTO CastMembers(ActorId, MovieId, Role) VALUES
	(5, 1, 'John Rambo'),
    (4, 2, 'Neil Page'),
    (3, 2, 'Del Griffith'),
    (1, 3, 'Dr. Peter Venkman'),
    (2, 3, 'Dr. Raymond Stanz'),
    (2, 4, 'Roman Craig'),
    (3, 4, 'Chet Ripley');

SET SQL_SAFE_UPDATES = 0;

UPDATE Movie SET
	Title = 'Ghostbuster (1984)',
    ReleaseDate = '1984/06/08'
WHERE Title = 'Ghostbusters';

DELETE FROM castmembers
WHERE MovieID = 1;

DELETE FROM Movie
WHERE title = 'Rambo: First Blood'; 

SET SQL_SAFE_UPDATES = 1;

SELECT * FROM movie;