INSERT INTO Clubs (Name, League, Region) VALUES
('Rīgas FS', 'Virslīga', 'Rīga'),
('FK Liepāja', 'Virslīga', 'Kurzeme'),
('FS METTA/LU', 'Virslīga', 'Rīga');

-- Aizpildiet Spēlētāji tabulu
INSERT INTO Players (FirstName, DateOfBirth, Position, ClubID) VALUES
('Kaspars Dubra', '1990-12-20', 'Aizsargs', 1),
('Pāvels Šteinbors', '1985-09-21', 'Vārtsargs', 1),
('Vladislavs Sorokins', '1997-05-10', 'Aizsargs', 1),
('Artūrs Zjuzins', '1991-06-18', 'Pussargs', 1),
('Jānis Ikaunieks', '1995-02-16', 'Pussargs', 1),
('Emersons Santana Deoklesianu', '1999-07-27', 'Uzbrucējs', 1),
('Roberts Savaļnieks', '1993-02-04', 'Aizsargs', 1),
('Artūrs Karašausks', '1992-01-29', 'Uzbrucējs', 2),
('Edgars Vardanjans', '1996-10-21', 'Vidusspēlētājs', 3);

-- Aizpildiet Spēles tabulu
INSERT INTO Games (DateTime, Location, HomeClubID, AwayClubID, HomeScore, AwayScore) VALUES
('2023-04-22 15:00:00', 'Skonto Stadions', 1, 2, 2, 1),
('2023-04-23 18:00:00', 'Liepājas Stadions', 2, 3, 3, 1);

-- Aizpildiet SpēlesNotikumi tabulu
INSERT INTO GameEvents (GameID, EventType, EventTime, ClubID, PlayerID, ExtraInfo) VALUES
(1, 'Vārti', '2023-04-22 15:32:05', 1, 1, 'Pamatlaiks'),
(1, 'Vārti', '2023-04-22 15:51:47', 1, 1, 'Pamatlaiks'),
(1, 'Vārti', '2023-04-22 16:41:24', 2, 2, 'Pamatlaiks'),
(2, 'Vārti', '2023-04-23 18:15:12', 2, 2, 'Pamatlaiks'),
(2, 'Vārti', '2023-04-23 18:45:10', 2, 2, 'Pamatlaiks'),
(2, 'Vārti', '2023-04-23 18:55:30', 2, 2, 'Pamatlaiks'),
(2, 'Vārti', '2023-04-23 19:34:11', 3, 3, 'Pamatlaiks');

-- Aizpildiet SpēlesDalībnieki tabulu
INSERT INTO GameParticipants (GameID, ClubID, PlayerID, StartingPosition) VALUES
(1, 1, 1, 'Aizsargs'),
(1, 1, 13, 'Vārtsargs'),
(1, 1, 14, 'Aizsargs'),
(1, 1, 15, 'Pussargs'),
(1, 1, 16, 'Pussargs'),
(1, 1, 17, 'Uzbrucējs'),
(1, 1, 18, 'Aizsargs'),
(1, 1, 19, 'Uzbrucējs'),
(2, 2, 2, 'Uzbrucējs'),
(2, 3, 3, 'Vidusspēlētājs');
