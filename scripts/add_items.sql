-- *****************************************************************************
-- * Add Item Effects
-- *****************************************************************************

INSERT INTO Effects (effect_name, effect_description) VALUES
    ('Restore Health', 'Restores HP to the currently equipped armor.'),
    ('Repair Weapon', 'Restores the condition of the currently equipped weapon.'),
    ('Repair Armor', 'Restores the condition of the currently equipped armor.'),
    ('Add Moolah', 'Adds moolah to the current hero.'),
    ('Add Tokens', 'Adds travel tokens to the current hero.'),
    ('Add Skill Points', 'Adds skill points to the current hero.'),
    ('Add Experience', 'Adds experience to the current hero.'),
    ('Reset Weapon Skill', 'Reset weapon skill to default, giving excess back to the hero.'),
    ('Reset Armor Skill', 'Reset armor skill to default, giving excess back to the hero.');

-- *****************************************************************************
-- * Add Usable Item
-- *****************************************************************************

INSERT INTO Items (item_name, item_description) VALUES ('Basic Health Potion', 'Restores the health of an armor by 3');
INSERT INTO Usable_Items SELECT item_id, '1', '3', effect_id, TRUE FROM Items JOIN Effects
    WHERE item_name = 'Basic Health Potion' and effect_name = 'Restore Health';

-- *****************************************************************************
-- * Add Random Items
-- *****************************************************************************

INSERT INTO Items (item_name, item_description) VALUES
    ('Horn of the Unicorn', 'Hard to describe.');

-- *****************************************************************************
-- * Add Items to Shops
-- *****************************************************************************

INSERT INTO Shop_Items SELECT location_id, item_id, '10' FROM Locations JOIN Items WHERE location_name = 'Forestglade' AND item_name = 'Basic Health Potion';