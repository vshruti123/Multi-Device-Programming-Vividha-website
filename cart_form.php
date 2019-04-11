<?php
	session_start();
	if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true) {
    	header("Location: confirm.html");
	} else {
    	header("Location: login.html");
	}
?>
