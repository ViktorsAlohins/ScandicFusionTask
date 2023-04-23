CREATE TABLE Clubs (
    ID INT PRIMARY KEY,
    Name VARCHAR(255),
    League VARCHAR(255),
    Region VARCHAR(255)
);

CREATE TABLE Players (
    ID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    ClubID INT,
    Position VARCHAR(255),
    FOREIGN KEY (ClubID) REFERENCES Clubs(ID)
);

CREATE TABLE Games (
    ID INT PRIMARY KEY,
    Time TIMESTAMP,
    Location VARCHAR(255),
    HomeClubID INT,
    GuestClubID INT,
    HomeResult INT,
    GuestResult INT,
    FOREIGN KEY (HomeClubID) REFERENCES Clubs(ID),
    FOREIGN KEY (GuestClubID) REFERENCES Clubs(ID)
);

CREATE TABLE GameEvents (
    ID INT PRIMARY KEY,
    PlayerID INT,
    GameID INT,
    ClubID INT,
    Time INT,
    EventType VARCHAR(255),
    AdditionalInfo VARCHAR(255),
    FOREIGN KEY (GameID) REFERENCES Games(ID),
    FOREIGN KEY (ClubID) REFERENCES Clubs(ID),
    FOREIGN KEY (PlayerID) REFERENCES Players(ID)
    
);

CREATE TABLE GameParticipants (
    ID INT PRIMARY KEY,
    GameID INT,
    ClubID INT,
    PlayerID INT,
    StartingLineup BOOLEAN,
    FOREIGN KEY (GameID) REFERENCES Games(ID),
    FOREIGN KEY (ClubID) REFERENCES Clubs(ID),
    FOREIGN KEY (PlayerID) REFERENCES Players(ID)
);
