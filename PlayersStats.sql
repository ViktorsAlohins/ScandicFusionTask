-- Futbolista individuālā statistika
SELECT p.FirstName AS Player,
       COUNT(gp.GameID) * 90 AS MinutesPlayed,
       (SELECT COUNT(*) FROM GameEvents ge WHERE ge.PlayerID = p.ID AND ge.EventType = 'Vārti') AS Goals,
       (SELECT COUNT(*) FROM GameEvents ge WHERE ge.PlayerID = p.ID AND ge.EventType = 'Brīdinājums') AS YellowCards,
       (SELECT COUNT(*) FROM GameEvents ge WHERE ge.PlayerID = p.ID AND ge.EventType = 'Noraidījums') AS RedCards,
       (SELECT SUM(CASE WHEN g.HomeClubID = p.ClubID THEN g.AwayScore ELSE g.HomeScore END)
        FROM Games g
        JOIN GameParticipants gp2 ON gp2.GameID = g.ID
        WHERE gp2.PlayerID = p.ID AND (g.HomeClubID = p.ClubID OR g.AwayClubID = p.ClubID)) AS GoalsConceded
FROM Players p
JOIN GameParticipants gp ON p.ID = gp.PlayerID
GROUP BY p.ID, p.FirstName
ORDER BY Player;
