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
                  <p class="centered"><a href="profile.html"><img src="aset/img/rpl.png" class="img-circle" width="60"></a></p>
                  <h5 class="centered"><?php echo $user; ?></h5>
                    
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

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="glyphicon glyphicon-usd"></i>
                          <span>Pembayaran</span>
                      </a>
                      <ul class="sub">
                        <li><a href="P_spp.php">SPP</a></li>
                        <li><a href="P_awaltahun.php">Awal Tahun</a></li>
                        <li><a href="P_prakerin.php">Prakerin</a></li>
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a class="active" href="javascript:;" >
                          <i class="glyphicon glyphicon-list-alt"></i>
                          <span>Tunggakan</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a class="sub-menu" href="tampil_DaftarUlang.php" >
                          <i class="glyphicon glyphicon-folder-open"></i>
                          <span>Daftar Ulang</span>
                      </a>
                  </li>
              </ul>
          </div>
      </aside>

      <!--ISI-->
      <section id="main-content">
                  <section class="wrapper">

    <?php
        include "koneksi.php";

        $NIPD = $_GET['kode'];
        $query = mysql_query ("select * from peserta_didik, peserta_didik_kelas where peserta_didik.NIPD=peserta_didik_kelas.NIPD AND peserta_didik.NIPD = '$NIPD'");
        $array = mysql_fetch_array($query);
        
      ?>
      &nbsp;
      <form action="proses_DaftarUlang1.php" method="POST">
              <table align="center" width="452"  border="0" align="center" cellpadding="5"  cellspacing="0">
                  <tr>
                      <td>NIPD</td>
                      <td>:</td>
                      <td><input type="text" name="NIPD" value="<?php echo $array ['NIPD']; ?>" readonly></td>
                  </tr>
                  <tr>
                      <td>Nama</td>
                      <td>:</td>
                      <td><input type="text" name="nama" value="<?php echo   $array['pd_nama']; ?>" disabled></td>
                  </tr>
                  <tr>
                      <td>Kelas</td>
                      <td>:</td>
                      <td><input type="text" name="kelas" value="<?php echo   $array['rombel_id']; ?>" disabled></td>
                  </tr>
                  <tr>
                      <td>Keterangan</td>
                      <td>:</td>
                      <td><input  name="keterangan" type="radio" value="Naik" checked> Naik 
                          <input  name="keterangan" type="radio" value="Ulang"> Ulang  </td>
                  </tr>
                  <tr>
                      <td>Tahun Ajaran</td>
                      <td>:</td>
                      <td>  
                          <select name="tahun_ajaran_id">
                              <option disabled="true" selected="">Pilih Data</option>
                                  <?php
                                    include "koneksi.php";
                                    $select = mysql_query("select * from tahun_ajaran");
                                    while($data = mysql_fetch_array($select)){
                                      echo "
                                          <option value=".$data['tahun_ajaran_id'].">".$data['tahun_ajaran_id']."</option>" ;
                                      }
                                    ?>
                          </select>
                      </td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td colspan="3" align="center"><input type="submit" name="submit" value="Bayar">
                          <input type="button" name="batal" onclick="javascript:history.back()" value="Batal"></td>
                  </tr>
              </table>
      </form>
      
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