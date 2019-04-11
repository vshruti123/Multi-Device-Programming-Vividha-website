<?php
    $name = $_POST["name"];
    $email = $_POST["email"];
    $password = $_POST["password"];
    $contact = $_POST["contact"];
    $city = $_POST["city"];
    $address = $_POST["address"];
    
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
    
    $sql = "INSERT INTO Users (user_name, user_email, user_password, user_contact, user_city, user_address)
        VALUES ('$name', '$email', '$password_hash', '$contact', '$city', '$address')";
    
    if (mysqli_query($conn, $sql)) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
    
    mysqli_close($conn);
    header("Location: index.html");
?> 
