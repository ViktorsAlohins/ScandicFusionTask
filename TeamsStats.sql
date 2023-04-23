-- Komandas statistika 
SELECT c.Name AS Team,
       COUNT(*) AS GamesPlayed,
       SUM(CASE WHEN g.HomeScore > g.AwayScore AND g.HomeClubID = c.ID THEN 1
                WHEN g.HomeScore < g.AwayScore AND g.AwayClubID = c.ID THEN 1
                ELSE 0 END) AS Wins,
       SUM(CASE WHEN g.HomeScore = g.AwayScore THEN 1 ELSE 0 END) AS Draws,
       SUM(CASE WHEN g.HomeScore < g.AwayScore AND g.HomeClubID = c.ID THEN 1
                WHEN g.HomeScore > g.AwayScore AND g.AwayClubID = c.ID THEN 1
                ELSE 0 END) AS Losses,
       SUM(CASE WHEN g.HomeClubID = c.ID THEN g.HomeScore ELSE g.AwayScore END) AS GoalsFor,
       SUM(CASE WHEN g.HomeClubID = c.ID THEN g.AwayScore ELSE g.HomeScore END) AS GoalsAgainst
FROM Clubs c
JOIN Games g ON (c.ID = g.HomeClubID OR c.ID = g.AwayClubID)
GROUP BY c.ID, c.Name
ORDER BY Team;
