<?php
    // Start the session
    session_start();
    // If logged in, destroy the session
    if(isset($_SESSION['account_name'])) {
        session_destroy();
    }
    // Re-route to index
    header('Location: index.php');
?>