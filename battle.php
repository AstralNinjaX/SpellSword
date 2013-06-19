<?php
    // Get commonFunctions.php
    require_once('commonFunctions.php');
    
    // Start the session and connect to the database
    session_start();
    $con = mysql_connect("localhost","devinfa1_user","dbpass");
    if (!$con) { die('Could not connect: ' . mysql_error()); }
    mysql_select_db("devinfa1_spellsword", $con); 
    
    // If not in a battle location, go back to game
    if(get_location_type($_SESSION['location']) != 'Wild' && get_location_type($_SESSION['location']) != 'Boss') {
        unset($_SESSION['battle_stage']);
        header('Location: createHero.php');
        exit();
    }

    // Go to init page
    if($_SESSION['battle_stage'] == 'init') {
        header('Location: battle_init.php');
    }
    
    // Go to start of player's turn
    if($_SESSION['battle_stage'] == 'player_start') {
        header('Location: battle_player_start.php');
    }
    
    // Go to end of player's turn
    if($_SESSION['battle_stage'] == 'player_end') {
        header('Location: battle_player_end.php');
    }
    
    // Go to enemy's turn
    if($_SESSION['battle_stage'] == 'enemy') {
        header('Location: battle_enemy.php');
    }
    
    // Go to end of battle
    if($_SESSION['battle_stage'] == 'finish') {
        header('Location: battle_finish.php');
    }
    
    // Close the database connection
    mysql_close($con);
?>
