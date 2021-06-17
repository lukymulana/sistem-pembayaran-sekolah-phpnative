<?php
		include "koneksi.php";

		$NIPD = $_GET['kode'];
		$jm = '2100000';

		$tg = mysql_query("SELECT detail_tunggakan.tunggakan_id FROM detail_tunggakan, tunggakan WHERE total='$jm' AND NIPD='$NIPD'
                            AND detail_tunggakan.tunggakan_id=tunggakan.tunggakan_id");
        if(is_resource($tg) and mysql_num_rows($tg)>0){
          $row = mysql_fetch_array($tg);
          $g = $row['tunggakan_id'];
          }

		$cekdata="select tunggakan_id from detail_tunggakan where tunggakan_id='$g' AND keterangan='Lunas'";  
        $ada=mysql_query($cekdata) or 
        die(mysql_error()); 

        if(mysql_num_rows($ada)>0) 
        {
          echo "<script>alert( 'Uang Awal Tahun Sudah Lunas !' ); window.location='./';</script>";
        }
         else
         {
         	header("location:pembayaranAwalTahun.php?kode=$NIPD");
         	
         }
?>