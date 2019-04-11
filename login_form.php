<?php

    $email = $_POST["email"];
    $password = $_POST["password"];
    
    $options = [
    	'cost' => 12,
	];
	
	$password_hash = password_hash($password, PASSWORD_BCRYPT, $options);

    $servername = "localhost";
    $username = "root";
    $password_sql = "password";
    $dbname = "Vividha";
    
    $conn = mysqli_connect($servername, $username, $password_sql);

    mysqli_select_db($conn, $dbname);

    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    
    $sql = "SELECT user_password FROM Users WHERE user_email='$email'";
	$result = mysqli_query($conn, $sql);

	if (mysqli_num_rows($result) > 0) {
		while($row = mysqli_fetch_assoc($result)) {
        	if (password_verify($password, $row["user_password"])) {
    			echo 'Password is valid!';
    			session_start();
    			$_SESSION['loggedin'] = true;
    			$_SESSION['email'] = $email;
			} else {
			    echo 'Invalid password.';
			}
    	}
	} else {
    	echo "0 results";
	}
    
	mysqli_close($conn);
	header("Location: cart.html");
?> 
