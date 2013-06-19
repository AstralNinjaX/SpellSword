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

            // Unset previous hero
            if(isset($_SESSION['hero_name'])) {
                mysql_query("UPDATE Account_Heroes SET active_hero = FALSE WHERE AH_hero_id =
                (SELECT hero_id FROM Heroes WHERE hero_name = '$_SESSION[hero_name]')");
            }
        
            // Set the new hero to active
            mysql_query("UPDATE Account_Heroes SET active_hero = TRUE WHERE AH_hero_id =
                (SELECT hero_id FROM Heroes WHERE hero_name = '$_POST[name]')");
            
            // Change the session variables to agree with this data
            set_session_variables($_POST['name']);

            // Re-route to game
            header('Location: game.php');
            
        }
        // If you came strait to this page, run a query to find all heroes for this account
        else {
            $result = mysql_query("SELECT * FROM Heroes WHERE hero_id IN
                (SELECT AH_hero_id as num FROM Account_Heroes WHERE AH_account_id =
                (SELECT account_id FROM Accounts where account_name = '$_SESSION[account_name]') )");
                
                $count = 0;
                // Get all heroes on this account
                while ($row = mysql_fetch_array($result)) {
                    $names[$count] = $row['hero_name'];
                    $isalive[ $row['hero_name'] ] = $row['hero_is_alive'];
                    $count++;
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
			<form id="mainform" action="changeHero.php" method="post">
                <h2>Select Hero</h2>
                <?php
                    // For each hero
                    for($i = 0; $i < $count; $i++) {
                        // Get his name
                        $name = $names[$i];
                    
                        // If he's alive, make his radio button enabled
                        if($isalive[$name]) {
                            echo("<input type='radio' name='name' value='$name' />$name<br />");
                        }
                        // Otherwise, make his radio button disabled
                        else {
                            echo("<input type='radio' name='name' value='$name' disabled />$name [DEAD]<br />");
                        }
                    }
                ?><br />
				<input name="submit" type="submit" value="submit"></input>
			</form>
            <script  type="text/javascript">
                var frmvalidator = new Validator("mainform");
                frmvalidator.addValidation("name","selone_radio","Please choose a hero.");
            </script>
			
        <br class="clear"></div>
        <div id="copyright">
            &copy Devin Falgoust | Template Design by: <a href="http://nodethirtythree.com">nodethirtythree</a> + <a href="http://templated.org/">Templated.org</a>
        </div>
    </div>
</body>
    
</html>