<?php
    // Start the session and connect to the database
    session_start();
    $con = mysql_connect("localhost","devinfa1_user","dbpass");
    if (!$con) { die('Could not connect: ' . mysql_error()); }
    mysql_select_db("devinfa1_spellsword", $con);   
    
    // If the hero won the battle
    if($_SESSION['hero_is_winner'] == TRUE) {
    
    }
    
    // If the hero lost
    else {
    
    }
    
    // Unset session variables
    unset($_SESSION['hero_is_winner']);
    unset($_SESSION['enemy_level']);
    unset($_SESSION['enemy_element']);
    unset($_SESSION['enemy_strength']);
    unset($_SESSION['enemy_magic']);
    unset($_SESSION['enemy_defense']);
    unset($_SESSION['enemy_barrier']);
    unset($_SESSION['enemy_health']);
    unset($_SESSION['enemy_max_health']);
    
    // Close the database connection
    header('Location: game.php');
    mysql_close($con);
?>
