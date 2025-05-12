MATCH (n) 
WHERE ID(n) = 3
SET n.age = 35, n.height = 1.76
RETURN n

MATCH (virat) 
WHERE ID(n) = 3
SET virat:REF
RETURN virat

MATCH (virat {name: "Virat Kohli"}) - [contract:PLAYS_FOR] -> (:TEAM)
SET contract.salary = 180000000

MATCH (virat) 
WHERE ID(n) = 3
REMOVE virat:REF
RETURN virat

MATCH (virat) 
WHERE ID(n) = 3
REMOVE virat.age
RETURN virat
