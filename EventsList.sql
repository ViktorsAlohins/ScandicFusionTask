-- Aizstājiet GAME_ID ar spēles ID, par kuru vēlaties saņemt ziņojumu.
SET @GAME_ID = 1;

-- 2a. Visi gūtie vārti
SELECT ge.EventTime, c.Name AS Team, p.FirstName AS Scorer, ge.ExtraInfo
FROM GameEvents ge
JOIN Clubs c ON ge.ClubID = c.ID
JOIN Players p ON ge.PlayerID = p.ID
WHERE ge.GameID = @GAME_ID AND ge.EventType = 'Vārti'
ORDER BY ge.EventTime;

-- 2b. Sākuma sastāvs katrai komandai
SELECT gp.GameID, c.Name AS Team, p.FirstName AS Player, gp.StartingPosition
FROM GameParticipants gp
JOIN Clubs c ON gp.ClubID = c.ID
JOIN Players p ON gp.PlayerID = p.ID
WHERE gp.GameID = @GAME_ID
ORDER BY c.Name, gp.StartingPosition;

-- 2c. Brīdinājumi un noraidījumi
SELECT ge.EventTime, c.Name AS Team, p.FirstName AS Player, ge.EventType, ge.ExtraInfo AS Reason
FROM GameEvents ge
JOIN Clubs c ON ge.ClubID = c.ID
JOIN Players p ON ge.PlayerID = p.ID
WHERE ge.GameID = @GAME_ID AND (ge.EventType = 'Brīdinājums' OR ge.EventType = 'Noraidījums')
ORDER BY ge.EventTime;