-- *****************************************************************************
-- * Add Weapons
-- *****************************************************************************

-- -----------------------------------------------------------------------------
-- Starting
-- -----------------------------------------------------------------------------

INSERT INTO Items (item_name, item_description) VALUES ('Iron Sword', 'Basic, Non-elemental Blade');
INSERT INTO Weapons (weapon_item_id, weapon_element, weapon_starting_level, weapon_starting_strength, weapon_starting_magic, weapon_starting_max_condition)
    SELECT item_id, element_id, '1', '2', '0', '25' FROM Items JOIN Elements WHERE item_name = 'Iron Sword' and element_name = 'Non-Elemental';
    
INSERT INTO Items (item_name, item_description) VALUES ('Fireball', 'Basic old fireball spell');
INSERT INTO Weapons (weapon_item_id, weapon_element, weapon_starting_level, weapon_starting_strength, weapon_starting_magic, weapon_starting_max_condition)
    SELECT item_id, element_id, '1', '0', '2', '25' FROM Items JOIN Elements WHERE item_name = 'Fireball' and element_name = 'Fire';

INSERT INTO Items (item_name, item_description) VALUES ('Elven Dagger', 'Causes physical and magic damage');
INSERT INTO Weapons (weapon_item_id, weapon_element, weapon_starting_level, weapon_starting_strength, weapon_starting_magic, weapon_starting_max_condition)
    SELECT item_id, element_id, '1', '1', '1', '25' FROM Items JOIN Elements WHERE item_name = 'Elven Dagger' and element_name = 'Shadow';

-- -----------------------------------------------------------------------------
-- Level 1
-- -----------------------------------------------------------------------------

INSERT INTO Items (item_name, item_description) VALUES ('Shine', 'Shines a bright and burning light');
INSERT INTO Weapons (weapon_item_id, weapon_element, weapon_starting_level, weapon_starting_strength, weapon_starting_magic, weapon_starting_max_condition)
    SELECT item_id, element_id, '1', '0', '2', '15' FROM Items JOIN Elements WHERE item_name = 'Shine' and element_name = 'Light';
    
-- -----------------------------------------------------------------------------
-- Level 2
-- -----------------------------------------------------------------------------

INSERT INTO Items (item_name, item_description) VALUES ('Mini-Torrent', 'Sends a small wave hurling towards the opponent');
INSERT INTO Weapons (weapon_item_id, weapon_element, weapon_starting_level, weapon_starting_strength, weapon_starting_magic, weapon_starting_max_condition)
    SELECT item_id, element_id, '2', '0', '3', '15' FROM Items JOIN Elements WHERE item_name = 'Mini-Torrent' and element_name = 'Water';

INSERT INTO Items (item_name, item_description) VALUES ('Whispering Blade', 'Can command small currents of air');
INSERT INTO Weapons (weapon_item_id, weapon_element, weapon_starting_level, weapon_starting_strength, weapon_starting_magic, weapon_starting_max_condition)
    SELECT item_id, element_id, '2', '2', '1', '15' FROM Items JOIN Elements WHERE item_name = 'Whispering Blade' and element_name = 'Wind';    

INSERT INTO Items (item_name, item_description) VALUES ('Heavy Axe', 'A bulky axe, almost weighs too much to be practical');
INSERT INTO Weapons (weapon_item_id, weapon_element, weapon_starting_level, weapon_starting_strength, weapon_starting_magic, weapon_starting_max_condition)
    SELECT item_id, element_id, '2', '3', '0', '15' FROM Items JOIN Elements WHERE item_name = 'Heavy Axe' and element_name = 'Non-Elemental';
    
INSERT INTO Items (item_name, item_description) VALUES ('Mind Bow', 'Shoots psychic arrows');
INSERT INTO Weapons (weapon_item_id, weapon_element, weapon_starting_level, weapon_starting_strength, weapon_starting_magic, weapon_starting_max_condition)
    SELECT item_id, element_id, '2', '1', '2', '15' FROM Items JOIN Elements WHERE item_name = 'Mind Bow' and element_name = 'Astral';
    
INSERT INTO Items (item_name, item_description) VALUES ('Sizzling Mace', 'A crackling mace that has a slight charge to it');
INSERT INTO Weapons (weapon_item_id, weapon_element, weapon_starting_level, weapon_starting_strength, weapon_starting_magic, weapon_starting_max_condition)
    SELECT item_id, element_id, '2', '2', '1', '15' FROM Items JOIN Elements WHERE item_name = 'Sizzling Mace' and element_name = 'Electric';
    
INSERT INTO Items (item_name, item_description) VALUES ('Poisoned Dagger', 'Was once drawn from a poisoned apple');
INSERT INTO Weapons (weapon_item_id, weapon_element, weapon_starting_level, weapon_starting_strength, weapon_starting_magic, weapon_starting_max_condition)
    SELECT item_id, element_id, '2', '1', '2', '15' FROM Items JOIN Elements WHERE item_name = 'Poisoned Dagger' and element_name = 'Poison';

-- -----------------------------------------------------------------------------
-- Level 3
-- -----------------------------------------------------------------------------
    
INSERT INTO Items (item_name, item_description) VALUES ('Frozen Scythe', 'Found on the corpse of a farmer after a blizzard');
INSERT INTO Weapons (weapon_item_id, weapon_element, weapon_starting_level, weapon_starting_strength, weapon_starting_magic, weapon_starting_max_condition)
    SELECT item_id, element_id, '3', '2', '2', '15' FROM Items JOIN Elements WHERE item_name = 'Frozen Scythe' and element_name = 'Frost';

INSERT INTO Items (item_name, item_description) VALUES ('Morning Star', 'Mace that shines brightly in darkness');
INSERT INTO Weapons (weapon_item_id, weapon_element, weapon_starting_level, weapon_starting_strength, weapon_starting_magic, weapon_starting_max_condition)
    SELECT item_id, element_id, '3', '3', '1', '15' FROM Items JOIN Elements WHERE item_name = 'Morning Star' and element_name = 'Light';