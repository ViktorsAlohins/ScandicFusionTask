CREATE TABLE `Clubs` (
  `ID` integer PRIMARY KEY,
  `Name` varchar(255),
  `League` varchar(255),
  `Region` varchar(255)
);

CREATE TABLE `Players` (
  `ID` integer PRIMARY KEY,
  `FirstName` VARCHAR,
  `LastName` VARCHAR,
  `ClubID` INT,
  `Position` VARCHAR
);

CREATE TABLE `Games` (
  `ID` integer PRIMARY KEY,
  `Time` TIMESTAMP,
  `Location` VARCHAR,
  `HomeClubID` INT,
  `GuestClubID` INT,
  `HomeResult` INT,
  `GuestResult` INT
);

CREATE TABLE `GameEvents` (
  `ID` integer PRIMARY KEY,
  `PlayerID` INT,
  `Time` INT,
  `ClubID` INT,
  `GameID` INT,
  `EventType` VARCHAR,
  `AdditionalInfo` VARCHAR
);

CREATE TABLE `GameParticipants` (
  `ID` integer PRIMARY KEY,
  `PlayerID` INT,
  `ClubID` INT,
  `GameID` INT,
  `StartingLineup` BOOLEAN
);

ALTER TABLE `Players` ADD FOREIGN KEY (`ClubID`) REFERENCES `Clubs` (`ID`);

CREATE TABLE `Games_Clubs` (
  `Games_HomeClubID` INT,
  `Clubs_ID` integer,
  PRIMARY KEY (`Games_HomeClubID`, `Clubs_ID`)
);

ALTER TABLE `Games_Clubs` ADD FOREIGN KEY (`Games_HomeClubID`) REFERENCES `Games` (`HomeClubID`);

ALTER TABLE `Games_Clubs` ADD FOREIGN KEY (`Clubs_ID`) REFERENCES `Clubs` (`ID`);


CREATE TABLE `Games_Clubs(1)` (
  `Games_GuestClubID` INT,
  `Clubs_ID` integer,
  PRIMARY KEY (`Games_GuestClubID`, `Clubs_ID`)
);

ALTER TABLE `Games_Clubs(1)` ADD FOREIGN KEY (`Games_GuestClubID`) REFERENCES `Games` (`GuestClubID`);

ALTER TABLE `Games_Clubs(1)` ADD FOREIGN KEY (`Clubs_ID`) REFERENCES `Clubs` (`ID`);


ALTER TABLE `GameEvents` ADD FOREIGN KEY (`GameID`) REFERENCES `Games` (`ID`);

ALTER TABLE `GameEvents` ADD FOREIGN KEY (`ClubID`) REFERENCES `Clubs` (`ID`);

ALTER TABLE `GameEvents` ADD FOREIGN KEY (`PlayerID`) REFERENCES `Players` (`ID`);

ALTER TABLE `GameParticipants` ADD FOREIGN KEY (`GameID`) REFERENCES `Games` (`ID`);

ALTER TABLE `GameParticipants` ADD FOREIGN KEY (`PlayerID`) REFERENCES `Players` (`ID`);

ALTER TABLE `GameParticipants` ADD FOREIGN KEY (`ClubID`) REFERENCES `Clubs` (`ID`);
