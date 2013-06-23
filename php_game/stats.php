<?php   
    // Start the session
	session_start();
    
    // If not logged in, go to index
	if(! isset($_SESSION['account_name'])) {
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
        <div id="main" class="row">
            <div class="threecol">
                <h1>Account</h1><br />
                    <p>
                        Username: <?php echo $_SESSION['account_name']; ?><br />
                        Email: <?php echo $_SESSION['email']; ?><br />
                        Start Date: <?php echo $_SESSION['start_date']; ?>
                    </p>
            </div><div class="threecol">
                <h1>Active Hero</h1><br />
                    <p>
                        Hero Name: <?php echo $_SESSION['hero_name']; ?><br />
                        Level: <?php echo $_SESSION['hero_level']; ?><br />
                        Experience: <?php echo $_SESSION['hero_experience']; ?><br />
                        Next Level at: <?php echo $_SESSION['hero_next_level']; ?><br />
                        Skill Points: <?php echo $_SESSION['skill_points']; ?><br />
                        Tokens: <?php echo $_SESSION['tokens']; ?><br />
                        Moolah: <?php echo $_SESSION['moolah']; ?><br />
                        Location: <?php echo $_SESSION['location']; ?>
                    </p>
            </div><div class="threecol">
                <h1>Equipped Weapon</h1><br />
                    <p>
                        Name: <?php echo $_SESSION['weapon_name']; ?><br />
                        Level: <?php echo $_SESSION['weapon_level']; ?><br />
                        Experience: <?php echo $_SESSION['weapon_experience']; ?><br />
                        Element: <?php echo $_SESSION['weapon_element']; ?><br />
                        Strength: <?php echo $_SESSION['strength']; ?><br />
                        Magic: <?php echo $_SESSION['magic']; ?><br />
                        Condition: <?php echo $_SESSION['weapon_condition']; ?><br />
                        Max Condition: <?php echo $_SESSION['weapon_max_condition']; ?>
                    </p>
            </div><div class="threecol last">
                <h1>Equipped Armor</h1><br />
                    <p>
                        Name: <?php echo $_SESSION['armor_name']; ?><br />
                        Level: <?php echo $_SESSION['armor_level']; ?><br />
                        Element: <?php echo $_SESSION['armor_element']; ?><br />
                        Experience: <?php echo $_SESSION['armor_experience']; ?><br />
                        Defense: <?php echo $_SESSION['defense']; ?><br />
                        Barrier: <?php echo $_SESSION['barrier']; ?><br />
                        Health: <?php echo $_SESSION['health']; ?><br />
                        Max Health: <?php echo $_SESSION['max_health']; ?><br />
                        Condition: <?php echo $_SESSION['armor_condition']; ?><br />
                        Max Condition: <?php echo $_SESSION['armor_max_condition']; ?>
                    </p>
			</div>
        <br class="clear"></div>
        <div id="copyright">
            &copy Devin Falgoust | Template Design by: <a href="http://nodethirtythree.com">nodethirtythree</a> + <a href="http://templated.org/">Templated.org</a>
        </div>
    </div>
</body>
    
</html>
