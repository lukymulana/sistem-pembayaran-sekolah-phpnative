<?php 
	include "koneksi.php";

	$q = mysql_query("SELECT transaksi_id FROM transaksi");
        $id = mysql_num_rows($q);
        $kode= $id+1;

        $jumlah = count($_POST["item"]);

		for($i=0; $i < $jumlah; $i++);

        $tanggal = date("Y-m-d H:i:s");
        $bulan = $_POST['bulan'];
        $NIPD = $_POST["item"][$i];

        $tg = mysql_query("SELECT detail_tunggakan.tunggakan_id FROM detail_tunggakan, tunggakan WHERE bulan='$bulan' AND NIPD='$NIPD'
                            AND detail_tunggakan.tunggakan_id=tunggakan.tunggakan_id");
        if(is_resource($tg) and mysql_num_rows($tg)>0){
          $row = mysql_fetch_array($tg);
          $g = $row['tunggakan_id'];
          }


        $jm = '125000';

        $input1 = "insert into transaksi values ('TR-$kode','$g','$jm','$tanggal','')";

        $updet = "update detail_tunggakan set keterangan='Lunas' where tunggakan_id='$g'";
       

	
$jumlah = count($_POST["item"]);

for($i=0; $i < $jumlah; $i++)
{
  $NIPD=$_POST["item"][$i];
  $query = mysql_query($input1);
        if ($query)
	{
		echo "tampil $NIPD <br>";
		echo "tampil $g";
	}
	else
	{	
	
		echo mysql_error();
	}
}
?>
