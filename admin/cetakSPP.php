<?php

  include "koneksi.php";
session_start();
if(empty($_SESSION['username']))
  header("location:login.php");
  $user = $_SESSION['username'];
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>SI PEMBELAH</title>

    
    
   
  </head>
<body>

                    <h3 align="center"><b> BUKTI PEMBAYARAN SPP </b></h3>
                       <?php
        include "koneksi.php";

        $g = $_GET['kode'];
        $query = mysql_query ("select p.NIPD, p.pd_nama, pd.rombel_id, d.bulan, d.keterangan from peserta_didik p, peserta_didik_kelas pd, tunggakan t, 
                              detail_tunggakan d where p.NIPD=pd.NIPD AND p.NIPD=t.NIPD AND 
                              t.tunggakan_id=d.tunggakan_id AND t.tunggakan_id = '$g'");
        $array = mysql_fetch_array($query);
      
      ?>
      <table width="547" cellpadding="5" >
          <tr>
            <td width="111">Nama</td>
            <td width="8">:</td>
            <td width="388"><label><?php echo $array['pd_nama']; ?></label></td>
          </tr>
          <tr>
            <td>Kelas</td>
            <td>:</td>
            <td><label><?php echo $array['rombel_id']; ?></label></td>
          </tr>
          <tr>
            <td>Bulan</td>
            <td>:</td>
            <td><label><?php echo $array['bulan']; ?></label></td>
          </tr>
          <tr>
            <td>Keterangan</td>
            <td>:</td>
            <td><label> <?php echo $array['keterangan']; ?></label></td>
          </tr>
          <tr>
            <td><font color="white"> </font></td>
          </tr>
          <tr>
            <th colspan="3" align="right">Petugas</th>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <th colspan="3" align="right"><label><?php echo $user; ?></label></th>
          </tr> 
      </table> 

              
<script>
 window.print();
</script>
  </body>
</html>