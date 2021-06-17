<?php

if(!session_start()){
session_start();
}
//cek apakah admin sudah login atau belum
if(!isset($_SESSION['admin'])){
?>
<script>document.location.href="login.php"</script>
<?php 
}
?>