<?php    
    // Start the session and connect to the database
	session_start();
    $con = mysql_connect("localhost","devinfa1_user","dbpass");
    if (!$con) { die('Could not connect: ' . mysql_error()); }
    mysql_select_db("devinfa1_spellsword", $con);

    // If not logged in
    if(! isset($_SESSION['account_name'])) {
        // If the form has been completed
        if(isset($_POST['submit']) || isset($_POST['submit_x'])) {
            // Search for the entered name in list of accounts
            $result = mysql_query("SELECT account_name FROM Accounts");
            while ($row = mysql_fetch_array($result)) {
                // If found throw an error and quit
                if($row['account_name'] == $_POST['name']) {
                    $_SESSION['message'] = 'This account name already exists.';
                    mysql_close($con);
                    header('Location: index.php');
                    exit();
                }
            }
        
            // Encrypt the password
            $password = sha1(md5($_POST[password]));
            
            // Guard Against SQL Injection
            $account_name = mysql_real_escape_string($_POST['name']);
            $email = mysql_real_escape_string($_POST['email']);

            // Insert the Account into the database
            $result = mysql_query("INSERT INTO Accounts (account_name, account_password, account_email)
            VALUES ('$account_name','$password','$email')");

            // Print variable and go to index
            $_SESSION['message'] = "Account - $_POST[name] - created successfully.";
            header('Location: index.php');
        }
    }
    // If logged in, print error and go to game
    else {
        $_SESSION['message'] = 'You cannot create another account while you are logged in.';
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
                    <ul>
                        <li class="first active last">
                            <a href="index.php">Cancel</a>
                        </li>
                    </ul>
                    <br class="clear"></div>
                </div>
        <div id="main">
			<form id="mainform" action="createAccount.php" method="post">
				<input type="text" name="name"></input>
				<label for="name">Account Name</label>
				<br />
				<input type="password" name="password"></input>
				<label for="password">Password</label>
				<br />
				<input type="text" name="email"></input>
				<label for="email">E-Mail</label>
				<br />
				<input name="submit" type="submit" value="submit"></input>
			</form>
            <script  type="text/javascript">
                var frmvalidator = new Validator("mainform");
                frmvalidator.addValidation("name","req","Please enter all information.");
                frmvalidator.addValidation("password","req","Please enter all information.");
                frmvalidator.addValidation("email","req","Please enter all information.");
                frmvalidator.addValidation("email","email","Please enter a valid email address.");
            </script>
			
        <br class="clear"></div>
        <div id="copyright">
            &copy Devin Falgoust | Template Design by: <a href="http://nodethirtythree.com">nodethirtythree</a> + <a href="http://templated.org/">Templated.org</a>
        </div>
    </div>
</body>
    
</html>