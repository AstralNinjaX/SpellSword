-- *****************************************************************************
-- * Add Location Types
-- *****************************************************************************
INSERT INTO Location_Types (location_type_name) VALUES
    ('City'), ('Wild'), ('Boss');

-- *****************************************************************************
-- * Add Locations
-- *****************************************************************************

-- -----------------------------------------------------------------------------
-- Tutorial
-- -----------------------------------------------------------------------------

INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Tutorial', '1', location_type_id FROM Location_Types WHERE location_type_name = 'City';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Tutorial 2', '1', location_type_id FROM Location_Types WHERE location_type_name = 'Boss';

-- -----------------------------------------------------------------------------
-- Cities
-- -----------------------------------------------------------------------------

INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Forestglade', '1', location_type_id FROM Location_Types WHERE location_type_name = 'City';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Lemontown', '1', location_type_id FROM Location_Types WHERE location_type_name = 'City';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Moonshine', '1', location_type_id FROM Location_Types WHERE location_type_name = 'City';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Monastery #2', '1', location_type_id FROM Location_Types WHERE location_type_name = 'City';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Volcanville', '1', location_type_id FROM Location_Types WHERE location_type_name = 'City';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Blitzkreig', '1', location_type_id FROM Location_Types WHERE location_type_name = 'City';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Windhaven', '1', location_type_id FROM Location_Types WHERE location_type_name = 'City';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Frost Harbor', '1', location_type_id FROM Location_Types WHERE location_type_name = 'City';

-- -----------------------------------------------------------------------------
-- Wild
-- -----------------------------------------------------------------------------

INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Sunshine Valley', '2', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Rocky Road', '4', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Bamboo Woods', '3', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Citrus Cove', '5', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Ghostly Highway', '4', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Twilight Cave', '5', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Fisherman Creek', '6', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Still Brook', '9', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Oasis Gardens', '7', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Beaten Path', '10', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Forest of Shadows', '12', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Mont Pelear', '15', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Narrow Crevasse', '22', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Volcan Mountains', '12', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Barren Route', '20', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Fork in the Road', '25', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Forgotten Road', '32', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Mystic Jungle', '40', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Dragon Pass', '40', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Gargantuan Falls', '12', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Lake Bawny', '11', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Giant Beaver Dam', '10', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Crimea River', '9', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Gingeneer Bridge', '9', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Bonita Springs', '8', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'George Gorge', '8', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Lava Plains', '7', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Guapo Desert', '7', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Split Way', '8', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Lonely Road', '9', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Dark Alley', '10', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Forsaken Plains', '27', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Forbidden Pass', '11', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Twin Gates', '12', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Solemn Byway', '14', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Graveyard', '14', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Frozen Wasteland', '30', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Sunny Highway', '30', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Roundabout', '32', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Halfway Route', '35', location_type_id FROM Location_Types WHERE location_type_name = 'Wild';

-- -----------------------------------------------------------------------------
-- Boss
-- -----------------------------------------------------------------------------

INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Farmlands', '5', location_type_id FROM Location_Types WHERE location_type_name = 'Boss';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Heart of Twilight Cave', '48', location_type_id FROM Location_Types WHERE location_type_name = 'Boss';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Tabletop Rock', '25', location_type_id FROM Location_Types WHERE location_type_name = 'Boss';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Deep Jungle', '45', location_type_id FROM Location_Types WHERE location_type_name = 'Boss';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Thunder Temple', '45', location_type_id FROM Location_Types WHERE location_type_name = 'Boss';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Cracked Plateau', '10', location_type_id FROM Location_Types WHERE location_type_name = 'Boss';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Molten Fortress', '20', location_type_id FROM Location_Types WHERE location_type_name = 'Boss';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Overhead Mountain', '30', location_type_id FROM Location_Types WHERE location_type_name = 'Boss';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Skeletal Bottoms', '15', location_type_id FROM Location_Types WHERE location_type_name = 'Boss';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Deep Tundra', '35', location_type_id FROM Location_Types WHERE location_type_name = 'Boss';
INSERT INTO Locations (location_name, location_level, location_type) SELECT 'Open Plains', '40', location_type_id FROM Location_Types WHERE location_type_name = 'Boss';

-- *****************************************************************************
-- * Add Traveling
-- *****************************************************************************

-- -----------------------------------------------------------------------------
-- Tutorial -> Tutorial 2 -> Forestglade
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Tutorial' and dest.location_name = 'Tutorial 2';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Tutorial 2' and dest.location_name = 'Forestglade';

-- -----------------------------------------------------------------------------
-- Forestglade <-> Bamboo Woods
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Forestglade' and dest.location_name = 'Bamboo Woods';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Bamboo Woods' and dest.location_name = 'Forestglade';

-- -----------------------------------------------------------------------------
-- Bamboo Woods <-> Lemontown
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Bamboo Woods' and dest.location_name = 'Lemontown';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Lemontown' and dest.location_name = 'Bamboo Woods';

-- -----------------------------------------------------------------------------
-- Lemontown <-> Citrus Cove
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '2', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Lemontown' and dest.location_name = 'Citrus Cove';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Citrus Cove' and dest.location_name = 'Lemontown';

-- -----------------------------------------------------------------------------
-- Lemontown <-> Ghostly Highway
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Lemontown' and dest.location_name = 'Ghostly Highway';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Ghostly Highway' and dest.location_name = 'Lemontown';

-- -----------------------------------------------------------------------------
-- Ghostly Highway <-> Twilight Cave
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '2', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Ghostly Highway' and dest.location_name = 'Twilight Cave';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '2', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Twilight Cave' and dest.location_name = 'Ghostly Highway';

-- -----------------------------------------------------------------------------
-- Twilight Cave <-> Heart of Twilight Cave
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '45', '10'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Twilight Cave' and dest.location_name = 'Heart of Twilight Cave';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '45', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Heart of Twilight Cave' and dest.location_name = 'Twilight Cave';  

-- -----------------------------------------------------------------------------
-- Twilight Cave <-> Fisherman Creek
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '3', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Twilight Cave' and dest.location_name = 'Fisherman Creek';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '3', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Fisherman Creek' and dest.location_name = 'Twilight Cave';

-- -----------------------------------------------------------------------------
-- Fisherman Creek <-> Still Brook
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '6', '3'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Fisherman Creek' and dest.location_name = 'Still Brook';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '6', '3'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Still Brook' and dest.location_name = 'Fisherman Creek';

-- -----------------------------------------------------------------------------
-- Fisherman Creek <-> Moonshine
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Fisherman Creek' and dest.location_name = 'Moonshine';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '3', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Moonshine' and dest.location_name = 'Fisherman Creek';

-- -----------------------------------------------------------------------------
-- Moonshine <-> Beaten Path
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '7', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Moonshine' and dest.location_name = 'Beaten Path';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Beaten Path' and dest.location_name = 'Moonshine';

-- -----------------------------------------------------------------------------
-- Beaten Path <-> Forest of Shadows
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '9', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Beaten Path' and dest.location_name = 'Forest of Shadows';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '9', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Forest of Shadows' and dest.location_name = 'Beaten Path';

-- -----------------------------------------------------------------------------
-- Forest of Shadows <-> Mont Pelear
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '12', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Forest of Shadows' and dest.location_name = 'Mont Pelear';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '12', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Mont Pelear' and dest.location_name = 'Forest of Shadows';

-- -----------------------------------------------------------------------------
-- Mont Pelear <-> Monastery #2
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Mont Pelear' and dest.location_name = 'Monastery #2';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '12', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Monastery #2' and dest.location_name = 'Mont Pelear';

-- -----------------------------------------------------------------------------
-- Mont Pelear <-> Narrow Crevasse
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '19', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Mont Pelear' and dest.location_name = 'Narrow Crevasse';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '19', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Narrow Crevasse' and dest.location_name = 'Mont Pelear';

-- -----------------------------------------------------------------------------
-- Narrow Crevasse <-> Tabletop Rock
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '22', '5'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Narrow Crevasse' and dest.location_name = 'Tabletop Rock';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '22', '5'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Tabletop Rock' and dest.location_name = 'Narrow Crevasse';

-- -----------------------------------------------------------------------------
-- Forest of Shadows <-> Volcan Mountains
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '9', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Forest of Shadows' and dest.location_name = 'Volcan Mountains';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '9', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Volcan Mountains' and dest.location_name = 'Forest of Shadows';
    
-- -----------------------------------------------------------------------------
-- Volcan Mountains <-> Volcanville
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Volcan Mountains' and dest.location_name = 'Volcanville';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '9', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Volcanville' and dest.location_name = 'Volcan Mountains';

-- -----------------------------------------------------------------------------
-- Volcanville <-> Barren Route
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '17', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Volcanville' and dest.location_name = 'Barren Route';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Barren Route' and dest.location_name = 'Volcanville';

-- -----------------------------------------------------------------------------
-- Barren Route <-> Fork in the Road
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '22', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Barren Route' and dest.location_name = 'Fork in the Road';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '22', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Fork in the Road' and dest.location_name = 'Barren Route';

-- -----------------------------------------------------------------------------
-- Fork in the Road <-> Dragon Pass
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '37', '5'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Fork in the Road' and dest.location_name = 'Dragon Pass';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '37', '5'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Dragon Pass' and dest.location_name = 'Fork in the Road';

-- -----------------------------------------------------------------------------
-- Dragon Pass <-> Thunder Temple
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '42', '10'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Dragon Pass' and dest.location_name = 'Thunder Temple';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '42', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Thunder Temple' and dest.location_name = 'Dragon Pass';

-- -----------------------------------------------------------------------------
-- Fork in the Road <-> Forgotten Road
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '29', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Fork in the Road' and dest.location_name = 'Forgotten Road';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '29', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Forgotten Road' and dest.location_name = 'Fork in the Road';

-- -----------------------------------------------------------------------------
-- Forgotten Road <-> Mystic Jungle
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '37', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Forgotten Road' and dest.location_name = 'Mystic Jungle';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '37', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Mystic Jungle' and dest.location_name = 'Forgotten Road';

-- -----------------------------------------------------------------------------
-- Mystic Jungle <-> Deep Jungle
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '42', '10'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Mystic Jungle' and dest.location_name = 'Deep Jungle';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '42', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Deep Jungle' and dest.location_name = 'Mystic Jungle';

-- -----------------------------------------------------------------------------
-- Volcanville <-> Gargantuan Falls
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '9', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Volcanville' and dest.location_name = 'Gargantuan Falls';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Gargantuan Falls' and dest.location_name = 'Volcanville';

-- -----------------------------------------------------------------------------
-- Gargantuan Falls <-> Lake Bawny
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '9', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Gargantuan Falls' and dest.location_name = 'Lake Bawny';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '9', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Lake Bawny' and dest.location_name = 'Gargantuan Falls';

-- -----------------------------------------------------------------------------
-- Lake Bawny <-> Giant Beaver Dam
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '8', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Lake Bawny' and dest.location_name = 'Giant Beaver Dam';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '8', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Giant Beaver Dam' and dest.location_name = 'Lake Bawny';

-- -----------------------------------------------------------------------------
-- Giant Beaver Dam <-> Crimea River
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '7', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Giant Beaver Dam' and dest.location_name = 'Crimea River';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '7', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Crimea River' and dest.location_name = 'Giant Beaver Dam';

-- -----------------------------------------------------------------------------
-- Crimea River <-> Gingeneer Bridge
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '6', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Crimea River' and dest.location_name = 'Gingeneer Bridge';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '6', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Gingeneer Bridge' and dest.location_name = 'Crimea River';

-- -----------------------------------------------------------------------------
-- Gingeneer Bridge <-> Bonita Springs
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '6', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Gingeneer Bridge' and dest.location_name = 'Bonita Springs';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '6', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Bonita Springs' and dest.location_name = 'Gingeneer Bridge';

-- -----------------------------------------------------------------------------
-- Bonita Springs <-> Cracked Plateau
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '7', '5'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Bonita Springs' and dest.location_name = 'Cracked Plateau';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '7', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Cracked Plateau' and dest.location_name = 'Bonita Springs';

-- -----------------------------------------------------------------------------
-- Bonita Springs <-> Oasis Gardens
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '5', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Bonita Springs' and dest.location_name = 'Oasis Gardens';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '5', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Oasis Gardens' and dest.location_name = 'Bonita Springs';

-- -----------------------------------------------------------------------------
-- Oasis Gardens <-> Moonshine
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Oasis Gardens' and dest.location_name = 'Moonshine';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '4', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Moonshine' and dest.location_name = 'Oasis Gardens';

-- -----------------------------------------------------------------------------
-- Crimea River <-> George Gorge
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '6', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Crimea River' and dest.location_name = 'George Gorge';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '6', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'George Gorge' and dest.location_name = 'Crimea River';

-- -----------------------------------------------------------------------------
-- George Gorge <-> Lava Plains
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '5', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'George Gorge' and dest.location_name = 'Lava Plains';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '5', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Lava Plains' and dest.location_name = 'George Gorge';
	
-- -----------------------------------------------------------------------------
-- Lava Plains <-> Molten Fortress
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '17', '5'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Lava Plains' and dest.location_name = 'Molten Fortress';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '17', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Molten Fortress' and dest.location_name = 'Lava Plains';

-- -----------------------------------------------------------------------------
-- Lava Plains <-> Guapo Desert
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '4', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Lava Plains' and dest.location_name = 'Guapo Desert';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '4', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Guapo Desert' and dest.location_name = 'Lava Plains';

-- -----------------------------------------------------------------------------
-- Guapo Desert <-> Rocky Road
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '4', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Guapo Desert' and dest.location_name = 'Rocky Road';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '4', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Rocky Road' and dest.location_name = 'Guapo Desert';

-- -----------------------------------------------------------------------------
-- Rocky Road <-> Sunshine Valley
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Rocky Road' and dest.location_name = 'Sunshine Valley';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Sunshine Valley' and dest.location_name = 'Rocky Road';

-- -----------------------------------------------------------------------------
-- Sunshine Valley <-> Farmlands
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '2', '3'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Sunshine Valley' and dest.location_name = 'Farmlands';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '2', '3'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Farmlands' and dest.location_name = 'Sunshine Valley';

-- -----------------------------------------------------------------------------
-- Sunshine Valley <-> Forestglade
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Sunshine Valley' and dest.location_name = 'Forestglade';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Forestglade' and dest.location_name = 'Sunshine Valley';

-- -----------------------------------------------------------------------------
-- Guapo Desert <-> Split Way
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '5', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Guapo Desert' and dest.location_name = 'Split Way';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '5', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Split Way' and dest.location_name = 'Guapo Desert';

-- -----------------------------------------------------------------------------
-- Split Way <-> Forsaken Plains
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '24', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Split Way' and dest.location_name = 'Forsaken Plains';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '24', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Forsaken Plains' and dest.location_name = 'Split Way';

-- -----------------------------------------------------------------------------
-- Forsaken Plains <-> Overhead Mountain
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '27', '5'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Forsaken Plains' and dest.location_name = 'Overhead Mountain';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '27', '5'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Overhead Mountain' and dest.location_name = 'Forsaken Plains';

-- -----------------------------------------------------------------------------
-- Overhead Mountain <-> Windhaven
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Overhead Mountain' and dest.location_name = 'Windhaven';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '27', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Windhaven' and dest.location_name = 'Overhead Mountain';

-- -----------------------------------------------------------------------------
-- Split Way <-> Lonely Road
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '6', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Split Way' and dest.location_name = 'Lonely Road';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '6', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Lonely Road' and dest.location_name = 'Split Way';

-- -----------------------------------------------------------------------------
-- Lonely Road <-> Dark Alley
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '7', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Lonely Road' and dest.location_name = 'Dark Alley';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '7', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Dark Alley' and dest.location_name = 'Lonely Road';

-- -----------------------------------------------------------------------------
-- Dark Alley <-> Blitzkreig
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Dark Alley' and dest.location_name = 'Blitzkreig';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '7', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Blitzkreig' and dest.location_name = 'Dark Alley';

-- -----------------------------------------------------------------------------
-- Blitzkreig <-> Graveyard
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '11', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Blitzkreig' and dest.location_name = 'Graveyard';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Graveyard' and dest.location_name = 'Blitzkreig';

-- -----------------------------------------------------------------------------
-- Graveyard <-> Skeletal Bottoms
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '12', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Graveyard' and dest.location_name = 'Skeletal Bottoms';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '12', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Skeletal Bottoms' and dest.location_name = 'Graveyard';

-- -----------------------------------------------------------------------------
-- Skeletal Bottoms <-> Solemn Byway
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '12', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Skeletal Bottoms' and dest.location_name = 'Solemn Byway';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '12', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Solemn Byway' and dest.location_name = 'Skeletal Bottoms';

-- -----------------------------------------------------------------------------
-- Solemn Byway <-> Twin Gates
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '11', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Solemn Byway' and dest.location_name = 'Twin Gates';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '11', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Twin Gates' and dest.location_name = 'Solemn Byway';

-- -----------------------------------------------------------------------------
-- Twin Gates <-> Forbidden Pass
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '9', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Twin Gates' and dest.location_name = 'Forbidden Pass';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '9', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Forbidden Pass' and dest.location_name = 'Twin Gates';

-- -----------------------------------------------------------------------------
-- Forbidden Pass <-> Giant Beaver Dam
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '8', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Forbidden Pass' and dest.location_name = 'Giant Beaver Dam';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '8', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Giant Beaver Dam' and dest.location_name = 'Forbidden Pass';

-- -----------------------------------------------------------------------------
-- Twin Gates <-> Frozen Wasteland
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '27', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Twin Gates' and dest.location_name = 'Frozen Wasteland';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '27', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Frozen Wasteland' and dest.location_name = 'Twin Gates';

-- -----------------------------------------------------------------------------
-- Frozen Wasteland <-> Deep Tundra
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '32', '5'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Frozen Wasteland' and dest.location_name = 'Deep Tundra';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '32', '5'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Deep Tundra' and dest.location_name = 'Frozen Wasteland';

-- -----------------------------------------------------------------------------
-- Deep Tundra <-> Frost Harbor
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Deep Tundra' and dest.location_name = 'Frost Harbor';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '32', '1'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Frost Harbor' and dest.location_name = 'Deep Tundra';
	
-- -----------------------------------------------------------------------------
-- Blitzkreig <-> Sunny Highway
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '27', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Blitzkreig' and dest.location_name = 'Sunny Highway';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '1', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Sunny Highway' and dest.location_name = 'Blitzkreig';
	
-- -----------------------------------------------------------------------------
-- Sunny Highway <-> Roundabout
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '29', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Sunny Highway' and dest.location_name = 'Roundabout';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '29', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Roundabout' and dest.location_name = 'Sunny Highway';
	
-- -----------------------------------------------------------------------------
-- Roundabout <-> Halfway Route
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '32', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Roundabout' and dest.location_name = 'Halfway Route';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '32', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Halfway Route' and dest.location_name = 'Roundabout';
	
-- -----------------------------------------------------------------------------
-- Halfway Route <-> Open Plains
-- -----------------------------------------------------------------------------
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '37', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Halfway Route' and dest.location_name = 'Open Plains';
INSERT INTO Travel (src_location_id, dest_location_id, travel_level, travel_cost) SELECT src.location_id, dest.location_id, '37', '2'
	FROM Locations src JOIN Locations dest WHERE src.location_name = 'Open Plains' and dest.location_name = 'Halfway Route';
