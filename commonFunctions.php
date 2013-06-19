<?php

/******************************************************************************
 * Set session variables
 *****************************************************************************/
function set_session_variables($hero_name) {
    // Get hero information
    $result = mysql_query("SELECT * FROM Heroes JOIN Locations ON (location_id = hero_location)
        WHERE hero_id IN (SELECT AH_hero_id FROM Account_Heroes WHERE active_hero = TRUE
        AND AH_account_id = (SELECT account_id FROM Accounts WHERE account_name = '$_SESSION[account_name]') )");
    $row = mysql_fetch_array($result);
    
    // Apply the session variables
    $_SESSION['hero_name'] = $row['hero_name'];
    $_SESSION['hero_level'] = $row['hero_level'];
    $_SESSION['hero_experience'] = $row['hero_experience'];
    $_SESSION['skill_points'] = $row['hero_skill_points'];
    $_SESSION['tokens'] = $row['hero_tokens'];
    $_SESSION['moolah'] = $row['hero_moolah'];   
    $_SESSION['location'] = $row['location_name'];
    
    // Get the experience needed for the next level
    get_hero_next_level();
    
    // Get the starting weapon for this hero
    $result = mysql_query("SELECT * FROM Heroes JOIN Hero_Weapons ON (hero_id = HW_hero_id)
        JOIN Weapons ON (HW_item_id = weapon_item_id) JOIN Items ON (HW_item_id = item_id)
        JOIN Elements ON (weapon_element = element_id) WHERE hero_name = '$_SESSION[hero_name]'
        AND active_weapon = TRUE");
    $row = mysql_fetch_array($result);
        
    // Apply its stats to the session variables
    $_SESSION['weapon_name'] = $row['item_name'];
    $_SESSION['weapon_level'] = $row['weapon_level'];
    $_SESSION['weapon_experience'] = $row['weapon_experience'];
    $_SESSION['weapon_element'] = $row['element_name'];
    $_SESSION['strength'] = $row['weapon_strength'];
    $_SESSION['magic'] = $row['weapon_magic'];
    $_SESSION['weapon_max_condition'] = $row['weapon_max_condition'];
    $_SESSION['weapon_condition'] = $row['weapon_condition'];
    
    // Get the starting armor for this hero
    $result = mysql_query("SELECT * FROM Heroes JOIN Hero_Armor ON (hero_id = HA_hero_id)
        JOIN Armor ON (HA_item_id = armor_item_id) JOIN Items ON (HA_item_id = item_id)
        JOIN Elements ON (armor_element = element_id) WHERE hero_name = '$_SESSION[hero_name]'
        AND active_armor = TRUE");
    $row = mysql_fetch_array($result);
        
    // Apply its stats to the session variables
    $_SESSION['armor_name'] = $row['item_name'];
    $_SESSION['armor_level'] = $row['armor_level'];
    $_SESSION['armor_experience'] = $row['armor_experience'];
    $_SESSION['armor_element'] = $row['element_name'];
    $_SESSION['defense'] = $row['armor_defense'];
    $_SESSION['barrier'] = $row['armor_barrier'];
    $_SESSION['max_health'] = $row['armor_max_health'];
    $_SESSION['health'] = $row['armor_health'];
    $_SESSION['armor_max_condition'] = $row['armor_max_condition'];
    $_SESSION['armor_condition'] = $row['armor_condition'];
}

/******************************************************************************
 * Test if an account has multiple heroes
 *****************************************************************************/
function account_has_multiple_heroes() {
    // Set initial value to false
    $multiple = false;
       
    // Find the number of live heroes on this account
    $result = mysql_query("SELECT COUNT(hero_name) as num FROM Heroes WHERE hero_is_alive = TRUE and
        hero_id IN (SELECT AH_hero_id as num FROM Account_Heroes WHERE AH_account_id =
        (SELECT account_id FROM Accounts where account_name = '$_SESSION[account_name]') )");
    $row = mysql_fetch_array($result);
    
    // If it's 2 or more, set to true
    if( $row['num'] >= 2 ) {
        $multiple = true;
    }
    
    // return
    return $multiple;
}

/******************************************************************************
 * Test if a hero has multiple weapons
 *****************************************************************************/
function hero_has_multiple_weapons() {
    // Set initial value to false
    $multiple = false;
    
    // Count the number of Weapons for this Hero
    $result = mysql_query("SELECT COUNT(HW_item_id) as num FROM Hero_Weapons
        JOIN Heroes ON (HW_hero_id = hero_id) WHERE hero_name = '$_SESSION[hero_name]'");
    $row = mysql_fetch_array($result);
    
    // If it's 2 or more, set to true
    if( $row['num'] >= 2 ) {
        $multiple = true;
    }
    
    // return
    return $multiple;
}

/******************************************************************************
 * Test if a hero has multiple armors
 *****************************************************************************/
function hero_has_multiple_armors() {
    // Start session and setup database
    session_start();
    $con = mysql_connect("localhost","devinfa1_user","dbpass");
    if (!$con) { die('Could not connect: ' . mysql_error()); }
    mysql_select_db("devinfa1_spellsword", $con);
    
    $multiple = false;
    
    // Count the number of armors for this Hero
    $result = mysql_query("SELECT COUNT(HA_item_id) as num FROM Hero_Armor
        JOIN Heroes ON (HA_hero_id = hero_id) WHERE hero_name = '$_SESSION[hero_name]'");
    $row = mysql_fetch_array($result);
    
    // If it's 2 or more, set to true
    if( $row['num'] >= 2 ) {
        $multiple = true;
    }
    
    // return
    return $multiple;
}

/******************************************************************************
 * Add a given weapon to a given hero
 *****************************************************************************/
function add_weapon_to_hero($hero, $weapon, $active) {   
    // Add the weapon to the hero
    mysql_query("INSERT INTO Hero_Weapons SELECT hero_id, weapon_item_id, weapon_starting_level,
                '0', weapon_starting_strength, weapon_starting_magic, weapon_starting_max_condition,
                weapon_starting_max_condition, $active FROM Heroes JOIN Weapons WHERE hero_name = '$hero'
                AND weapon_item_id = (SELECT item_id FROM Items WHERE item_name = '$weapon')");
}
 
/******************************************************************************
 * Add a given armor to a given hero
 *****************************************************************************/
function add_armor_to_hero($hero, $armor, $active) {  
    // Add the armor to the hero
    mysql_query("INSERT INTO Hero_Armor SELECT hero_id, armor_item_id, armor_starting_level,
        '0', armor_starting_defense, armor_starting_barrier, armor_starting_max_condition,
        armor_starting_max_health, armor_starting_max_condition, armor_starting_max_health, $active
        FROM Heroes JOIN Armor WHERE hero_name = '$hero' AND armor_item_id =
        (SELECT item_id FROM Items WHERE item_name = '$armor')");
}

/******************************************************************************
 * Show the stats of a given starting weapon
 *****************************************************************************/
function show_starting_weapon_stats($weapon) {
    // Get the weapon with the name input
    $result = mysql_query("SELECT * FROM Weapons JOIN Items ON (weapon_item_id = item_id)
        JOIN Elements ON (weapon_element = element_id) WHERE item_name = '$weapon'");
    $row = mysql_fetch_array($result);
        
    // Apply output its stats
    $output = "Starting Level: " . $row['weapon_starting_level'] .
        "<br />Element: " . $row['element_name'] .
        "<br />Starting Strength: " . $row['weapon_starting_strength'] .
        "<br />Starting Magic: " . $row['weapon_starting_magic'] .
        "<br />Starting Condition: " . $row['weapon_starting_max_condition'] .
        "<br />Weapon Description: " . $row['item_description'];
    
    return $output;
}

/******************************************************************************
 * Show the stats of a given starting armor
 *****************************************************************************/
function show_starting_armor_stats($armor) {
    // Get the armor with the name input
    $result = mysql_query("SELECT * FROM Armor JOIN Items ON (armor_item_id = item_id)
        JOIN Elements ON (armor_element = element_id) WHERE item_name = '$armor'");
    $row = mysql_fetch_array($result);
        
    // Apply output its stats
    $output = "Starting Level: " . $row['armor_starting_level'] .
        "<br />Element: " . $row['element_name'] .
        "<br />Starting Defense: " . $row['armor_starting_defense'] .
        "<br />Starting Barrier: " . $row['armor_starting_barrier'] .
        "<br />Starting HP: " . $row['armor_starting_max_health'] .
        "<br />Starting Condition: " . $row['armor_starting_max_condition'] .
        "<br />Weapon Description: " . $row['item_description'];
    
    return $output;
}

/******************************************************************************
 * Show the stats of a given weapon
 *****************************************************************************/
function show_weapon_stats($weapon) {
    // Get the weapon with the name input
    $result = mysql_query("SELECT * FROM Heroes JOIN Hero_Weapons ON (hero_id = HW_hero_id)
        JOIN Weapons ON (HW_item_id = weapon_item_id) JOIN Items ON (HW_item_id = item_id)
        JOIN Elements ON (weapon_element = element_id) WHERE hero_name = '$_SESSION[hero_name]'
        AND item_name = '$weapon'");
    $row = mysql_fetch_array($result);
        
    // Apply output its stats
    $output = "Level: " . $row['weapon_level'] .
        "<br />Experience: " . $row['weapon_experience'] .
        "<br />Element: " . $row['element_name'] .
        "<br />Strength: " . $row['weapon_strength'] .
        "<br />Magic: " . $row['weapon_magic'] .
        "<br />Condition: " . $row['weapon_condition'] .
        "<br />Max Condition: " . $row['weapon_max_condition'] .
        "<br />Weapon Description: " . $row['item_description'];
    
    return $output;
}

/******************************************************************************
 * Show the stats of a given armor
 *****************************************************************************/
function show_armor_stats($armor) {
    // Get the armor with the name input
    $result = mysql_query("SELECT * FROM Heroes JOIN Hero_Armor ON (hero_id = HA_hero_id)
        JOIN Armor ON (HA_item_id = armor_item_id) JOIN Items ON (HA_item_id = item_id)
        JOIN Elements ON (armor_element = element_id) WHERE hero_name = '$_SESSION[hero_name]'
        AND item_name = '$armor'");
    $row = mysql_fetch_array($result);
        
    // Apply output its stats
    $output = "Level: " . $row['armor_level'] .
        "<br />Experience: " . $row['armor_experience'] .
        "<br />Element: " . $row['element_name'] .
        "<br />Defense: " . $row['armor_defense'] .
        "<br />Barrier: " . $row['armor_barrier'] .
        "<br />Health: " . $row['armor_health'] .
        "<br />Max Health: " . $row['armor_max_health'] .
        "<br />Condition: " . $row['armor_condition'] .
        "<br />Max Condition: " . $row['armor_max_condition'] .
        "<br />Armor Description: " . $row['item_description'];
    
    return $output;
}

/******************************************************************************
 * Get the type of location passed in
 *****************************************************************************/
function get_location_type($location) {
    // Get the armor with the name input
    $result = mysql_query("SELECT location_type_name FROM Locations JOIN Location_Types
        ON (location_type = location_type_id) where location_name = '$location'");
    $row = mysql_fetch_array($result);
    
    return $row['location_type_name'];
}

/******************************************************************************
 * See if the hero needs a level update. If so, level him up and return true.
 * Otherwise return false.
 *****************************************************************************/
function update_hero_level() {    
    // If the hero is the max level, return false
    if( $_SESSION['hero_level'] >= $_SESSION['max_level'] ) {
        return false;
    }
    
    // Get the experience table
    $result = mysql_query("SELECT * FROM Hero_Experience");
    while ($row = mysql_fetch_array($result)) {
        // Find the hero's current level
        if($_SESSION['hero_level'] == $row['level_from']) {
            // If he has enough experience to level up, do so and return true
            if($_SESSION['hero_experience'] >= $row['experience_needed']) {
                level_up_hero();
                return true;
            }
            // Otherwise return false
            else {
                return false;
            }            
        }
    }
}

/******************************************************************************
 * Helper function to increase the hero's level by one
 *****************************************************************************/
function level_up_hero() {   
    // Increase the level by one
    $_SESSION['hero_level']++;
    mysql_query("UPDATE Heroes SET hero_level = '$_SESSION[hero_level]' WHERE hero_name = '$_SESSION[hero_name]'");
    
    // Add one skill point
    $_SESSION['skill_points']++;
    mysql_query("UPDATE Heroes SET hero_skill_points = '$_SESSION[skill_points]' WHERE hero_name = '$_SESSION[hero_name]'");
    
    // Get the experience needed for the next level
    get_hero_next_level();
}

/******************************************************************************
 * Helper function to get the experience needed for next hero level
 *****************************************************************************/
function get_hero_next_level() {  
    // Get the experience table
    $result = mysql_query("SELECT * FROM Hero_Experience");
    while ($row = mysql_fetch_array($result)) {
        // Find the hero's current level
        if($_SESSION['hero_level'] == $row['level_from']) {
            $_SESSION['hero_next_level'] = $row['experience_needed'];
        }
    }
}

/******************************************************************************
 * Get the number of tokens the hero currently has
 *****************************************************************************/
function calculate_tokens() {
    // Get the birth time from 
    $result = mysql_query("SELECT hero_birth FROM Heroes WHERE hero_name = '$_SESSION[hero_name]'");
    $row = mysql_fetch_array($result);
    $birth = strtotime($row['hero_birth']);

    // Find the number of total number of tokens the hero qualifies for
    $total = floor((time() - $birth) / 3600 / 4) + 5;
    
    // Find the number the hero has spent
    $result = mysql_query("SELECT hero_tokens_spent FROM Heroes WHERE hero_name = '$_SESSION[hero_name]'");
    $row = mysql_fetch_array($result);
    
    // Calculate the number of tokens the hero has
    $_SESSION['tokens'] = $total - $row['hero_tokens_spent'];
    
    // Update it in the database
    mysql_query("UPDATE Heroes SET hero_tokens = '$_SESSION[tokens]' WHERE hero_name = '$_SESSION[hero_name]'");
}

/******************************************************************************
 * Helper function to see if the hero has anything in his inventory
 *****************************************************************************/
function hero_has_inventory() {  
    // Start session and setup database
    session_start();
    $con = mysql_connect("localhost","devinfa1_user","dbpass");
    if (!$con) { die('Could not connect: ' . mysql_error()); }
    mysql_select_db("devinfa1_spellsword", $con);
    
    $multiple = false;
    
    // Count the number of items for this Hero
    $result = mysql_query("SELECT COUNT(HI_item_id) as num FROM Hero_Inventory
        JOIN Heroes ON (HI_hero_id = hero_id) WHERE hero_name = '$_SESSION[hero_name]'");
    $row = mysql_fetch_array($result);
    
    // If it's more than 0, set to true
    if( $row['num'] > 0 ) {
        $multiple = true;
    }
    
    // return
    return $multiple;
}

?>