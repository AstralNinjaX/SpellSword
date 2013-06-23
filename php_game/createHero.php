<?php
    // Get commonFunctions.php
    require_once('commonFunctions.php');
    
    // Set the max number of heroes allowed
    $MAX_HEROES = 5;

    // Start the session and connect to the database
	session_start();
    $con = mysql_connect("localhost","devinfa1_user","dbpass");
    if (!$con) { die('Could not connect: ' . mysql_error()); }
    mysql_select_db("devinfa1_spellsword", $con);

    // If logged in
    if(isset($_SESSION['account_name'])) {
        // If form has been submitted
        if(isset($_POST['submit']) || isset($_POST['submit_x'])) {
            // Search for the entered name in list of heroes
            $result = mysql_query("SELECT hero_name FROM Heroes");
            while ($row = mysql_fetch_array($result)) {
                // If found throw an error and quit
                if($row['hero_name'] == $_POST['name']) {
                    $_SESSION['message'] = 'This account hero name already exists.';
                    mysql_close($con);
                    header('Location: game.php');
                    exit();
                }
            }
 
            // Find the number of live heroes on this account
            $result = mysql_query("SELECT COUNT(hero_name) as num FROM Heroes WHERE hero_is_alive = TRUE and
                hero_id IN (SELECT AH_hero_id as num FROM Account_Heroes WHERE AH_account_id =
                (SELECT account_id FROM Accounts where account_name = '$_SESSION[account_name]') )");
            $row = mysql_fetch_array($result);
            
            // If it's the max or more, don't let the user create another
            if( $row['num'] >= $MAX_HEROES ) {
                $_SESSION['message'] = 'No more than five heroes allowed per account.';
                mysql_close($con);
                header('Location: game.php');
                exit();
            }
            
            // Guard against SQL Injection
            $hero_name = mysql_real_escape_string($_POST['name']);
            
            // Create the Hero
            mysql_query("INSERT INTO Heroes (hero_name, hero_location)
                SELECT '$hero_name', location_id FROM Locations WHERE location_name = 'Tutorial'");
            
            // Connect it to the Account
            mysql_query("INSERT INTO Account_Heroes SELECT account_id, hero_id, TRUE
                FROM Accounts JOIN Heroes WHERE account_name = '$_SESSION[account_name]'
                and hero_name = '$hero_name'");
            
            // Create Hero's Initial Weapon
            add_weapon_to_hero($hero_name, $_POST['weapon'], TRUE);
                
            // Create Hero's Initial Armor
            add_armor_to_hero($hero_name, $_POST['armor'], TRUE);
                
            // Unset previous hero
            if(isset($_SESSION['hero_name'])) {
                mysql_query("UPDATE Account_Heroes SET active_hero = FALSE WHERE AH_hero_id =
                (SELECT hero_id FROM Heroes WHERE hero_name = '$_SESSION[hero_name]')");
            }
            
            // Apply them to the session variables
            set_session_variables($hero_name);
            
            // Return back to game
            $_SESSION['message'] = "Hero - $hero_name - created successfully.";
            header('Location: game.php');
        } else {
            $weapon1stats = show_starting_weapon_stats('Iron Sword');
            $weapon2stats = show_starting_weapon_stats('Elven Dagger');
            $weapon3stats = show_starting_weapon_stats('Fireball');
            $armor1stats = show_starting_armor_stats('Iron Armor');
            $armor2stats = show_starting_armor_stats('Lightning Robes');
            $armor3stats = show_starting_armor_stats('Rock Armor');
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
                <div class="threecol">
                    <form id="mainform" action="createHero.php" method="post">
                        <h3>Hero Name</h3>
                        <input type="text" name="name"></input><br />
                        <br />
                        <h3>Weapon</h3>
                        <input type='radio' name='weapon' value='Iron Sword' />Iron Sword<br />
                        <input type='radio' name='weapon' value='Elven Dagger' />Elven Dagger<br />
                        <input type='radio' name='weapon' value='Fireball' />Fireball<br />
                        <br />
                        <h3>Armor</h3>
                        <input type='radio' name='armor' value='Iron Armor' />Iron Armor<br />
                        <input type='radio' name='armor' value='Rock Armor' />Rock Armor<br />
                        <input type='radio' name='armor' value='Lightning Robes' />Lightning Robes<br />
                        <br />
                        <input name="submit" type="submit" value="submit"></input>
                    </form>
                    <script  type="text/javascript">
                        var frmvalidator = new Validator("mainform");
                        frmvalidator.addValidation("name","req","Please enter a hero name.");
                        frmvalidator.addValidation("weapon","selone_radio","Please choose a weapon.");
                        frmvalidator.addValidation("armor","selone_radio","Please choose an armor.");
                    </script>
                </div>
                <div class="threecol"><?php
                    echo("<h2><br /></h2>");
                    echo("<h3>Iron Sword</h3>");
                    echo("<p>$weapon1stats</p>");
                    echo("<h2><br /></h2>");
                    echo("<h3>Iron Armor</h3>");
                    echo("<p>$armor1stats</p>");
                ?></div>
                <div class="threecol"><?php
                    echo("<h2>Starting Weapon Stats</h2>");
                    echo("<h3>Elven Dagger</h3>");
                    echo("<p>$weapon2stats</p>");
                    echo("<h2>Starting Weapon Stats</h2>");
                    echo("<h3>Lightning Robes</h3>");
                    echo("<p>$armor2stats</p>");
                ?></div>
                <div class="threecol last"><?php
                    echo("<h2><br /></h2>");
                    echo("<h3>Fireball</h3>");
                    echo("<p>$weapon3stats</p>");
                    echo("<h2><br /></h2>");
                    echo("<h3>Rock Armor</h3>");
                    echo("<p>$armor3stats</p>");
                ?></div>
            </div>
			
        <br class="clear"></div>
        <div id="copyright">
            &copy Devin Falgoust | Template Design by: <a href="http://nodethirtythree.com">nodethirtythree</a> + <a href="http://templated.org/">Templated.org</a>
        </div>
    </div>
</body>
    
</html>

