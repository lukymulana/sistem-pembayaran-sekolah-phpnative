<?php include 'koneksi.php';
if(isset($_POST["submit"])){

	//SIMPAN LAPOR DIRI
	 	$q = mysql_query("SELECT lapor_diri_id FROM lapor_diri");
        $id = mysql_num_rows($q);
        $kode= $id+1;

        $key = mysql_query("SELECT tunggakan_id FROM tunggakan");
        $num = mysql_num_rows($key);
        $a = $num+1;
        $b = $a+1;
        $c = $b+1;
        $d = $c+1;
        $e = $d+1;
        $f = $e+1;
        $g = $f+1;
        $h = $g+1;
        $i = $h+1;
        $j = $i+1;
        $k = $j+1;
        $l = $k+1;
        $m = $l+1;
        $n = $m+1;
           


        $lapor_diri_id=$_POST["lapor_diri_id"];
        $tanggal = date("Y-m-d H:i:s");
        $NIPD=$_POST["NIPD"];
        $keterangan=$_POST["keterangan"];
        $tahun=$_POST["tahun_ajaran_id"];

        $spp = 'KT-001';
        $awal = 'KT-002';
        $pkl = 'KT-003';

        $jmspp = '125000';
        $jmawal = '2100000';
        $jmpkl = '500000';

        $input1 = "insert into lapor_diri values ('LD-$kode','$tanggal','$NIPD','$keterangan','$tahun')";

        $input2 = "insert into tunggakan values ('TG-$a','$spp','$NIPD','$jmspp'),
       											('TG-$b','$spp','$NIPD','$jmspp'),
       											('TG-$c','$spp','$NIPD','$jmspp'),
       											('TG-$d','$spp','$NIPD','$jmspp'),
       											('TG-$e','$spp','$NIPD','$jmspp'),
       											('TG-$f','$spp','$NIPD','$jmspp'),
       											('TG-$g','$spp','$NIPD','$jmspp'),
       											('TG-$h','$spp','$NIPD','$jmspp'),
       											('TG-$i','$spp','$NIPD','$jmspp'),
       											('TG-$j','$spp','$NIPD','$jmspp'),
       											('TG-$k','$spp','$NIPD','$jmspp'),
       											('TG-$l','$spp','$NIPD','$jmspp'),
       											('TG-$m','$awal','$NIPD','$jmawal'),
       											('TG-$n','$pkl','$NIPD','$jmpkl')";

       	$input3 = "insert into detail_tunggakan values 	('Juni','TG-$l','$jmspp','','Belum Lunas'),
       													('Mei','TG-$k','$jmspp','','Belum Lunas'),
       													('April','TG-$j','$jmspp','','Belum Lunas'),
       													('Maret','TG-$i','$jmspp','','Belum Lunas'),
       													('Februari','TG-$h','$jmspp','','Belum Lunas'),
       													('Januari','TG-$g','$jmspp','','Belum Lunas'),
       													('Desember','TG-$f','$jmspp','','Belum Lunas'),
       													('November','TG-$e','$jmspp','','Belum Lunas'),
       													('Oktober','TG-$d','$jmspp','','Belum Lunas'),
       													('September','TG-$c','$jmspp','','Belum Lunas'),
       													('Agustus','TG-$b','$jmspp','','Belum Lunas'),
       													('Juli','TG-$a','$jmspp','','Belum Lunas'),
       													('','TG-$m','$jmawal','$jmawal','Belum Lunas'),
       													('','TG-$n','$jmpkl','$jmpkl','Belum Lunas')";

       	$cekdata="select NIPD from lapor_diri where NIPD='$NIPD'";  
        $ada=mysql_query($cekdata) or 
        die(mysql_error()); 

        if(mysql_num_rows($ada)>0) 
        { 
            echo "<script>alert( 'Siswa Sudah Daftar Ulang !' ); window.location='./';</script>";
        }
        else
        {
        	$ex = mysql_query($input1) or die(mysql_error());
        
        	$exx = mysql_query($input2) or die(mysql_error());

        	$query = mysql_query($input3) or die(mysql_error());

        	echo "<script>alert( 'Pembayaran Success !' ); window.location='./';</script>";


        }

        
}
?>