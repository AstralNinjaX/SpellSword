<?php
    // Get commonFunctions.php
    require_once('commonFunctions.php');
    
    // Start the session and connect to the database
    session_start();
    $con = mysql_connect("localhost","devinfa1_user","dbpass");
    if (!$con) { die('Could not connect: ' . mysql_error()); }
    mysql_select_db("devinfa1_spellsword", $con);   
    
    // If logged in
    if(isset($_SESSION['account_name'])) {
        // If form is submitted
        if(isset($_POST['submit']) || isset($_POST['submit_x'])) {
        
            // If the hero has more than one weapon
            if(hero_has_multiple_weapons()) {
                // Unset previous weapon
                if(isset($_SESSION['hero_name'])) {
                    mysql_query("UPDATE Hero_Weapons SET active_weapon = FALSE WHERE HW_hero_id =
                        (SELECT hero_id FROM Heroes WHERE hero_name = '$_SESSION[hero_name]')
                        AND HW_item_id = (SELECT item_id FROM Items WHERE item_name = '$_SESSION[weapon_name]')");
                }
            
                // Set new weapon
                mysql_query("UPDATE Hero_Weapons SET active_weapon = TRUE WHERE HW_hero_id =
                    (SELECT hero_id FROM Heroes WHERE hero_name = '$_SESSION[hero_name]')
                    AND HW_item_id = (SELECT item_id FROM Items WHERE item_name = '$_POST[weapon]')");
            }
            
            // If the hero has more than one armor
            if(hero_has_multiple_armors()) {
                // Unset previous armor
                if(isset($_SESSION['hero_name'])) {
                    mysql_query("UPDATE Hero_Armor SET active_armor = FALSE WHERE HA_hero_id =
                        (SELECT hero_id FROM Heroes WHERE hero_name = '$_SESSION[hero_name]')
                        AND HA_item_id = (SELECT item_id FROM Items WHERE item_name = '$_SESSION[armor_name]')");
                }
            
                // Set new armor
                mysql_query("UPDATE Hero_Armor SET active_armor = TRUE WHERE HA_hero_id =
                    (SELECT hero_id FROM Heroes WHERE hero_name = '$_SESSION[hero_name]')
                    AND HA_item_id = (SELECT item_id FROM Items WHERE item_name = '$_POST[armor]')");
            }
            
            // Change the session variables to agree with this data
            set_session_variables($_SESSION['hero_name']);

            // Re-route to game
            header('Location: game.php');
            
        }
        // If you came strait to this page, run a query to find all heroes for this account
        else {
            // Set count variables
            $wcount = 0;
            $acount = 0;
            // Run the queries
            $wresult = mysql_query("SELECT * FROM Hero_Weapons JOIN Items ON (HW_item_id = item_id)
                WHERE HW_hero_id = (SELECT hero_id FROM Heroes WHERE hero_name = '$_SESSION[hero_name]')
                AND weapon_condition > 0");
            
            while ($row = mysql_fetch_array($wresult)) {
                $wnames[$wcount] = $row['item_name'];
                $wstats[ $row['item_name'] ] = show_weapon_stats($row['item_name']);
                $wcount++;
            }
    
            $aresult = mysql_query("SELECT * FROM Hero_Armor JOIN Items ON (HA_item_id = item_id)
                WHERE HA_hero_id = (SELECT hero_id FROM Heroes WHERE hero_name = '$_SESSION[hero_name]')
                AND armor_condition > 0");
                
            while ($row = mysql_fetch_array($aresult)) {
                $anames[$acount] = $row['item_name'];
                $astats[ $row['item_name'] ] = show_armor_stats($row['item_name']);
                $acount++;
            }
        }
    }
    // If not logged in, go to index page
    else {
        $_SESSION['message'] = 'You must be logged in to do this.';
        header('Location: index.php');
    }
    // Close the database connection
    mysql_close($con);
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <title>SpellSword</title>
    <link href="http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="style/style.css">
    <script src="gen_validatorv4.js" type="text/javascript"></script>
</head>

<body>
    <div id="bg">
        <div id="outer">
            <div id="header">
                <div id="logo">
                    <h1>
                        <p>SpellSword</p>
                    </h1>
                </div>
                <div id="nav">
                    <ul>
                        <li class="first active">
                            <a href="game.php">Cancel</a>
                        </li>
                        <li class="last">
                            <a href="logout.php">Log Out</a>
                        </li>
                    </ul>
                    <br class="clear"></div>
                </div>
        <div id="main">
			<form id="mainform" action="changeEquipment.php" method="post">
                <div class="row">
                <div class="twocol"><?php
                    if($wcount > 1) {
                        echo("<h2>Weapon</h2>");
                        for($w = 0; $w < $wcount; $w++) {
                            echo("<input type='radio' name='weapon' value='$wnames[$w]' />$wnames[$w]<br />");
                        }
                        echo("<br />");
                    }
                ?>
                <input name="submit" type="submit" value="submit"></input>
                </div>
                <div class="twocol"><?php
                    if($acount > 1) {
                        echo("<h2>Armor</h2>");
                        for($a = 0; $a < $acount; $a++) {
                            echo("<input type='radio' name='armor' value='$anames[$a]' />$anames[$a]<br />");
                        }
                        echo("<br />");
                    }
                ?></div>
                <div class="fourcol"><?php
                    if($wcount > 1) {
                        echo("<h2>Weapons</h2>");
                        for($w = 0; $w < $wcount; $w++) {
                            echo("<h3>$wnames[$w]</h3>");
                            echo($wstats[ $wnames[$w] ]);
                            echo("<br /><br />");
                        }
                    }
                ?></div>
                <div class="fourcol last"><?php
                    if($acount > 1) {
                        echo("<h2>Armor</h2>");
                        for($a = 0; $a < $acount; $a++) {
                            echo("<h3>$anames[$a]</h3>");
                            echo($astats[ $anames[$a] ]);
                            echo("<br /><br />");
                        }
                    }
                ?></div></div>
			</form>
            <script  type="text/javascript">
                var frmvalidator = new Validator("mainform");
                frmvalidator.addValidation("weapon","selone_radio","Please choose a weapon.");
                frmvalidator.addValidation("armor","selone_radio","Please choose an armor.");
            </script>
			
        <br class="clear"></div>
        <div id="copyright">
            &copy Devin Falgoust | Template Design by: <a href="http://nodethirtythree.com">nodethirtythree</a> + <a href="http://templated.org/">Templated.org</a>
        </div>
    </div>
</body>
    
</html>