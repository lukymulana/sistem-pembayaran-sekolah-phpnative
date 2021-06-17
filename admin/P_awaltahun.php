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

    <title>SITI PEMBELAH</title>


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
    <a href="index.php" class="logo"><b>SITI PEMBELAH (SISTEM INFORMASI PEMBAYARAN SEKOLAH)</b></a>
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
                        <li class="active"><a href="P_awaltahun.php">Awal Tahun</a></li>
                        <li><a href="P_prakerin.php">Prakerin</a></li>
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
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
                    <h3 align="center"><b> PEMBAYARAN AWAL TAHUN </b></h3>
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    &nbsp;
      <form action="cari_detail_tunggakan_AwalTahun.php" method="POST">
              <table align="center" width="500"  border="0" align="center" cellpadding="5"  cellspacing="0">
                  <tr>
                      <td>NIPD</td>
                      <td>:</td>
                      <td align="center"><input type="text" size="50" name="NIPD" ></td>
                  </tr>
                  <tr>
                    <td><font color="white">a</font></td>
                  </tr>
                  <tr>
                      <td colspan="3" align="center"><input type="submit" name="submit" value="Scan">
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