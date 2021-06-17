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

    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap.no-icons.min.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet">
    <script type="text/javascript" async="" src="script.js"></script>
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
                      <a class="active"  href="javascript:;" >
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
                      <a class="sub-menu" href="javascript:;" >
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
                  	<h3 align="center"><b> DATA SISWA </b></h3>
	<select type="search" class="light-table-filter" data-table="table table-hover" >
    <option disabled="true" selected="">Pilih Data</option>
          <?php
            include "koneksi.php";
            $select = mysqli_query($con, "select * from rombel");
            while($data = mysqli_fetch_array($select)){
              echo "
                  <option value=".$data['rombel_id'].">".$data['rombel_id']."</option>" ;
              }
            ?>
  </select>
  <a class="logout" href="tampil_DataSiswa.php">Clear</a>
        <table border="1" class="table table-hover">
    <thead>
      <tr>
        <b><th>NIPD</th>
        <th>NAMA</th>
        <th>KELAS</th>
        <th>JENIS KELAMIN</th></b>
        <th>AKSI</th>
      </tr>
    </thead>
    <tbody>
<?php
  include "koneksi.php";
  $query = mysqli_query($con, "select peserta_didik.NIPD, peserta_didik.pd_nama, peserta_didik_kelas.rombel_id, peserta_didik.pd_jenis_kelamin from peserta_didik, peserta_didik_kelas 
              where peserta_didik.NIPD=peserta_didik_kelas.NIPD order by peserta_didik.NIPD");
  while ($daftar = mysqli_fetch_array($query)) {
    echo "<tr>
        <td>".$daftar['NIPD']."</td>
        <td>".$daftar['pd_nama']."</td>
        <td>".$daftar['rombel_id']."</td>
        <td>".$daftar['pd_jenis_kelamin']."</td>
        <td><a href = 'detail_tunggakan.php?kode=".$daftar['NIPD']."'>Detail</a></td>
      </tr>";
  }
?>
  </tbody>
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