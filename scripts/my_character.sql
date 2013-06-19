-- create pianodev account
INSERT INTO Accounts (account_name, account_password, account_email, account_start_date)
    VALUES ('pianodev','80c34e41cb4a696e28da9be7b5c30db272616ac8','pianodev@gmail.com', '2012-01-01 11:59:00');

-- create Petoris hero
INSERT INTO Heroes (hero_name, hero_location, hero_birth)
    SELECT 'Petoris', location_id, '2012-01-01 12:00:00' FROM Locations WHERE location_name = 'Tutorial';

INSERT INTO Account_Heroes SELECT account_id, hero_id, TRUE
    FROM Accounts JOIN Heroes WHERE account_name = 'pianodev' and hero_name = 'Petoris';
    
-- Give Petoris the 3 starting Weapons
    
INSERT INTO Hero_Weapons SELECT hero_id, weapon_item_id, weapon_starting_level,
    '0', weapon_starting_strength, weapon_starting_magic, weapon_starting_max_condition,
    weapon_starting_max_condition, FALSE FROM Heroes JOIN Weapons WHERE hero_name = 'Petoris'
    AND weapon_item_id = (SELECT item_id FROM Items WHERE item_name = 'Iron Sword');
    
INSERT INTO Hero_Weapons SELECT hero_id, weapon_item_id, weapon_starting_level,
    '0', weapon_starting_strength, weapon_starting_magic, weapon_starting_max_condition,
    weapon_starting_max_condition, TRUE FROM Heroes JOIN Weapons WHERE hero_name = 'Petoris'
    AND weapon_item_id = (SELECT item_id FROM Items WHERE item_name = 'Elven Dagger');
    
INSERT INTO Hero_Weapons SELECT hero_id, weapon_item_id, weapon_starting_level,
    '0', weapon_starting_strength, weapon_starting_magic, weapon_starting_max_condition,
    weapon_starting_max_condition, FALSE FROM Heroes JOIN Weapons WHERE hero_name = 'Petoris'
    AND weapon_item_id = (SELECT item_id FROM Items WHERE item_name = 'Fireball');
    
-- Give Petoris the 3 starting Armors

INSERT INTO Hero_Armor SELECT hero_id, armor_item_id, armor_starting_level,
    '0', armor_starting_defense, armor_starting_barrier, armor_starting_max_condition,
    armor_starting_max_health, armor_starting_max_condition, armor_starting_max_health, FALSE
    FROM Heroes JOIN Armor WHERE hero_name = 'Petoris' AND armor_item_id =
    (SELECT item_id FROM Items WHERE item_name = 'Iron Armor');
    
INSERT INTO Hero_Armor SELECT hero_id, armor_item_id, armor_starting_level,
    '0', armor_starting_defense, armor_starting_barrier, armor_starting_max_condition,
    armor_starting_max_health, armor_starting_max_condition, armor_starting_max_health, TRUE
    FROM Heroes JOIN Armor WHERE hero_name = 'Petoris' AND armor_item_id =
    (SELECT item_id FROM Items WHERE item_name = 'Rock Armor');
    
INSERT INTO Hero_Armor SELECT hero_id, armor_item_id, armor_starting_level,
    '0', armor_starting_defense, armor_starting_barrier, armor_starting_max_condition,
    armor_starting_max_health, armor_starting_max_condition, armor_starting_max_health, FALSE
    FROM Heroes JOIN Armor WHERE hero_name = 'Petoris' AND armor_item_id =
    (SELECT item_id FROM Items WHERE item_name = 'Lightning Robes');
    
-- Give Petoris Items
INSERT INTO Hero_Inventory SELECT hero_id, item_id, '1' FROM Items JOIN Heroes
    WHERE item_name = 'Horn of the Unicorn' AND hero_name = 'Petoris';
    
INSERT INTO Hero_Inventory SELECT hero_id, item_id, '3' FROM Items JOIN Heroes
    WHERE item_name = 'Basic Health Potion' AND hero_name = 'Petoris';
    
INSERT INTO Hero_Inventory SELECT hero_id, item_id, '1' FROM Items JOIN Heroes
    WHERE item_name = 'Red Pander Soul' AND hero_name = 'Petoris';
    
INSERT INTO Hero_Inventory SELECT hero_id, item_id, '2' FROM Items JOIN Heroes
    WHERE item_name = 'Chicken Soul' AND hero_name = 'Petoris';
    
INSERT INTO Hero_Inventory SELECT hero_id, item_id, '1' FROM Items JOIN Heroes
    WHERE item_name = 'Graffe Soul' AND hero_name = 'Petoris';
    
INSERT INTO Hero_Inventory SELECT hero_id, item_id, '1' FROM Items JOIN Heroes
    WHERE item_name = 'Porker Soul' AND hero_name = 'Petoris';
