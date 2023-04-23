-- Spēļu saraksts par notikušām un plānotām spēlēm
SELECT g.ID, g.DateTime, g.Location, 
       home.Name AS HomeTeam, away.Name AS AwayTeam, 
       g.HomeScore, g.AwayScore
FROM Games g
JOIN Clubs home ON g.HomeClubID = home.ID
JOIN Clubs away ON g.AwayClubID = away.ID
ORDER BY g.DateTime;
