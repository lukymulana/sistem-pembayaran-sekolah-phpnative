<?php include 'koneksi.php';
session_start();
if(empty($_SESSION['username']))
  header("location:login.php");
$user = $_SESSION['username'];

if(isset($_POST["submit"])){

	
	 	$q = mysql_query("SELECT transaksi_id FROM transaksi");
        $id = mysql_num_rows($q);
        $kode= $id+1;

        $tanggal = date("Y-m-d H:i:s");
        $bulan = $_POST['bulan'];
        $NIPD = $_POST['NIPD'];

        $tg = mysql_query("SELECT detail_tunggakan.tunggakan_id FROM detail_tunggakan, tunggakan WHERE bulan='$bulan' AND NIPD='$NIPD'
                            AND detail_tunggakan.tunggakan_id=tunggakan.tunggakan_id");
        if(is_resource($tg) and mysql_num_rows($tg)>0){
          $row = mysql_fetch_array($tg);
          $g = $row['tunggakan_id'];
          }


        $jm = '125000';

        $input1 = "insert into transaksi values ('TR-$kode','$g','$jm','$tanggal','$user')";

        $updet = "update detail_tunggakan set keterangan='Lunas' where tunggakan_id='$g'";

            $cekdata="select tunggakan_id from detail_tunggakan where tunggakan_id='$g' AND keterangan='Lunas'";  
        $ada=mysql_query($cekdata) or 
        die(mysql_error()); 

        if(mysql_num_rows($ada)>0) 
        { 
            echo "<script>alert( 'Bulan Ini Sudah Dibayar!!' ); window.location='pembayaranSPP.php?kode=$NIPD';</script>";
        }
        else
        {
            $ex = mysql_query($input1) or die(mysql_error());

            $query = mysql_query($updet) or die(mysql_error());
            
            echo "<script>alert( 'Pembayaran Success' ); window.location='cetakSPP.php?kode=$g';</script>";
        }
}
?>