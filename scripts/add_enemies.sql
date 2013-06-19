-- *****************************************************************************
-- * Add Enemies
-- *****************************************************************************

-- -----------------------------------------------------------------------------
-- Tutorial 2
-- -----------------------------------------------------------------------------

-- Wooden Target (Non-Elemental)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Wooden Target', 'Try to hit the bullseye',
	element_id, '1', '1', '0', '1', '1', '3'
	FROM Elements WHERE element_name = 'Non-Elemental';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '1', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Wooden Target';

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '10' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Wooden Target' AND location_name = 'Tutorial 2';

-- -----------------------------------------------------------------------------
-- Sunshine Valley
-- -----------------------------------------------------------------------------

-- Sunhorse (Light)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Sunhorse', 'It is the sunset that rides off',
	element_id, '2', '2', '1', '1', '1', '5'
	FROM Elements WHERE element_name = 'Light';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '2', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Sunhorse';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Sunhorse Soul', 'Soul of a Sunhorse.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Sunhorse' AND location_name = 'Sunshine Valley';

-- Zeusite (Electric)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Zeusite', 'Small rodent with a shocking appearance',
	element_id, '2', '0', '3', '0', '2', '5'
	FROM Elements WHERE element_name = 'Electric';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '2', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Zeusite';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Zeusite Soul', 'Soul of a Zeusite.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Zeusite' AND location_name = 'Sunshine Valley';

-- Graffe (Nature)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Graffe', 'Long legs, short neck. Very funny looking.',
	element_id, '1', '2', '0', '2', '1', '10'
	FROM Elements WHERE element_name = 'Nature';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '2', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Graffe';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Graffe Soul', 'Soul of a Graffe.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Graffe' AND location_name = 'Sunshine Valley';

-- -----------------------------------------------------------------------------
-- Farmlands
-- -----------------------------------------------------------------------------

-- Chicken (Non-Elemental)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Chicken', 'A plain old chicken at a farm',
	element_id, '3', '2', '0', '2', '2', '10'
	FROM Elements WHERE element_name = 'Non-Elemental';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '3', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Chicken';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Chicken Soul', 'Soul of a Chicken.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Chicken' AND location_name = 'Farmlands';
    
-- Angry Rooster (Non-Elemental)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Angry Rooster', 'So mad it tried to lay an egg',
	element_id, '5', '3', '0', '2', '2', '15'
	FROM Elements WHERE element_name = 'Non-Elemental';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '5', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Angry Rooster';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Angry Rooster Soul', 'Soul of an Angry Rooster.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '2' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Angry Rooster' AND location_name = 'Farmlands';

-- Porker (Non-Elemental)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Porker', 'Oiks until it is eaten',
	element_id, '4', '3', '0', '1', '3', '10'
	FROM Elements WHERE element_name = 'Non-Elemental';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '4', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Porker';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Porker Soul', 'Soul of a Porker.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Porker' AND location_name = 'Farmlands';

-- -----------------------------------------------------------------------------
-- Rocky Road
-- -----------------------------------------------------------------------------

-- Minigolem (Earth)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Minigolem', 'It is the sunset that rides off',
	element_id, '4', '2', '1', '3', '1', '10'
	FROM Elements WHERE element_name = 'Earth';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '4', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Minigolem';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Minigolem Soul', 'Soul of a Minigolem.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Minigolem' AND location_name = 'Rocky Road';

-- Fire Sprite (Fire)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Fire Sprite', 'Small fire spirit',
	element_id, '4', '0', '3', '1', '2', '15'
	FROM Elements WHERE element_name = 'Fire';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '4', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Fire Sprite';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Fire Sprite Soul', 'Soul of a Fire Sprite.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Fire Sprite' AND location_name = 'Rocky Road';

-- Petrified Aardvark (Earth)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Petrified Aardvark', 'May be fearful, but it is as hard as a rock.',
	element_id, '3', '2', '2', '1', '1', '10'
	FROM Elements WHERE element_name = 'Earth';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '3', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Petrified Aardvark';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Petrified Aardvark Soul', 'Soul of a Petrified Aardvark.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Petrified Aardvark' AND location_name = 'Rocky Road';

-- -----------------------------------------------------------------------------
-- Bamboo Woods
-- -----------------------------------------------------------------------------

-- Bamboo Beetle (Wind)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Bamboo Beetle', 'Large beetle that lives in the bamboo',
	element_id, '2', '2', '1', '1', '1', '5'
	FROM Elements WHERE element_name = 'Wind';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '2', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Bamboo Beetle';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Bamboo Beetle Soul', 'Soul of a Bamboo Beetle.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Bamboo Beetle' AND location_name = 'Bamboo Woods';

-- Red Pander (Nature)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Red Pander', 'Small, red, fox-like creature',
	element_id, '2', '2', '1', '1', '2', '5'
	FROM Elements WHERE element_name = 'Nature';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '2', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Red Pander';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Red Pander Soul', 'Soul of a Red Pander.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Red Pander' AND location_name = 'Bamboo Woods';

-- Forrester (Nature)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Forrester', 'Hunter, tracker, skinner',
	element_id, '3', '2', '0', '2', '2', '10'
	FROM Elements WHERE element_name = 'Nature';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '3', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Forrester';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Forrester Soul', 'Soul of a Forrester.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Forrester' AND location_name = 'Bamboo Woods';

-- -----------------------------------------------------------------------------
-- Citrus Cove
-- -----------------------------------------------------------------------------

-- Orange Fish (Water)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Orange Fish', 'A fish. It is orange.',
	element_id, '4', '1', '3', '1', '2', '10'
	FROM Elements WHERE element_name = 'Water';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '4', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Orange Fish';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Orange Fish Soul', 'Soul of a Orange Fish.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Orange Fish' AND location_name = 'Citrus Cove';

-- Penguar (Frost)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Penguar', 'Small mammal that looks remarkably like a penguin',
	element_id, '4', '2', '1', '2', '2', '10'
	FROM Elements WHERE element_name = 'Frost';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '4', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Penguar';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Penguar Soul', 'Soul of a Penguar.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Penguar' AND location_name = 'Citrus Cove';

-- Caveshy (Light)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Caveshy', 'This small glowing fish is very hard to find',
	element_id, '5', '1', '3', '2', '2', '10'
	FROM Elements WHERE element_name = 'Light';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '5', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Caveshy';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Caveshy Soul', 'Soul of a Caveshy.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '2' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Caveshy' AND location_name = 'Citrus Cove';

-- -----------------------------------------------------------------------------
-- Ghostly Highway
-- -----------------------------------------------------------------------------

-- Unsettled Spirit (Astral)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Unsettled Spirit', 'Once alive, but cannot seem to find peace',
	element_id, '4', '0', '2', '4', '1', '10'
	FROM Elements WHERE element_name = 'Astral';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '4', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Unsettled Spirit';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Unsettled Spirit Soul', 'Soul of a Unsettled Spirit.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Unsettled Spirit' AND location_name = 'Ghostly Highway';

-- Wind Sprite (Wind)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Wind Sprite', 'Small wind spirit',
	element_id, '3', '0', '2', '3', '1', '10'
	FROM Elements WHERE element_name = 'Wind';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '3', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Wind Sprite';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Wind Sprite Soul', 'Soul of a Wind Sprite.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Wind Sprite' AND location_name = 'Ghostly Highway';

-- Lurking Ghoul (Astral)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Lurking Ghoul', 'This undead may be right arround the corner',
	element_id, '4', '2', '2', '1', '2', '10'
	FROM Elements WHERE element_name = 'Astral';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '4', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Lurking Ghoul';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Lurking Ghoul Soul', 'Soul of a Lurking Ghoul.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Lurking Ghoul' AND location_name = 'Ghostly Highway';

-- -----------------------------------------------------------------------------
-- Twilight Cave
-- -----------------------------------------------------------------------------

-- Twilight Beast (Light)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Twilight Beast', 'This beast glows so bright, it is almost blinding',
	element_id, '5', '2', '2', '2', '2', '10'
	FROM Elements WHERE element_name = 'Light';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '5', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Twilight Beast';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Twilight Beast Soul', 'Soul of a Twilight Beast.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Twilight Beast' AND location_name = 'Twilight Cave';


-- Twilight Fiend (Shadow)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Twilight Fiend', 'This fiend feeds on any light it can find',
	element_id, '5', '2', '2', '2', '2', '10'
	FROM Elements WHERE element_name = 'Shadow';

INSERT INTO Battle_Rewards SELECT enemy_id, '5', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Twilight Fiend';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Twilight Fiend Soul', 'Soul of a Twilight Fiend.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Twilight Fiend' AND location_name = 'Twilight Cave';

-- Ghast (Astral)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Ghast', 'This spirit bridges the gap between light and dark',
	element_id, '5', '0', '2', '3', '3', '10'
	FROM Elements WHERE element_name = 'Astral';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '5', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Ghast';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Ghast Soul', 'Soul of a Ghast.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '2' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Ghast' AND location_name = 'Twilight Cave';

-- -----------------------------------------------------------------------------
-- Heart of Twilight Cave
-- -----------------------------------------------------------------------------

-- Nothingness (Shadow)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Nothingness', 'This spirit has the soul of an abyss',
	element_id, '48', '11', '10', '11', '11', '50'
	FROM Elements WHERE element_name = 'Astral';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '50', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Nothingness';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Nothingness Soul', 'Soul of a Nothingness.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '8' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Nothingness' AND location_name = 'Heart of Twilight Cave';

-- -----------------------------------------------------------------------------
-- Fisherman Creek
-- -----------------------------------------------------------------------------

-- Mini Riverrunner (Water)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Mini Riverrunner', 'Small speedy fish. Rather cute.',
	element_id, '5', '1', '2', '2', '2', '15'
	FROM Elements WHERE element_name = 'Water';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '5', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Mini Riverrunner';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Mini Riverrunner Soul', 'Soul of a Mini Riverrunner.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Mini Riverrunner' AND location_name = 'Fisherman Creek';

-- Neanderthal (Non-Elemental)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Neanderthal', 'Inbread lunatic',
	element_id, '6', '3', '0', '3', '3', '10'
	FROM Elements WHERE element_name = 'Non-Elemental';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '6', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Neanderthal';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Neanderthal Soul', 'Soul of a Neanderthal.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Neanderthal' AND location_name = 'Fisherman Creek';

-- -----------------------------------------------------------------------------
-- Still Brook
-- -----------------------------------------------------------------------------

-- Water Sprite (Water)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Water Sprite', 'Small water spirit',
	element_id, '7', '0', '3', '4', '2', '15'
	FROM Elements WHERE element_name = 'Water';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '7', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Water Sprite';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Water Sprite Soul', 'Soul of a Water Sprite.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Water Sprite' AND location_name = 'Still Brook';

-- Rock Skimmer (Earth)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Rock Skimmer', 'This mini golem likes throwing his brothers across the brook',
	element_id, '9', '1', '3', '3', '3', '20'
	FROM Elements WHERE element_name = 'Earth';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '9', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Rock Skimmer';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Rock Skimmer Soul', 'Soul of a Rock Skimmer.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Rock Skimmer' AND location_name = 'Still Brook';

-- -----------------------------------------------------------------------------
-- Oasis Gardens
-- -----------------------------------------------------------------------------

-- Killer Bee (Poison)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Killer Bee', 'Moves and stings like a bee',
	element_id, '7', '1', '4', '2', '2', '15'
	FROM Elements WHERE element_name = 'Poison';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '7', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Killer Bee';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Killer Bee Soul', 'Soul of a Killer Bee.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Killer Bee' AND location_name = 'Oasis Gardens';

-- Mirage (Wind)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Mirage', 'Moves as quickly as wind',
	element_id, '6', '0', '2', '3', '3', '15'
	FROM Elements WHERE element_name = 'Wind';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '6', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Mirage';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Mirage Soul', 'Soul of a Mirage.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Mirage' AND location_name = 'Oasis Gardens';

-- -----------------------------------------------------------------------------
-- Beaten Path
-- -----------------------------------------------------------------------------

-- Bandit (Non-Elemental)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Bandit', 'Here to steal your junk',
	element_id, '10', '5', '0', '3', '3', '20'
	FROM Elements WHERE element_name = 'Non-Elemental';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '10', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Bandit';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Bandit Soul', 'Soul of a Bandit.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Bandit' AND location_name = 'Beaten Path';

-- Frost Mage (Frost)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Frost Mage', 'Not afraid to give you the cold shoulder',
	element_id, '10', '0', '5', '2', '5', '15'
	FROM Elements WHERE element_name = 'Frost';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '10', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Frost Mage';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Frost Mage Soul', 'Soul of a Frost Mage.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Frost Mage' AND location_name = 'Beaten Path';

-- -----------------------------------------------------------------------------
-- Forest of Shadows
-- -----------------------------------------------------------------------------

-- Shadow Sprite (Shadow)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Shadow Sprite', 'Small shadow spirit',
	element_id, '12', '0', '6', '4', '3', '20'
	FROM Elements WHERE element_name = 'Shadow';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '12', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Shadow Sprite';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Shadow Sprite Soul', 'Soul of a Shadow Sprite.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '7' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Shadow Sprite' AND location_name = 'Forest of Shadows';

-- Quetzl (Nature)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Quetzl', 'Quick and elusive bird. Very beautiful',
	element_id, '11', '2', '2', '3', '3', '30'
	FROM Elements WHERE element_name = 'Nature';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '11', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Quetzl';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Quetzl Soul', 'Soul of a Quetzl.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Quetzl' AND location_name = 'Forest of Shadows';

-- -----------------------------------------------------------------------------
-- Mont Pelear
-- -----------------------------------------------------------------------------

-- Holy Warrior (Light)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Holy Warrior', 'Warrior with shining sword and white armor',
	element_id, '15', '5', '4', '4', '3', '20'
	FROM Elements WHERE element_name = 'Light';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '12', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Holy Warrior';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Holy Warrior Soul', 'Soul of a Holy Warrior.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '7' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Holy Warrior' AND location_name = 'Mont Pelear';

-- Exiled Monk (Non-Elemental)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Exiled Monk', 'Used to be a holy man',
	element_id, '14', '1', '7', '2', '7', '10'
	FROM Elements WHERE element_name = 'Non-Elemental';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '14', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Exiled Monk';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Exiled Monk Soul', 'Soul of a Exiled Monk.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Exiled Monk' AND location_name = 'Mont Pelear';

-- -----------------------------------------------------------------------------
-- Narrow Crevasse
-- -----------------------------------------------------------------------------

-- Rock Spider (Earth)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Rock Spider', 'Climbs in an out of holes in the rock',
	element_id, '21', '5', '5', '6', '6', '20'
	FROM Elements WHERE element_name = 'Earth';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '21', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Rock Spider';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Rock Spider Soul', 'Soul of a Rock Spider.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '6' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Rock Spider' AND location_name = 'Narrow Crevasse';

-- Wasp Queen (Poison)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Wasp Queen', 'Its sting can be deadly',
	element_id, '22', '7', '7', '4', '4', '25'
	FROM Elements WHERE element_name = 'Poison';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '22', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Wasp Queen';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Wasp Queen Soul', 'Soul of a Wasp Queen.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Wasp Queen' AND location_name = 'Narrow Crevasse';

-- -----------------------------------------------------------------------------
-- Tabletop Rock
-- -----------------------------------------------------------------------------

-- Earth Sprite (Earth)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Earth Sprite', 'Small earth spirit',
	element_id, '23', '0', '10', '8', '7', '15'
	FROM Elements WHERE element_name = 'Earth';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '23', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Earth Sprite';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Earth Sprite Soul', 'Soul of a Earth Sprite.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Earth Sprite' AND location_name = 'Tabletop Rock';

-- Rynock (Earth)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Rynock', 'Comes charging remarkably fast',
	element_id, '25', '9', '1', '8', '8', '25'
	FROM Elements WHERE element_name = 'Earth';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '25', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Rynock';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Rynock Soul', 'Soul of a Rynock.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Rynock' AND location_name = 'Tabletop Rock';

-- Roctopus (Earth)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Roctopus', 'Looks like it should live in the sea, but is hard as rock',
	element_id, '24', '7', '5', '6', '6', '25'
	FROM Elements WHERE element_name = 'Earth';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '24', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Roctopus';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Roctopus Soul', 'Soul of a Roctopus.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Roctopus' AND location_name = 'Tabletop Rock';

-- -----------------------------------------------------------------------------
-- Volcan Mountains
-- -----------------------------------------------------------------------------

-- Winged Tiger (Wind)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Winged Tiger', 'Flies and eats people. Bad news.',
	element_id, '12', '5', '0', '4', '4', '20'
	FROM Elements WHERE element_name = 'Wind';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '12', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Winged Tiger';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Winged Tiger Soul', 'Soul of a Winged Tiger.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Winged Tiger' AND location_name = 'Volcan Mountains';

-- Fire Mage (Fire)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Fire Mage', 'Knows how to cast a fireball. Very well.',
	element_id, '12', '0', '5', '4', '6', '10'
	FROM Elements WHERE element_name = 'Frost';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '12', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Fire Mage';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Fire Mage Soul', 'Soul of a Fire Mage.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Fire Mage' AND location_name = 'Volcan Mountains';

-- Yeti (Frost)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Yeti', 'Abomitable Snowman',
	element_id, '12', '6', '0', '5', '1', '25'
	FROM Elements WHERE element_name = 'Frost';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '12', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Yeti';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Yeti Soul', 'Soul of a Yeti.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Yeti' AND location_name = 'Volcan Mountains';

-- -----------------------------------------------------------------------------
-- Barren Route
-- -----------------------------------------------------------------------------

-- Fire Charmer (Fire)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Fire Charmer', 'Spits fire',
	element_id, '20', '0', '8', '7', '7', '15'
	FROM Elements WHERE element_name = 'Fire';

INSERT INTO Battle_Rewards SELECT enemy_id, '20', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Fire Charmer';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Fire Charmer Soul', 'Soul of a Fire Charmer.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Fire Charmer' AND location_name = 'Barren Route';

-- Thunder Mage (Electric)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Thunder Mage', 'Will zap you with his staff',
	element_id, '20', '0', '8', '7', '7', '15'
	FROM Elements WHERE element_name = 'Electric';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '20', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Thunder Mage';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Thunder Mage Soul', 'Soul of a Thunder Mage.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Thunder Mage' AND location_name = 'Barren Route';

-- -----------------------------------------------------------------------------
-- Fork in the Road
-- -----------------------------------------------------------------------------

-- Thunder Sprite (Electric)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Thunder Sprite', 'Small electricity spirit',
	element_id, '24', '0', '10', '8', '7', '20'
	FROM Elements WHERE element_name = 'Electric';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '24', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Thunder Sprite';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Thunder Sprite Soul', 'Soul of a Thunder Sprite.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Thunder Sprite' AND location_name = 'Fork in the Road';

-- Bright Mage (Light)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Bright Mage', 'Lights up the night with his spells',
	element_id, '25', '0', '6', '5', '7', '35'
	FROM Elements WHERE element_name = 'Light';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '25', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Bright Mage';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Bright Mage Soul', 'Soul of a Bright Mage.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '6' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Bright Mage' AND location_name = 'Fork in the Road';

-- -----------------------------------------------------------------------------
-- Forgotten Road
-- -----------------------------------------------------------------------------

-- Socket Lemur (Electric)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Socket Lemur', 'Summons a small storm',
	element_id, '31', '7', '7', '7', '7', '40'
	FROM Elements WHERE element_name = 'Electric';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '31', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Socket Lemur';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Socket Lemur Soul', 'Soul of a Socket Lemur.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Socket Lemur' AND location_name = 'Forgotten Road';

-- Dark Mage (Shadow)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Dark Mage', 'His darkness can blot out the light',
	element_id, '32', '0', '12', '6', '12', '35'
	FROM Elements WHERE element_name = 'Shadow';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '32', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Dark Mage';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Dark Mage Soul', 'Soul of a Dark Mage.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Dark Mage' AND location_name = 'Forgotten Road';

-- -----------------------------------------------------------------------------
-- Mystic Jungle
-- -----------------------------------------------------------------------------

-- Fairy Herder (Light)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Fairy Herder', 'Is followed around by a host of small fairies',
	element_id, '39', '4', '14', '10', '10', '30'
	FROM Elements WHERE element_name = 'Light';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '39', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Fairy Herder';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Fairy Herder Soul', 'Soul of a Fairy Herder.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Fairy Herder' AND location_name = 'Mystic Jungle';

-- Malboro (Poison)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Malboro', 'Spits a poisonous fog that will clog your lungs',
	element_id, '40', '0', '16', '6', '8', '75'
	FROM Elements WHERE element_name = 'Poison';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '40', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Malboro';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Malboro Soul', 'Soul of a Malboro.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Malboro' AND location_name = 'Mystic Jungle';

-- Ghostly Poacher (Astral)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Ghostly Poacher', 'This undead hunter craves all flesh',
	element_id, '40', '10', '10', '8', '9', '40'
	FROM Elements WHERE element_name = 'Astral';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '40', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Ghostly Poacher';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Ghostly Poacher Soul', 'Soul of a Ghostly Poacher.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Ghostly Poacher' AND location_name = 'Mystic Jungle';

-- -----------------------------------------------------------------------------
-- Deep Jungle
-- -----------------------------------------------------------------------------

-- Jerg (Poison)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Jerg', 'Very large insect with extremely venomous bite',
	element_id, '44', '0', '15', '12', '13', '45'
	FROM Elements WHERE element_name = 'Poison';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '44', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Jerg';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Jerg Soul', 'Soul of a Jerg.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Jerg' AND location_name = 'Deep Jungle';

-- Jaguar (Nature)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Jaguar', 'Ambushes from the trees',
	element_id, '45', '16', '4', '11', '9', '50'
	FROM Elements WHERE element_name = 'Nature';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '45', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Jaguar';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Jaguar Soul', 'Soul of a Jaguar.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Jaguar' AND location_name = 'Deep Jungle';

-- Giant Firefly (Light)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Giant Firefly', 'So bright, its light can be seen through a small tree',
	element_id, '43', '4', '16', '8', '12', '40'
	FROM Elements WHERE element_name = 'Light';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '43', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Giant Firefly';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Giant Firefly Soul', 'Soul of a Giant Firefly.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Giant Firefly' AND location_name = 'Deep Jungle';

-- -----------------------------------------------------------------------------
-- Dragon Pass
-- -----------------------------------------------------------------------------

-- Holy Sprite (Light)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Holy Sprite', 'Small light spirit',
	element_id, '39', '0', '14', '12', '10', '40'
	FROM Elements WHERE element_name = 'Light';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '39', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Holy Sprite';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Holy Sprite Soul', 'Soul of a Holy Sprite.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Holy Sprite' AND location_name = 'Dragon Pass';

-- Staticobra (Electric)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Staticobra', 'Upon biting, pumps raw electricity into your blood',
	element_id, '40', '9', '12', '7', '7', '50'
	FROM Elements WHERE element_name = 'Electric';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '40', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Staticobra';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Staticobra Soul', 'Soul of a Staticobra.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '6' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Staticobra' AND location_name = 'Dragon Pass';

-- -----------------------------------------------------------------------------
-- Thunder Temple
-- -----------------------------------------------------------------------------

-- Thunder Bug (Electric)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Thunder Bug', 'Large Beetle that shoots lightning from its mouth',
	element_id, '42', '0', '19', '8', '12', '40'
	FROM Elements WHERE element_name = 'Electric';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '42', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Thunder Bug';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Thunder Bug Soul', 'Soul of a Thunder Bug.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Thunder Bug' AND location_name = 'Thunder Temple';

-- Lightning Fiend (Electric)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Lightning Fiend', 'This demon was born out of a thunderstorm',
	element_id, '45', '0', '16', '14', '12', '40'
	FROM Elements WHERE element_name = 'Electric';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '45', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Lightning Fiend';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Lightning Fiend Soul', 'Soul of a Lightning Fiend.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '6' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Lightning Fiend' AND location_name = 'Thunder Temple';

-- -----------------------------------------------------------------------------
-- Gargantuan Falls
-- -----------------------------------------------------------------------------

-- Fallcreeper (Shadow)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Fallcreeper', 'Hides behind the falls. Very hard to find',
	element_id, '12', '3', '2', '6', '4', '10'
	FROM Elements WHERE element_name = 'Shadow';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '12', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Fallcreeper';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Fallcreeper Soul', 'Soul of a Fallcreeper.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '1' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Fallcreeper' AND location_name = 'Gargantuan Falls';

-- Flying Fish (Water)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Flying Fish', 'Flies in and out of the waterfall at will',
	element_id, '11', '1', '4', '3', '3', '25'
	FROM Elements WHERE element_name = 'Water';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '11', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Flying Fish';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Flying Fish Soul', 'Soul of a Flying Fish.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '6' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Flying Fish' AND location_name = 'Gargantuan Falls';

-- Grounder (Earth)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Grounder', 'Lives, eats, and can even breathe dirt',
	element_id, '12', '2', '2', '5', '3', '25'
	FROM Elements WHERE element_name = 'Earth';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '12', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Grounder';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Grounder Soul', 'Soul of a Grounder.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Grounder' AND location_name = 'Gargantuan Falls';

-- -----------------------------------------------------------------------------
-- Lake Bawny
-- -----------------------------------------------------------------------------

-- Silversail (Wind)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Silversail', 'Large fish with a giant fin that it uses to swim at a remarkable pace',
	element_id, '10', '4', '4', '1', '1', '25'
	FROM Elements WHERE element_name = 'Wind';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '10', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Silversail';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Silversail Soul', 'Soul of a Silversail.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Silversail' AND location_name = 'Lake Bawny';

-- Thunderfish (Electric)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Thunderfish', 'Can send a thunderbolt like a torpedo underwater',
	element_id, '11', '0', '6', '2', '4', '20'
	FROM Elements WHERE element_name = 'Electric';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '11', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Thunderfish';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Thunderfish Soul', 'Soul of a Thunderfish.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Thunderfish' AND location_name = 'Lake Bawny';

-- Sea Dragon (Water)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Sea Dragon', 'Large sea monster. Very Rarely spotted',
	element_id, '11', '4', '4', '1', '1', '30'
	FROM Elements WHERE element_name = 'Water';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '11', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Sea Dragon';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Sea Dragon Soul', 'Soul of a Sea Dragon.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '1' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Sea Dragon' AND location_name = 'Lake Bawny';

-- -----------------------------------------------------------------------------
-- Giant Beaver Dam
-- -----------------------------------------------------------------------------

-- Beaver (Water)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Beaver', 'Get off his dam. Now.',
	element_id, '10', '5', '0', '4', '2', '20'
	FROM Elements WHERE element_name = 'Water';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '10', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Beaver';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Beaver Soul', 'Soul of a Beaver.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '6' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Beaver' AND location_name = 'Lake Bawny';

-- Lively Tree Fungus (Poison)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Lively Tree Fungus', 'Walking poisonous tree fungus',
	element_id, '9', '0', '5', '1', '3', '25'
	FROM Elements WHERE element_name = 'Poison';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '9', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Lively Tree Fungus';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Lively Tree Fungus Soul', 'Soul of a Lively Tree Fungus.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Lively Tree Fungus' AND location_name = 'Lake Bawny';

-- -----------------------------------------------------------------------------
-- Crimea River
-- -----------------------------------------------------------------------------

-- Riverrunner (Water)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Riverrunner', 'Extremely quick fish. Darts back and forth',
	element_id, '9', '4', '4', '2', '2', '10'
	FROM Elements WHERE element_name = 'Water';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '9', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Riverrunner';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Riverrunner Soul', 'Soul of a Riverrunner.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '6' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Riverrunner' AND location_name = 'Crimea River';

-- River Pirate (Non-Elemental)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'River Pirate', 'Rams ships to steal their booty',
	element_id, '9', '4', '1', '4', '2', '15'
	FROM Elements WHERE element_name = 'Non-Elemental';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '9', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'River Pirate';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('River Pirate Soul', 'Soul of a River Pirate.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'River Pirate' AND location_name = 'Crimea River';

-- -----------------------------------------------------------------------------
-- Gingeneer Bridge
-- -----------------------------------------------------------------------------

-- Robotic Cyborg (Non-Elemental)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Robotic Cyborg', 'Android with a vengeance',
	element_id, '9', '5', '0', '4', '1', '20'
	FROM Elements WHERE element_name = 'Non-Elemental';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '9', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Robotic Cyborg';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Robotic Cyborg Soul', 'Soul of a Robotic Cyborg.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Robotic Cyborg' AND location_name = 'Gingeneer Bridge';

-- Hitman (Non-Elemental)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Hitman', 'Was hired to bring back someones head on a platter',
	element_id, '9', '4', '1', '3', '3', '15'
	FROM Elements WHERE element_name = 'Non-Elemental';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '9', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Hitman';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Hitman Soul', 'Soul of a Hitman.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Hitman' AND location_name = 'Gingeneer Bridge';

-- -----------------------------------------------------------------------------
-- Bonita Springs
-- -----------------------------------------------------------------------------

-- Steam Bat (Water)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Steam Bat', 'Bat that lives among the steam',
	element_id, '8', '4', '4', '1', '1', '15'
	FROM Elements WHERE element_name = 'Water';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '8', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Steam Bat';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Steam Bat Soul', 'Soul of a Steam Bat.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Steam Bat' AND location_name = 'Bonita Springs';

-- Tornado Bat (Wind)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Tornado Bat', 'Bat that tries to blow the steam away',
	element_id, '8', '4', '4', '1', '1', '15'
	FROM Elements WHERE element_name = 'Wind';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '8', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Tornado Bat';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Tornado Bat Soul', 'Soul of a Tornado Bat.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Tornado Bat' AND location_name = 'Bonita Springs';

-- Blaze Bat (Fire)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Blaze Bat', 'Fiery bat that spits fireballs at its prey',
	element_id, '8', '4', '4', '1', '1', '15'
	FROM Elements WHERE element_name = 'Fire';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '8', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Blaze Bat';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Blaze Bat Soul', 'Soul of a Blaze Bat.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Blaze Bat' AND location_name = 'Bonita Springs';

-- -----------------------------------------------------------------------------
-- Cracked Plateau
-- -----------------------------------------------------------------------------

-- Skullephant (Shadow)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Skullephant', 'Giant elephant-like creature made of pure darkness',
	element_id, '10', '4', '1', '3', '3', '20'
	FROM Elements WHERE element_name = 'Shadow';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '10', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Skullephant';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Skullephant Soul', 'Soul of a Skullephant.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Skullephant' AND location_name = 'Cracked Plateau';
    
-- Mudslinger (Earth)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Mudslinger', 'Primate that likes to throw mud and laugh at its enemies',
	element_id, '9', '1', '4', '3', '3', '15'
	FROM Elements WHERE element_name = 'Earth';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '9', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Mudslinger';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Mudslinger Soul', 'Soul of a Mudslinger.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Mudslinger' AND location_name = 'Cracked Plateau';

-- Lost Snowbeast (Frost)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Lost Snowbeast', 'Took a wrong turn at the tundra',
	element_id, '10', '5', '1', '4', '2', '15'
	FROM Elements WHERE element_name = 'Frost';

INSERT INTO Battle_Rewards SELECT enemy_id, '10', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Lost Snowbeast';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Lost Snowbeast Soul', 'Soul of a Lost Snowbeast.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '1' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Lost Snowbeast' AND location_name = 'Cracked Plateau';

-- -----------------------------------------------------------------------------
-- George Gorge
-- -----------------------------------------------------------------------------

-- Canyon Crawler (Earth)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Canyon Crawler', 'Giant insect that lives in the rocks',
	element_id, '8', '5', '0', '3', '3', '10'
	FROM Elements WHERE element_name = 'Earth';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '8', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Canyon Crawler';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Canyon Crawler Soul', 'Soul of a Canyon Crawler.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Canyon Crawler' AND location_name = 'George Gorge';

-- Gustrider (Wind)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Gustrider', 'Glides the air without the need for wind',
	element_id, '8', '0', '4', '3', '3', '20'
	FROM Elements WHERE element_name = 'Wind';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '8', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Gustrider';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Gustrider Soul', 'Soul of a Gustrider.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Gustrider' AND location_name = 'George Gorge';

-- Tortoise (Earth)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Tortoise', 'Its shell is hard as rock',
	element_id, '7', '2', '0', '5', '2', '15'
	FROM Elements WHERE element_name = 'Earth';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '7', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Tortoise';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Tortoise Soul', 'Soul of a Tortoise.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Tortoise' AND location_name = 'George Gorge';

-- -----------------------------------------------------------------------------
-- Lava Plains
-- -----------------------------------------------------------------------------

-- Fire Fox (Fire)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Fire Fox', 'Emits a light red glow from beneath its fur',
	element_id, '7', '3', '2', '3', '2', '10'
	FROM Elements WHERE element_name = 'Fire';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '7', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Fire Fox';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Fire Fox Soul', 'Soul of a Fire Fox.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Fire Fox' AND location_name = 'Lava Plains';

-- Lava Fiend (Fire)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Lava Fiend', 'Can melt the floor and travel underground',
	element_id, '7', '1', '4', '1', '4', '10'
	FROM Elements WHERE element_name = 'Fire';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '7', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Lava Fiend';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Lava Fiend Soul', 'Soul of a Lava Fiend.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Lava Fiend' AND location_name = 'Lava Plains';

-- Smogrinder (Poison)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Smogrinder', 'Clogs your eyes, then your lungs',
	element_id, '7', '0', '5', '2', '2', '15'
	FROM Elements WHERE element_name = 'Poison';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '7', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Smogrinder';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Smogrinder Soul', 'Soul of a Smogrinder.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '2' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Smogrinder' AND location_name = 'Lava Plains';

-- -----------------------------------------------------------------------------
-- Molten Fortress
-- -----------------------------------------------------------------------------

-- Phoenix (Fire)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Phoenix', 'Fiery bird that is reborn from its ashes',
	element_id, '20', '5', '5', '5', '5', '25'
	FROM Elements WHERE element_name = 'Fire';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '20', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Phoenix';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Phoenix Soul', 'Soul of a Phoenix.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '10' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Phoenix' AND location_name = 'Molten Fortress';

-- -----------------------------------------------------------------------------
-- Guapo Desert
-- -----------------------------------------------------------------------------

-- Sunsport (Fire)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Sunsport', 'Absorbs sunlight to create heat',
	element_id, '7', '1', '3', '3', '2', '15'
	FROM Elements WHERE element_name = 'Fire';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '7', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Sunsport';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Sunsport Soul', 'Soul of a Sunsport.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Sunsport' AND location_name = 'Guapo Desert';

-- Cactus Beast (Nature)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Cactus Beast', 'Immitates a cactus to fool its prey',
	element_id, '7', '5', '0', '2', '2', '15'
	FROM Elements WHERE element_name = 'Nature';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '7', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Cactus Beast';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Cactus Beast Soul', 'Soul of a Cactus Beast.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Cactus Beast' AND location_name = 'Guapo Desert';

-- -----------------------------------------------------------------------------
-- Split Way
-- -----------------------------------------------------------------------------

-- Fire Ferret (Fire)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Fire Ferret', 'Runs around leaving burn marks in the ground',
	element_id, '8', '3', '3', '2', '2', '15'
	FROM Elements WHERE element_name = 'Fire';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '7', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Fire Ferret';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Fire Ferret Soul', 'Soul of a Fire Ferret.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '7' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Fire Ferret' AND location_name = 'Split Way';

-- Wanderer (Non-Elemental)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Wanderer', 'Wonders why he is wandering',
	element_id, '7', '4', '0', '2', '4', '10'
	FROM Elements WHERE element_name = 'Non-Elemental';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '7', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Wanderer';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Wanderer Soul', 'Soul of a Wanderer.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Wanderer' AND location_name = 'Split Way';

-- -----------------------------------------------------------------------------
-- Lonely Road
-- -----------------------------------------------------------------------------

-- Haunted Highwayman (Astral)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Haunted Highwayman', 'Was a bandit in a previous life and could never let it go',
	element_id, '9', '2', '1', '3', '3', '25'
	FROM Elements WHERE element_name = 'Astral';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '9', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Haunted Highwayman';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Haunted Highwayman Soul', 'Soul of a Haunted Highwayman.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '6' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Haunted Highwayman' AND location_name = 'Lonely Road';

-- Lone Wolf (Nature)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Lone Wolf', 'Wolf separated from the pack. Extremely defensive',
	element_id, '9', '5', '0', '4', '1', '20'
	FROM Elements WHERE element_name = 'Nature';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '7', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Lone Wolf';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Lone Wolf Soul', 'Soul of a Lone Wolf.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Lone Wolf' AND location_name = 'Lonely Road';

-- -----------------------------------------------------------------------------
-- Dark Alley
-- -----------------------------------------------------------------------------

-- Stealth Bear (Shadow)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Stealth Bear', 'Hides in the shadows. Is never found, but will find you.',
	element_id, '9', '3', '1', '4', '2', '20'
	FROM Elements WHERE element_name = 'Shadow';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '7', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Stealth Bear';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Stealth Bear Soul', 'Soul of a Stealth Bear.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Stealth Bear' AND location_name = 'Dark Alley';

-- Sleepwalker (Astral)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Sleepwalker', 'Undead creeping around in the darkness',
	element_id, '10', '1', '3', '3', '3', '25'
	FROM Elements WHERE element_name = 'Astral';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '10', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Sleepwalker';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Sleepwalker Soul', 'Soul of a Sleepwalker.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '7' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Sleepwalker' AND location_name = 'Dark Alley';

-- -----------------------------------------------------------------------------
-- Forsaken Plains
-- -----------------------------------------------------------------------------

-- Poison Sprite (Poison)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Poison Sprite', 'Small poison spirit',
	element_id, '26', '0', '10', '8', '6', '35'
	FROM Elements WHERE element_name = 'Poison';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '26', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Poison Sprite';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Poison Sprite Soul', 'Soul of a Poison Sprite.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Poison Sprite' AND location_name = 'Forsaken Plains';

-- Deathbringer (Shadow)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Deathbringer', 'Lethal and quiet stalker',
	element_id, '27', '7', '7', '4', '7', '35'
	FROM Elements WHERE element_name = 'Shadow';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '27', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Deathbringer';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Deathbringer Soul', 'Soul of a Deathbringer.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '6' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Deathbringer' AND location_name = 'Forsaken Plains';

-- -----------------------------------------------------------------------------
-- Overhead Mountain
-- -----------------------------------------------------------------------------

-- Windtalker (Wind)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Windtalker', 'Its breath can reach speeds of 60 MPH',
	element_id, '29', '0', '12', '5', '5', '60'
	FROM Elements WHERE element_name = 'Wind';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '29', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Windtalker';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Windtalker Soul', 'Soul of a Windtalker.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Windtalker' AND location_name = 'Overhead Mountain';

-- Wind Mage (Wind)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Wind Mage', 'Can create gusts using his staff',
	element_id, '30', '2', '10', '6', '8', '40'
	FROM Elements WHERE element_name = 'Wind';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '29', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Wind Mage';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Wind Mage Soul', 'Soul of a Wind Mage.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Wind Mage' AND location_name = 'Overhead Mountain';

-- Frozen Gust (Frost)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Frozen Gust', 'Wind creature frozen from the altitude',
	element_id, '29', '0', '16', '2', '2', '70'
	FROM Elements WHERE element_name = 'Frost';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '29', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Frozen Gust';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Frozen Gust Soul', 'Soul of a Frozen Gust.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '2' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Frozen Gust' AND location_name = 'Overhead Mountain';

-- -----------------------------------------------------------------------------
-- Forbidden Pass
-- -----------------------------------------------------------------------------

-- Ancient Guardian (Astral)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Ancient Guardian', 'Used to guard the crypt of the king',
	element_id, '11', '1', '4', '1', '4', '30'
	FROM Elements WHERE element_name = 'Astral';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '11', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Ancient Guardian';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Ancient Guardian Soul', 'Soul of a Ancient Guardian.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Ancient Guardian' AND location_name = 'Forbidden Pass';

-- Ground Possum (Earth)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Ground Possum', 'Lives in holes in the ground',
	element_id, '10', '4', '1', '3', '3', '20'
	FROM Elements WHERE element_name = 'Earth';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '10', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Ground Possum';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Ground Possum Soul', 'Soul of a Ground Possum.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '6' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Ground Possum' AND location_name = 'Forbidden Pass';

-- -----------------------------------------------------------------------------
-- Twin Gates
-- -----------------------------------------------------------------------------

-- Frozen Ghoul (Frost)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Frozen Ghoul', 'Once an ice cave explorer',
	element_id, '12', '3', '3', '3', '3', '25'
	FROM Elements WHERE element_name = 'Frost';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Frozen Ghoul Soul', 'Soul of a Frozen Ghoul.', TRUE);
    
INSERT INTO Battle_Rewards SELECT enemy_id, '12', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Frozen Ghoul';

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Frozen Ghoul' AND location_name = 'Twin Gates';

-- Ironside (Non-Elemental)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Ironside', 'Large armored knight',
	element_id, '12', '4', '0', '6', '0', '35'
	FROM Elements WHERE element_name = 'Non-Elemental';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '12', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Ironside';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Ironside Soul', 'Soul of a Ironside.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Ironside' AND location_name = 'Twin Gates';

-- -----------------------------------------------------------------------------
-- Solemn Byway
-- -----------------------------------------------------------------------------

-- Excentric (Astral)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Excentric', 'Demented clown incapable of resting in peace',
	element_id, '13', '4', '4', '1', '1', '40'
	FROM Elements WHERE element_name = 'Astral';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '13', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Excentric';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Excentric Soul', 'Soul of a Excentric.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Excentric' AND location_name = 'Solemn Byway';

-- Dreamer (Shadow)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Dreamer', 'Causes a deep sleep on everything around it',
	element_id, '14', '2', '1', '4', '4', '40'
	FROM Elements WHERE element_name = 'Shadow';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '14', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Dreamer';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Dreamer Soul', 'Soul of a Dreamer.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Dreamer' AND location_name = 'Solemn Byway';

-- -----------------------------------------------------------------------------
-- Skeletal Bottoms
-- -----------------------------------------------------------------------------

-- Creep (Shadow)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Creep', 'Amazing at stabbing enemies in the back',
	element_id, '15', '4', '4', '4', '4', '20'
	FROM Elements WHERE element_name = 'Shadow';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '15', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Creep';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Creep Soul', 'Soul of a Creep.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Creep' AND location_name = 'Skeletal Bottoms';

-- Astral Sprite (Astral)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Astral Sprite', 'Small spirit from the astral plane',
	element_id, '15', '0', '8', '5', '3', '20'
	FROM Elements WHERE element_name = 'Astral';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '15', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Astral Sprite';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Astral Sprite Soul', 'Soul of a Astral Sprite.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Astral Sprite' AND location_name = 'Skeletal Bottoms';

-- -----------------------------------------------------------------------------
-- Graveyard
-- -----------------------------------------------------------------------------

-- Rotting Corpse (Poison)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Rotting Corpse', 'Putrid corpse that spits acid',
	element_id, '14', '2', '7', '3', '3', '20'
	FROM Elements WHERE element_name = 'Poison';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '14', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Rotting Corpse';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Rotting Corpse Soul', 'Soul of a Rotting Corpse.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Rotting Corpse' AND location_name = 'Graveyard';

-- Gravestalker (Astral)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Gravestalker', 'Ghost that enters and exits other bodies at will',
	element_id, '14', '4', '4', '3', '3', '25'
	FROM Elements WHERE element_name = 'Astral';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '14', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Gravestalker';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Gravestalker Soul', 'Soul of a Gravestalker.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Gravestalker' AND location_name = 'Graveyard';

-- -----------------------------------------------------------------------------
-- Frozen Wasteland
-- -----------------------------------------------------------------------------

-- Frost Sprite (Frost)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Frost Sprite', 'Small ice spirit',
	element_id, '28', '0', '12', '8', '6', '25'
	FROM Elements WHERE element_name = 'Frost';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '28', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Frozen Sprite';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Frost Sprite Soul', 'Soul of a Frost Sprite.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Frost Sprite' AND location_name = 'Frozen Wasteland';
    
-- Snow Leopard (Frost)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Snow Leopard', 'Its spots even blend in with the ice',
	element_id, '29', '9', '5', '8', '5', '35'
	FROM Elements WHERE element_name = 'Frost';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '29', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Snow Leopard';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Snow Leopard Soul', 'Soul of a Snow Leopard.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '2' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Snow Leopard' AND location_name = 'Frozen Wasteland';

-- Ice Golem (Frost)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Ice Golem', 'Massive creature made of frozen stones',
	element_id, '30', '5', '9', '8', '4', '45'
	FROM Elements WHERE element_name = 'Frost';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '30', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Ice Golem';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Ice Golem Soul', 'Soul of a Ice Golem.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Ice Golem' AND location_name = 'Frozen Wasteland';

-- -----------------------------------------------------------------------------
-- Deep Tundra
-- -----------------------------------------------------------------------------

-- Frost Giant (Frost)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Frost Giant', 'Giant who wields a massive frozen snowpick',
	element_id, '35', '10', '8', '8', '4', '50'
	FROM Elements WHERE element_name = 'Frost';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '35', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Frost Giant';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Frost Giant Soul', 'Soul of a Frost Giant.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Frost Giant' AND location_name = 'Deep Tundra';

-- Mammoth (Frost)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Mammoth', 'Large hairy elephant with enormous tusks',
	element_id, '34', '12', '2', '8', '8', '45'
	FROM Elements WHERE element_name = 'Frost';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '34', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Mammoth';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Mammoth Soul', 'Soul of a Mammoth.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '5' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Mammoth' AND location_name = 'Deep Tundra';

-- -----------------------------------------------------------------------------
-- Sunny Highway
-- -----------------------------------------------------------------------------

-- Bright Lioness (Light)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Bright Lioness', 'Huntress that shines like the stars',
	element_id, '30', '14', '1', '10', '2', '40'
	FROM Elements WHERE element_name = 'Light';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '30', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Brigh Lioness';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Bright Lioness Soul', 'Soul of a Bright Lioness.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Bright Lioness' AND location_name = 'Sunny Highway';

-- Pegasus (Wind)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Pegasus', 'Large winged horse. Not as docile as you would have hoped',
	element_id, '29', '8', '5', '8', '5', '40'
	FROM Elements WHERE element_name = 'Wind';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '29', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Pegasus';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Pegasus Soul', 'Soul of a Pegasus.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Pegasus' AND location_name = 'Sunny Highway';

-- Blazebearer (Fire)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Blazebearer', 'Wears robes of pure fire',
	element_id, '30', '2', '13', '2', '12', '30'
	FROM Elements WHERE element_name = 'Fire';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '30', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Blazebearer';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Blazebearer Soul', 'Soul of a Blazebearer.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Blazebearer' AND location_name = 'Sunny Highway';

-- -----------------------------------------------------------------------------
-- Roundabout
-- -----------------------------------------------------------------------------

-- Rogue Wolf (Nature)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Rogue Wolf', 'Wolf that abandoned the pack because the others were too weak',
	element_id, '32', '10', '1', '8', '10', '40'
	FROM Elements WHERE element_name = 'Nature';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '32', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Rogue Wolf';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Rogue Wolf Soul', 'Soul of a Rogue Wolf.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '2' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Rogue Wolf' AND location_name = 'Roundabout';

-- Scorpio (Poison)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Scorpio', 'Giant scorpion with a taste for infected blood',
	element_id, '32', '2', '15', '10', '0', '50'
	FROM Elements WHERE element_name = 'Poison';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '32', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Scorpio';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Scorpio Soul', 'Soul of a Scorpio.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '6' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Scorpio' AND location_name = 'Roundabout';

-- Icehucker (Frost)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Icehucker', 'Throws ice the size of boulders at its enemies',
	element_id, '31', '4', '10', '8', '8', '30'
	FROM Elements WHERE element_name = 'Frost';

INSERT INTO Battle_Rewards SELECT enemy_id, '31', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Icehucker';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Icehucker Soul', 'Soul of a Icehucker.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '2' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Icehucker' AND location_name = 'Roundabout';

-- -----------------------------------------------------------------------------
-- Halfway Route
-- -----------------------------------------------------------------------------

-- Rogue Bear (Nature)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Rogue Bear', 'Is alone because it at its own family',
	element_id, '35', '10', '5', '10', '5', '50'
	FROM Elements WHERE element_name = 'Nature';

INSERT INTO Battle_Rewards SELECT enemy_id, '35', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Rogue Bear';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Rogue Bear Soul', 'Soul of a Rogue Bear.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '2' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Rogue Bear' AND location_name = 'Halfway Route';

-- Shocker (Electric)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Shocker', 'This creature has a core of pure energy',
	element_id, '35', '3', '15', '6', '10', '30'
	FROM Elements WHERE element_name = 'Electric';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '35', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Shocker';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Shocker Soul', 'Soul of a Shocker.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Shocker' AND location_name = 'Halfway Route';

-- Gravelcoon (Earth)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Gravelcoon', 'This masked creature throws rocks at the speed of bullets',
	element_id, '35', '10', '8', '6', '4', '60'
	FROM Elements WHERE element_name = 'Earth';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '35', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Gravelcoon';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Gravelcoon Soul', 'Soul of a Gravelcoon.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Gravelcoon' AND location_name = 'Halfway Route';

-- -----------------------------------------------------------------------------
-- Open Plains
-- -----------------------------------------------------------------------------

-- Thundercat (Electric)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Thundercat', 'Its roar can summon the thunderboalt of Zeus himself',
	element_id, '40', '10', '15', '6', '4', '50'
	FROM Elements WHERE element_name = 'Electric';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '40', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Thundercat';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Thundercat Soul', 'Soul of a Thundercat.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Thundercat' AND location_name = 'Open Plains';

-- Flare (Fire)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Flare', 'Flies high and lets loose a small meteor',
	element_id, '40', '0', '19', '8', '12', '30'
	FROM Elements WHERE element_name = 'Fire';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '40', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Flair';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Flare Soul', 'Soul of a Flare.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '3' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Flare' AND location_name = 'Open Plains';

-- Raindeer (Water)
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health)
	SELECT 'Raindeer', 'Stomps and summons a torrent of rain',
	element_id, '40', '12', '6', '9', '9', '45'
	FROM Elements WHERE element_name = 'Water';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '40', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Raindeer';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Raindeer Soul', 'Soul of a Raindeer.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '4' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Raindeer' AND location_name = 'Open Plains';

-- *****************************************************************************
-- * Add Bosses
-- *****************************************************************************

-- Soldier
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health,
	enemy_is_boss) SELECT 'Soldier', 'A militiaman in the army.',
	element_id, '1', '1', '1', '1', '1', '10', TRUE
	FROM Elements WHERE element_name = 'Non-Elemental';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '5', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Soldier';
	
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Soldier Soul', 'Soul of the Soldier.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '0' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Soldier' AND location_name = 'Tutorial 2';   
    
-- Sewer Rat
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health,
	enemy_is_boss) SELECT 'Sewer Rat', 'A vile infestation on the farm.',
	element_id, '5', '3', '2', '3', '2', '10', TRUE
	FROM Elements WHERE element_name = 'Water';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '15', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Sewer Rat';
    
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Sewer Rat Soul', 'Soul of the Sewer Rat.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '0' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Sewer Rat' AND location_name = 'Farmlands';   
    
-- Collossal Skullephant
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health,
	enemy_is_boss) SELECT 'Collossal Skullephant', 'You thought a normal Skullephant was huge...',
	element_id, '10', '4', '1', '4', '4', '25', TRUE
	FROM Elements WHERE element_name = 'Shadow';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '25', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Collossal Skullephant';
    
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Collossal Skullephant Soul', 'Soul of the Collossal Skullephant.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '0' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Collossal Skullephant' AND location_name = 'Cracked Plateau';   

-- Spectral Wraith
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health,
	enemy_is_boss) SELECT 'Spectral Wraith', 'Ancient warlord with a vengeance.',
	element_id, '15', '0', '6', '6', '6', '30', TRUE
	FROM Elements WHERE element_name = 'Astral';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '36', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Spectral Wraith';
    
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Spectral Wraith Soul', 'Soul of the Spectral Wraith.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '0' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Spectral Wraith' AND location_name = 'Skeletal Bottoms';   

-- Phoenix King
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health,
	enemy_is_boss) SELECT 'Phoenix King', 'King of the fire birds.',
	element_id, '20', '6', '6', '6', '6', '30', TRUE
	FROM Elements WHERE element_name = 'Fire';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '45', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Phoenix King';
    
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Phoenix King Soul', 'Soul of the Phoenix King.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '0' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Phoenix King' AND location_name = 'Molten Fortress';

-- Adamantine Tortoise
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health,
	enemy_is_boss) SELECT 'Adamantine Tortoise', 'Its shell is as hard as diamond.',
	element_id, '25', '8', '0', '12', '10', '30', TRUE
	FROM Elements WHERE element_name = 'Earth';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '56', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Adamantine Tortoise';
    
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Adamantine Tortoise Soul', 'Soul of the Adamantine Tortoise.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '0' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Adamantine Tortoise' AND location_name = 'Tabletop Rock';

-- Hurricane Wing
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health,
	enemy_is_boss) SELECT 'Hurricane Wing', 'Its wings can send gusts of wind up to 80 MPH.',
	element_id, '30', '4', '10', '10', '10', '40', TRUE
	FROM Elements WHERE element_name = 'Wind';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '64', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Hurricane Wing';
    
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Hurricane Wing Soul', 'Soul of the Hurricane Wing.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '0' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Hurricane Wing' AND location_name = 'Overhead Mountain';

-- Ice Titan
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health,
	enemy_is_boss) SELECT 'Ice Titan', 'Heartless titan that is as cold as ice',
	element_id, '35', '0', '18', '10', '10', '50', TRUE
	FROM Elements WHERE element_name = 'Frost';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '72', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Ice Titan';
    
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Ice Titan Soul', 'Soul of the Ice Titan.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '0' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Ice Titan' AND location_name = 'Deep Tundra';

-- Grand Stallion
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health,
	enemy_is_boss) SELECT 'Grand Stallion', 'The grand untamed beast of nature.',
	element_id, '40', '15', '0', '15', '15', '45', TRUE
	FROM Elements WHERE element_name = 'Nature';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '85', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Grand Stallion';
    
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Grand Stallion Soul', 'Soul of the Grand Stallion.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '0' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Grand Stallion' AND location_name = 'Open Plains';

-- Thunder Dragon
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health,
	enemy_is_boss) SELECT 'Thunder Dragon', 'Its lightning breath can paralyze anything.',
	element_id, '45', '10', '15', '12', '12', '55', TRUE
	FROM Elements WHERE element_name = 'Electric';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '96', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Thunder Dragon';
    
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Thunder Dragon Soul', 'Soul of the Thunder Dragon.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '0' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Thunder Dragon' AND location_name = 'Thunder Temple';

-- Anaconda Viper
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health,
	enemy_is_boss) SELECT 'Anaconda Viper', 'It can poison you or squeeze you to death.',
	element_id, '45', '11', '14', '12', '13', '50', TRUE
	FROM Elements WHERE element_name = 'Poison';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '96', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Anaconda Viper';
    
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Anaconda Viper Soul', 'Soul of the Anaconda Viper.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '0' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Anaconda Viper' AND location_name = 'Deep Jungle';

-- Twilight Goddess
INSERT INTO Enemies (enemy_name, enemy_description, enemy_element, enemy_level,
    enemy_strength, enemy_magic, enemy_defense, enemy_barrier, enemy_max_health,
	enemy_is_boss) SELECT 'Twilight Goddess', 'Ruler of light and darkness',
	element_id, '48', '13', '13', '12', '12', '75', TRUE
	FROM Elements WHERE element_name = 'Light';
    
INSERT INTO Battle_Rewards SELECT enemy_id, '120', '0', '0', '0' FROM Enemies
    WHERE enemy_name = 'Twilight Goddess';
    
INSERT INTO Items (item_name, item_description, item_is_soul) VALUES
    ('Twilight Goddess Soul', 'Soul of the Twilight Goddess.', TRUE);

INSERT INTO Enemy_Locations SELECT enemy_id, location_id, '0' FROM Enemies JOIN Locations
	WHERE enemy_name = 'Twilight Goddess' AND location_name = 'Heart of Twilight Cave';

-- *****************************************************************************
-- * Add Loot
-- *****************************************************************************

INSERT INTO Battle_Loot SELECT enemy_id, item_id, '1', '100' FROM Enemies JOIN Items
	WHERE enemy_name = 'Chicken' AND item_name = 'Moolah';

-- -----------------------------------------------------------------------------
-- Need More Loot
-- -----------------------------------------------------------------------------
