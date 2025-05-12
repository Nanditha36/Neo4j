CREATE (virat:PLAYER:COACH:GENERAL_MANAGER { name: "Virat Kohli", height: 1.75 });

CREATE (virat:PLAYER:COACH:GENERAL_MANAGER { name: "Virat Kohli", height: 1.75 }) - [:PLAYS_FOR {salary: 150000000}] -> (:TEAM {name: "Royal Challengers Bangalore"});

CREATE (virat:PLAYER:COACH:GENERAL_MANAGER { name: "Virat Kohli", height: 1.75 });
CREATE (:TEAM {name: "Royal Challengers Bangalore"});

MATCH (virat:PLAYER {name: "Virat Kohli"}), (rcb:TEAM {name: "Royal Challengers Bangalore"})
CREATE (virat) - [:PLAYS_FOR] -> (rcb);
