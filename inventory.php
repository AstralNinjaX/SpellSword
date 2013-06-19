<?php
    // Get commonFunctions.php
    require_once('commonFunctions.php');

    // Start the session
	session_start();
    
    // If not logged in, go to index
	if(! isset($_SESSION['account_name']) || !hero_has_inventory()) {
		header('Location: index.php');
	}
    
    // Set count variable
    $icount = 0;
    $scount = 0;
    
    // Run the queries
    $iresult = mysql_query("SELECT * FROM Hero_Inventory JOIN Items ON (HI_item_id = item_id)
        WHERE HI_hero_id = (SELECT hero_id FROM Heroes WHERE hero_name = '$_SESSION[hero_name]')
        and item_is_soul = FALSE");
    
    while ($row = mysql_fetch_array($iresult)) {
        $iname[$icount] = $row['item_name'];
        $iquantity[$icount] = $row['HI_quantity'];
        $icount++;
    }
    
    $sresult = mysql_query("SELECT * FROM Hero_Inventory JOIN Items ON (HI_item_id = item_id)
        WHERE HI_hero_id = (SELECT hero_id FROM Heroes WHERE hero_name = '$_SESSION[hero_name]')
        and item_is_soul = TRUE");
    
    while ($row = mysql_fetch_array($sresult)) {
        $sname[$scount] = $row['item_name'];
        $squantity[$scount] = $row['HI_quantity'];
        $scount++;
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
                <h1>Item - Quantity</h1><br />
                    <p>
                        <?php
                            if($icount > 0) {
                                for($i = 0; $i < $icount/2 ; $i++) {
                                    echo("$iname[$i] : $iquantity[$i] <br />");
                                }
                            }
                        ?>
                    </p>
            </div><div class="threecol">
                <h1>Item - Quantity</h1><br />
                    <p>
                        <?php
                            if($icount > 0) {
                                for($i = $icount/2; $i < $icount ; $i++) {
                                    echo("$iname[$i] : $iquantity[$i]<br />");
                                }
                            }
                        ?>
                    </p>
            </div><div class="threecol">
                <h1>Soul - Quantity</h1><br />
                    <p>
                        <?php
                            if($scount > 0) {
                                for($s = 0; $s < $scount/2 ; $s++) {
                                    echo("$sname[$s] : $squantity[$s] <br />");
                                }
                            }
                        ?>
                    </p>
            </div><div class="threecol last">
                <h1>Soul - Quantity</h1><br />
                    <p>
                        <?php
                            if($scount > 0) {
                                for($s = $scount/2; $s < $scount ; $s++) {
                                    echo("$sname[$s] : $squantity[$s] <br />");
                                }
                            }
                        ?>
                    </p>
			</div>
        <br class="clear"></div>
        <div id="copyright">
            &copy Devin Falgoust | Template Design by: <a href="http://nodethirtythree.com">nodethirtythree</a> + <a href="http://templated.org/">Templated.org</a>
        </div>
    </div>
</body>
    
</html>
