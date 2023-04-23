# ScandicFusionTask
Latvian football database: clubs, players, games, events, and participants.

This repository contains a database schema for managing data related to Latvian football, including clubs, players, games, events, and game participants.

Overview

The Latvian Football Database is designed to store and retrieve detailed information about clubs, players, games, and events that occur during the games, such as goals and cards. This project aims to help users generate reports and analyze data related to Latvian football competitions.

Tables

The database consists of the following tables:

Clubs: Stores information about football clubs, including their name, league, and region.
Players: Stores information about football players, including their name, date of birth, and position.
Games: Stores information about football games, including date and time, location, and participating clubs.
GameEvents: Stores information about events that occur during games, such as goals and cards, and the players involved in these events.
GameParticipants: Stores information about the players who participated in each game, including their starting position.
Relationships
The relationships between the tables are as follows:

Clubs and Players: One-to-Many
Clubs and Games: Many-to-Many
Clubs and GameEvents: One-to-Many
Players and GameEvents: One-to-Many
Games and GameEvents: One-to-Many
Clubs, Players, and GameParticipants: Many-to-Many
