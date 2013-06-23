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
        // If new account, there will be no hero, so go to createHero
        if(! isset($_SESSION['hero_name'])) {
            header('Location: createHero.php');
            exit();
        }
        
        // Set the hero's level
        while(update_hero_level());
        
        // Come here once upgrade stats has been selected
        if(isset($_POST['upgradestats']) || isset($_POST['upgradestats_x'])) {  
            header('Location: upgradeStats.php');
            exit();
        }
        
        // Come here once battle has been selected
        if(isset($_POST['battle']) || isset($_POST['battle_x'])) {
            $_SESSION['battle_stage'] = 'init';
            header('Location: battle.php');
            exit();
        }
        
        // Come here once traveling has been selected
        if(isset($_POST['travel']) || isset($_POST['travel_x'])) {            
            // Get the cost of the location
            $route = str_replace(" ", "", $_POST['neighborarea']);
            $cost = $_POST[ $route ];
            
            if($_SESSION['tokens'] < $cost) {
                    $_SESSION['message'] = 'You need more tokens to go here.';
            } else {
                // Get the number of tokens the hero has spent
                $result = mysql_query("SELECT hero_tokens_spent FROM Heroes WHERE hero_name = '$_SESSION[hero_name]'");
                $row = mysql_fetch_array($result);
                
                // Add to it the cost of this travel
                $tokens_spent = $row['hero_tokens_spent'] + $cost;
                
                // Update the amount spent
                mysql_query("UPDATE Heroes SET hero_tokens_spent = '$tokens_spent'
                    WHERE hero_name = '$_SESSION[hero_name]'");
                    
                 // Change hero's location
                mysql_query("UPDATE Heroes SET hero_location = 
                    (SELECT location_id FROM Locations WHERE location_name = '$_POST[neighborarea]')
                    WHERE hero_name = '$_SESSION[hero_name]'");
                $_SESSION['location'] = $_POST['neighborarea'];
            }
        }
        
        // Get list of locations to travel to
        $count = 0;        
        $result = mysql_query("SELECT dest.location_name AS destination, travel_level, travel_cost
            FROM Locations src JOIN Travel ON (src.location_id = src_location_id) JOIN Locations dest
            ON (dest.location_id = dest_location_id) WHERE src.location_name = '$_SESSION[location]'
            ORDER BY travel_level");
        while ($row = mysql_fetch_array($result)) {
            $neighbors[$count] = $row['destination'];
            $cost[$count] = $row['travel_cost'];
            $level[$count] = $row['travel_level'];
            $count++;
        }
        
        // Get the number of tokens he has available
        calculate_tokens();
	} 
    // If not logged in, go to index
    else {
		header('Location: index.php');
	}
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
                            <a href="stats.php">Hero Stats</a>
                        </li>
                        <li>
                            <a href="createHero.php">Create Hero</a>
                        </li>
                        <?php
                            if(account_has_multiple_heroes()) {
                                echo('<li><a href="changeHero.php">Change Hero</a></li>');
                            }
                        ?>
                        <?php
                            if(hero_has_multiple_weapons() || hero_has_multiple_armors()) {
                                echo('<li><a href="changeEquipment.php">Change Equipment</a></li>');
                            }
                        ?>
                        <?php
                            if(hero_has_inventory()) {
                                echo('<li><a href="inventory.php">Inventory</a></li>');
                            }
                        ?>
                        <li class="last">
                            <a href="logout.php">Log Out</a>
                        </li>
                    </ul>
                    <br class="clear"></div>
                </div>
        <div id="main" class="row">
            <div class="fourcol">
                <h2>Travel</h2>
                <p><?php
                    echo("Current Location: $_SESSION[location]<br/>");
                    echo("Tokens: $_SESSION[tokens]");
                ?></p>
                <form id="travelform" action="game.php" method="post">
                <?php
                    echo("<select name='neighborarea' size='$count'>");
                    for($i = 0; $i < $count; $i++) {
                        if($_SESSION['hero_level'] >= $level[$i]) {
                            echo("<option name='neighbor' value='$neighbors[$i]'>$neighbors[$i] --- Level $level[$i] --- $cost[$i] Tokens</option>");
                        } else {
                            echo("<option name='neighbor' value='$neighbors[$i]' disabled='disabled'>$neighbors[$i] --- Level $level[$i] --- $cost[$i] Tokens</option>");
                        }
                    }
                    for($i = 0; $i < $count; $i++) {
                        $name = str_replace(" ", "", $neighbors[$i]);
                        echo("<input type='hidden' name='$name' value='$cost[$i]' />");
                    }
                    echo("</select>");
                ?>
                <br />
                <input name="travel" type="submit" value="travel"></input>
                </form>
                <script  type="text/javascript">
                    var frmvalidator = new Validator("travelform");
                    frmvalidator.addValidation("neighborarea","req","No location is selected.");
                </script>
            </div>
            <div class="fourcol"><?php
                // Get the location type
                $locationtype = get_location_type($_SESSION['location']);
                
                // If type is a city
                if($locationtype == "City") {
                    // Shop goes here
                    echo("<h2>Shop</h2>");
                }
                // If type is wild
                if ($locationtype == "Wild") {
                    // Battle
                    echo("<form id='battleform' action='game.php' method='post'>
                        <input name='battle' type='submit' value='battle'></input>
                        </form>");
                }
                // If type is boss
                if ($locationtype == "Boss") {
                    // Battle
                    echo("<form id='battleform' action='game.php' method='post'>
                        <input name='battle' type='submit' value='battle'></input>
                        </form>");
                    // Boss battle goes here
                }
            ?></div>
            <div class="fourcol last">
            <form id="upgradestatsform" action="game.php" method="post"><?php
                if($_SESSION['skill_points'] > 0) {
                    echo("<h3>Skill Points: $_SESSION[skill_points]</h3>");
                    echo("<input name='upgradestats' type='submit' value='upgrade stats'></input>");
                }
            ?></form>
            </div>
        <br class="clear"></div>
        <div id="copyright">
            &copy Devin Falgoust | Template Design by: <a href="http://nodethirtythree.com">nodethirtythree</a> + <a href="http://templated.org/">Templated.org</a>
        </div>
    </div>
    
    <?php
        // Print error messages
        if(isset($_SESSION['message'])) {
            $message = $_SESSION['message'];
            echo("<script type='text/javascript'>alert('$message');</script>");
            unset($_SESSION['message']);
        }
    ?>
</body>
    
</html>

<?php
    // Close the database connection
    mysql_close($con);
?>
