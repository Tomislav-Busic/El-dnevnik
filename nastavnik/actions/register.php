<?php
include "../../actions/connection.php";

$username = $mysqli->real_escape_string(strip_tags($_POST['username']));
$password = $mysqli->real_escape_string(strip_tags($_POST['password']));
$email = $mysqli->real_escape_string(strip_tags($_POST['email']));

$sql = "SELECT * FROM users WHERE username = '$username'";
$result = $mysqli->query($sql);

$error = "";

if($result->num_rows > 0){
    $error = "Ovaj username je već zauzet!";
} else {
    $sql = "SELECT * FROM users WHERE email = '$email'";
    $result = $mysqli->query($sql);

    if($result->num_rows > 0){
        $error = "Ovaj email je već zauzet!";
    } else {
        $password = password_hash($password, PASSWORD_BCRYPT);

        $sql = "INSERT INTO users (username, email, password) VALUES ('$username', '$email', '$password')";

        if($mysqli->query($sql)){
            $_SESSION['message'] = "Nalog za učenika je uspješno kreiran.";
            header('location:../index.php');
        } else {
            $error = "Greška pri kreiranju korisnika!";
        }
    }
}

echo $error;