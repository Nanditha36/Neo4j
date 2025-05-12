////////////////////////////////////////////////////////////
// ================ Deleting Nodes ================== //
////////////////////////////////////////////////////////////

// Deleting a Node (Not going to work)
MATCH (virat {name: "Virat Kohli"}) 
DELETE virat

// Delete node and relationships
MATCH (virat {name: "Virat Kohli"}) 
DETACH DELETE virat

// Delete relationship
MATCH (bumrah {name: "Jasprit Bumrah"}) - [rel:PLAYS_FOR] -> (:TEAM) 
DELETE rel
