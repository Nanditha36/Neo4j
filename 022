////////////////////////////////////////////////////////////
// ================ Querying For Nodes ================== //
////////////////////////////////////////////////////////////

// All nodes //
MATCH (n) RETURN n

// All nodes with specific label //
MATCH (player:PLAYER) RETURN player

// Properties //
MATCH (player:PLAYER) RETURN player.name, player.height

////////////////////////////////////////////////////////////
// =============== Filtering For Nodes ================== //
////////////////////////////////////////////////////////////

// Nodes where name is Virat Kohli //
MATCH (player:PLAYER) 
WHERE player.name = "Virat Kohli"
RETURN player

// Nodes where name is Virat Kohli //
MATCH (player:PLAYER {name: "Virat Kohli"}) 
RETURN player

// Nodes where name is not Virat Kohli //
MATCH (player:PLAYER) 
WHERE player.name <> "Virat Kohli"
RETURN player

// Nodes where height is greater than or equal to 1.80 //
MATCH (player:PLAYER) 
WHERE player.height >= 1.80
RETURN player

// Nodes where height is less than 1.80 //
MATCH (player:PLAYER) 
WHERE player.height < 1.80
RETURN player

// Nodes with a BMI larger than 25 //
MATCH (player:PLAYER) 
WHERE (player.weight / (player.height * player.height)) > 25
RETURN player

// Nodes with weight larger than 80 and height smaller than 1.75 //
MATCH (player:PLAYER) 
WHERE player.weight >= 80 AND player.height <= 1.75
RETURN player

// Limit //
MATCH (player:PLAYER) 
WHERE player.height >= 1.80
RETURN player
LIMIT 3

// Skip //
MATCH (player:PLAYER) 
WHERE player.height >= 1.80
RETURN player
SKIP 1
LIMIT 3

// Orderby //
MATCH (player:PLAYER) 
WHERE player.height >= 1.80
RETURN player
SKIP 1
ORDER BY player.height DESC
LIMIT 3

////////////////////////////////////////////////////////////
// ============== Querying Relationships ================ //
////////////////////////////////////////////////////////////

// GET ALL RCB PLAYERS //
MATCH (player:PLAYER) - [:PLAYS_FOR] -> (team:TEAM)
WHERE team.name = "Royal Challengers Bangalore"
RETURN player, team 

// GET ALL PLAYERS THAT MAKE MORE THAN 120M //
MATCH (player:PLAYER) - [contract :PLAYS_FOR] -> (team:TEAM)
WHERE contract.salary >= 120000000
RETURN player

// GET ALL OF VIRAT'S TEAMMATES THAT MAKE MORE THAN 140M //
MATCH (virat:PLAYER {name: "Virat Kohli"}) - [:TEAMMATES] -> (teammate:PLAYER)
MATCH (teammate) - [contract:PLAYS_FOR] -> (:TEAM)
WHERE contract.salary >= 140000000
RETURN teammate

////////////////////////////////////////////////////////////
// ==================== Aggregates ====================== //
////////////////////////////////////////////////////////////

// GET PLAYERS AND NUMBER OF MATCHES PLAYED //
MATCH (player:PLAYER) - [matchPlayed:PLAYED_AGAINST] - (team:TEAM)
RETURN player.name, COUNT(matchPlayed)

// GET PLAYERS AND AVERAGE RUNS PER MATCH //
MATCH (player:PLAYER) - [matchPlayed:PLAYED_AGAINST] - (team:TEAM)
RETURN player.name, AVG(matchPlayed.runs)

// GET HIGHEST SCORING PLAYER IN RCB //
MATCH (player:PLAYER) - [:PLAYS_FOR] - (:TEAM {name: "Royal Challengers Bangalore"})
MATCH (player) - [matchPlayed:PLAYED_AGAINST] - (:TEAM)
RETURN player.name, AVG(matchPlayed.runs) AS rpg
ORDER BY rpg DESC
LIMIT 1
