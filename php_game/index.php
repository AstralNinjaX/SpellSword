<?php
    // Get commonFunctions.php
    require_once('commonFunctions.php');
    
    // Start the session and connect to the database
	session_start();
    $con = mysql_connect("localhost","devinfa1_user","dbpass");
    if (!$con) { die('Could not connect: ' . mysql_error()); }
    mysql_select_db("devinfa1_spellsword", $con);
    
    // If logged out
    if(!isset($_SESSION['account_name'])) {
        // Come here when submit is pressed
        if(isset($_POST['submit']) || isset($_POST['submit_x'])) {
            // Encrypt the password
            $password = sha1(md5($_POST[password]));
            
            // Search for accounts in all accounts
            $found = false;        
            $result = mysql_query("SELECT * FROM Accounts;");
            while($row = mysql_fetch_array($result)) {           
                // If username and password match, apply session variables
                if($row['account_name'] == $_POST[name] && $row['account_password'] == $password) {
                    $_SESSION['account_name'] = $row['account_name'];
                    $_SESSION['email'] = $row['account_email'];
                    $_SESSION['start_date'] = $row['account_start_date'];
                    $found = true;
                }
            }

            // If account was found, logged in was successful, so go to game
            if($found) {
                // Apply the session variables
                set_session_variables($row['hero_name']);
                
                // Set the Max Level
                $result = mysql_query("SELECT COUNT(level_from) AS max_level FROM Hero_Experience");
                $row = mysql_fetch_array($result);
                
                $_SESSION['max_level'] = $row['max_level'];
            
                header('Location: game.php');
            }
            // Otherwise print Invalid Login
            else {
                $_SESSION['message'] = 'Invalid Login.';
            }
        }
    } else {
        // If logged in, re-route to game
        $_SESSION['message'] = 'You must first log out before you can log in again.';
        header('Location: game.php');
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
                    <ul><form id="mainform" action="index.php" method="post">
                        <li class="first active">
							<p>Login:</p>
						</li>
                        <li>
							<input type="text" name="name"></input>
                        </li>
                        <li>
                            <p>Password:</p>
						</li>
						<li>
                            <input type="password" name="password"></input>
                        </li>
                        <li>
                            <input type="submit" name="submit" value="Login" class="invisibutton"></input>
                        </li>
						<li class="last">
                            <a href="createAccount.php">Create Account</a>
                        </li>
                    </form>
                    <script  type="text/javascript">
                        var frmvalidator = new Validator("mainform");
                        frmvalidator.addValidation("name","req","Please enter username and password.");
                        frmvalidator.addValidation("password","req","Please enter username and password.");
                    </script></ul>
                    <br class="clear"></div>
                </div>
        <div id="main">
		
			<h1>Welcome to SpellSword!</h1><br />
			<p>SpellSword is a browser-based RPG. The main premise is that your character has no stats.</p>
			
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
