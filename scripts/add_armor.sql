-- *****************************************************************************
-- * Add Armor
-- *****************************************************************************

-- -----------------------------------------------------------------------------
-- Starting
-- -----------------------------------------------------------------------------

INSERT INTO Items (item_name, item_description) VALUES ('Iron Armor', 'Basic, Non-elemental Armor');
INSERT INTO Armor (armor_item_id, armor_element, armor_starting_level, armor_starting_defense, armor_starting_barrier, armor_starting_max_condition, armor_starting_max_health)
    SELECT item_id, element_id, '1', '2', '0', '5', '20' FROM Items JOIN Elements WHERE item_name = 'Iron Armor' and element_name = 'Non-Elemental';

INSERT INTO Items (item_name, item_description) VALUES ('Lightning Robes', 'Robes with a small electric barrier');
INSERT INTO Armor (armor_item_id, armor_element, armor_starting_level, armor_starting_defense, armor_starting_barrier, armor_starting_max_condition, armor_starting_max_health)
    SELECT item_id, element_id, '1', '0', '2', '5', '20' FROM Items JOIN Elements WHERE item_name = 'Lightning Robes' and element_name = 'Electric';

INSERT INTO Items (item_name, item_description) VALUES ('Rock Armor', 'Armor that blocks both earth and physical damage');
INSERT INTO Armor (armor_item_id, armor_element, armor_starting_level, armor_starting_defense, armor_starting_barrier, armor_starting_max_condition, armor_starting_max_health)
    SELECT item_id, element_id, '1', '1', '1', '5', '20' FROM Items JOIN Elements WHERE item_name = 'Rock Armor' and element_name = 'Earth';

-- -----------------------------------------------------------------------------
-- Need More Armor
-- -----------------------------------------------------------------------------
