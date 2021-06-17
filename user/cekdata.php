<?php
		include "koneksi.php";

		$NIPD = $_GET['kode'];

		$cekdata="select NIPD from lapor_diri where NIPD='$NIPD'";  
        $ada=mysql_query($cekdata) or 
        die(mysql_error()); 

        if(mysql_num_rows($ada)>0) 
        {
          header("location:detail_tunggakan.php");
        }
         else
         {
         	
         	echo "<script>alert( 'Siswa Belum Daftar Ulang !' ); window.location='./';</script>";
         }
?>