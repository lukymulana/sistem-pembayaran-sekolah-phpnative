<?php

include "koneksi.php";

if(isset($_POST["simpan"])){
$username=$_POST['username'];
$password=$_POST['password'];

$query=mysql_query("SELECT * FROM user WHERE username='$username' and password='$password' and level='SS'");

if(mysql_num_rows($query) > 0){
	session_start();
	$_SESSION['username'] = $username;
	$row = mysql_fetch_array($query);
	$_SESSION['level'] = $row['level'];

	if($_SESSION['level'] == 1){
		header("location:index.php");
	}else{
		header("location:index.php");
	}
}else{
		header("location:login.php");
	}
}
?>
