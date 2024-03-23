create database crustacean;

\connect crustacean

CREATE TABLE Crustacean (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    origin VARCHAR(100),
    fun_fact VARCHAR(150)
);

INSERT INTO Crustacean (name, origin, fun_fact) VALUES ('Lobster', 'Atlantic Ocean', 'Lobsters can live to be over 100 years old.');
INSERT INTO Crustacean (name, origin, fun_fact) VALUES ('Crab', 'Worldwide', 'Crabs communicate by drumming or waving their pincers.');
INSERT INTO Crustacean (name, origin, fun_fact) VALUES ('Shrimp', 'Worldwide', 'Shrimp have their hearts in their heads.');
INSERT INTO Crustacean (name, origin, fun_fact) VALUES ('Crayfish', 'Freshwater habitats', 'Crayfish can regenerate lost limbs.');
INSERT INTO Crustacean (name, origin, fun_fact) VALUES ('Crawfish', 'North America', 'Crawfish are also known as mudbugs.');
INSERT INTO Crustacean (name, origin, fun_fact) VALUES ('King Crab', 'North Pacific', 'King crabs have a leg span of up to 5.9 feet (1.8 meters).');
INSERT INTO Crustacean (name, origin, fun_fact) VALUES ('Hermit Crab', 'Worldwide', 'Hermit crabs use empty shells for protection.');
INSERT INTO Crustacean (name, origin, fun_fact) VALUES ('Spiny Lobster', 'Tropical and subtropical waters', 'Spiny lobsters lack the large claws found in true lobsters.');
INSERT INTO Crustacean (name, origin, fun_fact) VALUES ('Snow Crab', 'North Atlantic and North Pacific', 'Snow crabs have a sweet, delicate flavor.');
INSERT INTO Crustacean (name, origin, fun_fact) VALUES ('Blue Crab', 'Atlantic and Gulf coasts of the United States', 'Blue crabs are one of the most recognizable crab species.');
INSERT INTO Crustacean (name, origin, fun_fact) VALUES ('Mantis Shrimp', 'Tropical and subtropical waters', 'Mantis shrimps have incredibly powerful claws that can strike with the force of a bullet.');
INSERT INTO Crustacean (name, origin, fun_fact) VALUES ('Langoustine', 'European waters', 'Langoustines are often referred to as Norway lobsters.');
INSERT INTO Crustacean (name, origin, fun_fact) VALUES ('Rock Crab', 'Eastern North America', 'Rock crabs are often found in rocky habitats.');
INSERT INTO Crustacean (name, origin, fun_fact) VALUES ('Horseshoe Crab', 'Atlantic coast of North America and Southeast Asia', 'Horseshoe crabs are not true crabs but are more closely related to spiders and scorpions.');
INSERT INTO Crustacean (name, origin, fun_fact) VALUES ('Coconut Crab', 'Indian and Pacific Oceans', 'Coconut crabs are the largest land-living arthropods in the world.');
INSERT INTO Crustacean (name, origin, fun_fact) VALUES ('Stone Crab', 'Southeastern United States', 'Stone crabs are harvested for their claws, which can regenerate if properly harvested.');
INSERT INTO Crustacean (name, origin, fun_fact) VALUES ('Fiddler Crab', 'Tropical and subtropical mangroves', 'Male fiddler crabs have one greatly enlarged claw, which they use to attract mates.');
INSERT INTO Crustacean (name, origin, fun_fact) VALUES ('Mud Crab', 'Coastal areas worldwide', 'Mud crabs are important in many cuisines, especially in Southeast Asia.');
INSERT INTO Crustacean (name, origin, fun_fact) VALUES ('Dungeness Crab', 'West coast of North America', 'Dungeness crabs are named after a small fishing village in Washington state.');
INSERT INTO Crustacean (name, origin, fun_fact) VALUES ('Spider Crab', 'Worldwide', 'Spider crabs have long, spindly legs that help them blend in with their surroundings.');