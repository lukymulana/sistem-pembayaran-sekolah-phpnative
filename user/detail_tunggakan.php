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


    <link href="aset/css/bootstrap.css" rel="stylesheet">

     <link href="aset/css/style.css" rel="stylesheet">

     <link href="aset/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <script src="aset/js/chart-master/Chart.js"></script>
   
  </head>
<body>
		<header class="header black-bg">
      <div class="sidebar-toggle-box">
          <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
    <a href="index.php" class="logo"><b>SI PEMBELAH (SISTEM INFORMASI PEMBAYARAN SEKOLAH)</b></a>
     <div class="top-menu">
      <ul class="nav pull-right top-menu">
            <li><a class="logout" href="login.php">Logout</a></li>
      </ul>
    </div>
     </header>

     <aside>
          <div id="sidebar"  class="nav-collapse ">
              <ul class="sidebar-menu" id="nav-accordion">
                  <p class="centered"><img src="aset/img/rpl.png" class="img-circle" width="60"></a></p>
                  <h5 class="centered"><?php echo "$user"; ?></h5>
                    
                  <li class="mt">
                      <a href="index.php">
                          <i class="glyphicon glyphicon-home"></i>
                          <span>Home</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="tampil_DataSiswa.php" >
                          <i class="glyphicon glyphicon-user"></i>
                          <span>Data Siswa</span>
                      </a>
                  </li>
              </ul>
          </div>
      </aside>

      <!--ISI-->
      <section id="main-content">
                  <section class="wrapper">
                    <h3 align="center"><b> TUNGGAKAN </b></h3>

    <?php
        include "koneksi.php";

        $nipd = $user;
        $query = mysql_query ("select * from peserta_didik, peserta_didik_kelas where peserta_didik.NIPD=peserta_didik_kelas.NIPD AND peserta_didik.NIPD = '$nipd'");
        $array = mysql_fetch_array($query);
      ?>
      <h4>Nama  &nbsp; : &nbsp;  <?php echo   $array['pd_nama']; ?>
      <br>
      Kelas &nbsp;&nbsp; : &nbsp;  <?php echo   $array['rombel_id']; ?></h4>
      <br>

        <!--SPP-->
        <form>
        <table border="1" class="table table-hover">
         <h4><b>SPP</b></h4>
          <tr>
            <th>Bulan</th>
            <th>Total</th>
            <th>Keterangan</th>
    
          </tr>     
<?php
        include "koneksi.php";

        $nipd = $user;
        $query = mysql_query ("select t.NIPD, d.bulan, d.total, d.keterangan from kategori k, detail_tunggakan d,
                               tunggakan t where t.kategori_id=k.kategori_id AND t.tunggakan_id=d.tunggakan_id AND t.NIPD = '$nipd' 
                                AND k.kategori_nama='SPP' AND d.keterangan='Belum Lunas'");
        while ($daftar = mysql_fetch_array($query)) {
    echo "<tr>
        <td>".$daftar['bulan']."</td>
        <td>".$daftar['total']."</td>
        <td>".$daftar['keterangan']."</td>
      </tr>";
  }
    
?>
</table>
</form>

&nbsp;
&nbsp;

          <!--AWAL TAHUN-->
         
        <table border="1" class="table table-hover">
        <h4><b>AWAL TAHUN</b></h4>
          <tr>
            <th>Total</th>
            <th>Sisa</th>
            <th>Keterangan</th></b>    
          </tr>     
<?php
        include "koneksi.php";

        $nipd = $user;
        $query = mysql_query ("select t.NIPD, d.total, d.sisa, d.keterangan from kategori k, detail_tunggakan d,
                               tunggakan t where t.kategori_id=k.kategori_id AND t.tunggakan_id=d.tunggakan_id AND t.NIPD = '$nipd' 
                               AND k.kategori_nama='AWAL TAHUN'");
        while ($daftar = mysql_fetch_array($query)) {
    echo "<tr>
        <td>".$daftar['total']."</td>
        <td>".$daftar['sisa']."</td>
        <td>".$daftar['keterangan']."</td>
      </tr>";
  }
?>

    <!--PRAKERIN-->
         
        <table border="1" class="table table-hover">
        <h4><b>PRAKERIN</b></h4>
          <tr>
            <th>Total</th>
            <th>Sisa</th>
            <th>Keterangan</th></b>
          </tr>     
<?php
        include "koneksi.php";

        $nipd = $user;
        $query = mysql_query ("select t.NIPD, d.total, d.sisa, d.keterangan from kategori k, detail_tunggakan d,
                               tunggakan t where t.kategori_id=k.kategori_id AND t.tunggakan_id=d.tunggakan_id AND t.NIPD = '$nipd' 
                               AND k.kategori_nama='PRAKERIN'");
        while ($daftar = mysql_fetch_array($query)) {
    echo "<tr>
        <td>".$daftar['total']."</td>
        <td>".$daftar['sisa']."</td>
        <td>".$daftar['keterangan']."</td>
      </tr>";
  }
?>
</table>
</section>
</section>

<script src="aset/js/jquery.js"></script>
    <script src="aset/js/jjquery-1.8.3.min.js"></script>
    <script src="aset/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="aset/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="aset/js/jquery.scrollTo.min.js"></script>
    <script src="aset/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="aset/js/common-scripts.js"></script>

    <!--script for this page-->
    <script type="text/javascript" src="aset/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="aset/js/gritter-conf.js"></script>
    
  <script>
      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>
  

  </body>
</html>