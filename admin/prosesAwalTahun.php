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
        $sisa = $_POST['sisa'];
        $keterangan = $_POST['keterangan'];
        $NIPD = $_POST['NIPD'];
        $jumlah = $_POST['jumlah'];
        $jm = '2100000';
        $kurang = $sisa-$jumlah;

        $tg = mysql_query("SELECT detail_tunggakan.tunggakan_id FROM detail_tunggakan, tunggakan WHERE total='$jm' AND NIPD='$NIPD'
                            AND detail_tunggakan.tunggakan_id=tunggakan.tunggakan_id");
        if(is_resource($tg) and mysql_num_rows($tg)>0){
          $row = mysql_fetch_array($tg);
          $g = $row['tunggakan_id'];
          }


        

        $input1 = "insert into transaksi values ('TR-$kode','$g','$jumlah','$tanggal','$user')";

        $updet = "update detail_tunggakan set keterangan='$keterangan', sisa='$kurang' where tunggakan_id='$g'";

        $ex = mysql_query($input1) or die(mysql_error());
        $query = mysql_query($updet);
        if ($query)
	{
		echo "<script>alert( 'Pembayaran Success !' ); window.location='cetakAwalTahun.php?kode=$g';</script>";
		
	}
	else
	{	
	
		echo mysql_error();
		
	}
 }
?>