<?php
    // Start the session and connect to the database
    session_start();
    $con = mysql_connect("localhost","devinfa1_user","dbpass");
    if (!$con) { die('Could not connect: ' . mysql_error()); }
    mysql_select_db("devinfa1_spellsword", $con);   
    
    // Get the list of enemies at this location
    $numEnemies = 0;
    $result = mysql_query("SELECT enemy_name, enemy_probability from Enemies JOIN Enemy_Locations on (enemy_id = EL_enemy_id)
        JOIN Locations ON (EL_location_id = location_id) WHERE location_name = '$_SESSION[location]' AND enemy_is_boss = FALSE");
    while ($row = mysql_fetch_array($result)) {
        $enemies[$numEnemies] = $row['enemy_name'];
        $probability[$numEnemies] = $row['enemy_probability'];
        $numEnemies++;
    }
    
    // Set up the probability chart
    $totalProb = 0;
    for($i = 0; $i < $numEnemies; $i++) {
        for($j = 0; $j < $probability[$i]; $j++) {
            $enemyProb[$totalProb] = $enemies[$i];
            $totalProb++;
        }
    }
    
    // Choose the enemy
    srand(floor(time()));
    $chosen = rand(0, $totalProb-1);
    $_SESSION['enemy_name'] = $enemyProb[$chosen];
    
    // Get enemy information
    $result = mysql_query("SELECT * from Enemies JOIN Elements ON (enemy_element = element_id) WHERE enemy_name = '$_SESSION[enemy_name]'");
    $row = mysql_fetch_array($result);
    
    // Set up session variables for the enemy
    $_SESSION['enemy_level'] = $row['enemy_level'];
    $_SESSION['enemy_element'] = $row['element_name'];
    $_SESSION['enemy_strength'] = $row['enemy_strength'];
    $_SESSION['enemy_magic'] = $row['enemy_magic'];
    $_SESSION['enemy_defense'] = $row['enemy_defense'];
    $_SESSION['enemy_barrier'] = $row['enemy_barrier'];
    $_SESSION['enemy_health'] = $row['enemy_max_health'];
    $_SESSION['enemy_max_health'] = $row['enemy_max_health'];
    
    // Close the database connection
    mysql_close($con);
    
    // Start the battle
    $_SESSION['battle_stage'] = 'player_start';
    header('Location: battle.php');
?>
