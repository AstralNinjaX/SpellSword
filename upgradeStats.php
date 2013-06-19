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
        // If form has been submitted
        if(isset($_POST['submit']) || isset($_POST['submit_x'])) {
            // If the player chose strength
            if($_POST['stat'] == 'str') {
                $new = $_SESSION['strength'] + 1;
                mysql_query("UPDATE Hero_Weapons SET weapon_strength = '$new' WHERE HW_hero_id =
                        (SELECT hero_id FROM Heroes WHERE hero_name = '$_SESSION[hero_name]')
                        AND HW_item_id = (SELECT item_id FROM Items WHERE item_name = '$_SESSION[weapon_name]')");
            }
            // If the player chose magic
            else if($_POST['stat'] == 'mag') {
                $new = $_SESSION['magic'] + 1;
                mysql_query("UPDATE Hero_Weapons SET weapon_magic = '$new' WHERE HW_hero_id =
                        (SELECT hero_id FROM Heroes WHERE hero_name = '$_SESSION[hero_name]')
                        AND HW_item_id = (SELECT item_id FROM Items WHERE item_name = '$_SESSION[weapon_name]')");
            }
            // If the player chose defense
            else if($_POST['stat'] == 'def') {
                $new = $_SESSION['defense'] + 1;
                mysql_query("UPDATE Hero_Armor SET armor_defense = '$new' WHERE HA_hero_id =
                        (SELECT hero_id FROM Heroes WHERE hero_name = '$_SESSION[hero_name]')
                        AND HA_item_id = (SELECT item_id FROM Items WHERE item_name = '$_SESSION[armor_name]')");
            }
            // If the player chose barrier
            else if($_POST['stat'] == 'bar') {
                $new = $_SESSION['barrier'] + 1;
                mysql_query("UPDATE Hero_Armor SET armor_barrier = '$new' WHERE HA_hero_id =
                            (SELECT hero_id FROM Heroes WHERE hero_name = '$_SESSION[hero_name]')
                            AND HA_item_id = (SELECT item_id FROM Items WHERE item_name = '$_SESSION[armor_name]')");
            }
            // If the player chose max hp
            else if($_POST['stat'] == 'hp') {
                $newMax = $_SESSION['max_health'] + 5;
                $newCur = $_SESSION['health'] + 5;
                mysql_query("UPDATE Hero_Armor SET armor_max_health = '$newMax' WHERE HA_hero_id =
                            (SELECT hero_id FROM Heroes WHERE hero_name = '$_SESSION[hero_name]')
                            AND HA_item_id = (SELECT item_id FROM Items WHERE item_name = '$_SESSION[armor_name]')");
                mysql_query("UPDATE Hero_Armor SET armor_health = '$newCur' WHERE HA_hero_id =
                            (SELECT hero_id FROM Heroes WHERE hero_name = '$_SESSION[hero_name]')
                            AND HA_item_id = (SELECT item_id FROM Items WHERE item_name = '$_SESSION[armor_name]')");
            }
            // This should never be reached
            else {
                $_SESSION['message'] = 'Invalid Stat Type';
            }
            
            // Remove a skill point
            $newSkillPoints = $_SESSION['skill_points'] - 1;
            mysql_query("UPDATE Heroes SET hero_skill_points = '$newSkillPoints'
                WHERE hero_name = '$_SESSION[hero_name]'");
                
            // Refresh everything
            set_session_variables($_SESSION['hero_name']);
            
            header('Location: game.php');
        } else {
            $nextStr = $_SESSION['strength'] + 1;
            $nextMag = $_SESSION['magic'] + 1;
            $nextDef = $_SESSION['defense'] + 1;
            $nextBar = $_SESSION['barrier'] + 1;
            $nextHP = $_SESSION['max_health'] + 5;
        }
    }
    // If not logged in, go to index
    else {
        $_SESSION['message'] = 'You cannot create a hero if you are not logged in.';
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
            <div class="row">
                <div class="fourcol">
                    <form id="mainform" action="upgradeStats.php" method="post"><?php
                        echo("<h3>Skill Points: $_SESSION[skill_points]</h3>");
                        echo("<br />");
                        echo("<h3>$_SESSION[weapon_name]</h3>");
                        echo("<input type='radio' name='stat' value='str' />Strength $_SESSION[strength] -> $nextStr<br />");
                        echo("<input type='radio' name='stat' value='mag' />Magic $_SESSION[magic] -> $nextMag<br />");
                        echo("<br />");
                        echo("<h3>$_SESSION[armor_name]</h3>");
                        echo("<input type='radio' name='stat' value='def' />Defense $_SESSION[defense] -> $nextDef<br />");
                        echo("<input type='radio' name='stat' value='bar' />Barrier $_SESSION[barrier] -> $nextBar<br />");
                        echo("<input type='radio' name='stat' value='hp' />Max HP $_SESSION[max_health] -> $nextHP<br />");
                        echo("<br />");
                        echo("<input name='submit' type='submit' value='submit'></input>");
                    ?></form>
                    <script  type="text/javascript">
                        var frmvalidator = new Validator("mainform");
                        frmvalidator.addValidation("stat","req","Please choose a stat to upgrade.");
                    </script>
                </div>
                <div class="eightcol last"><?php
                    
                ?></div>
            </div>
			
        <br class="clear"></div>
        <div id="copyright">
            &copy Devin Falgoust | Template Design by: <a href="http://nodethirtythree.com">nodethirtythree</a> + <a href="http://templated.org/">Templated.org</a>
        </div>
    </div>
</body>
    
</html>

