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
            <li><a class="logout" href="logout.php">Logout</a></li>
    	</ul>
    </div>
     </header>


     <aside>
          <div id="sidebar"  class="nav-collapse ">
              <ul class="sidebar-menu" id="nav-accordion">
              	  <p class="centered"><a href="profile.html"><img src="aset/img/rpl.png" class="img-circle" width="60"></a></p>
              	  <h5 class="centered"><?php echo $user; ?></h5>
              	  	
                  <li class="mt">
                      <a class="active" href="index.php">
                          <i class="glyphicon glyphicon-home"></i>
                          <span>Home</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a class="sub-menu" href="tampil_DataSiswa.php" >
                          <i class="glyphicon glyphicon-user"></i>
                          <span>Data Siswa</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a class="sub-menu" href="javascript:;" >
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
                      <a class="sub-menu" href="#" >
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


<script src="aset/js/jquery.js"></script>
    <script src="aset/js/jquery-1.8.3.min.js"></script>
    <script src="aset/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="aset/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="aset/js/jquery.scrollTo.min.js"></script>
    <script src="aset/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="aset/js/jquery.sparkline.js"></script>


    <!--common script for all pages-->
    <script src="aset/js/common-scripts.js"></script>
    
    <script type="text/javascript" src="aset/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="aset/js/gritter-conf.js"></script>

    <!--script for this page-->
    <script src="aset/js/sparkline-chart.js"></script>    
	<script src="aset/js/zabuto_calendar.js"></script>	
	
	<script type="text/javascript">
        $(document).ready(function () {
        var unique_id = $.gritter.add({
            // (string | mandatory) the heading of the notification
            title: 'Welcome to Dashgum!',
            // (string | mandatory) the text inside the notification
            text: 'Hover me to enable the Close Button. You can hide the left sidebar clicking on the button next to the logo. Free version for <a href="http://blacktie.co" target="_blank" style="color:#ffd777">BlackTie.co</a>.',
            // (string | optional) the image to display on the left
            image: 'aset/img/ui-sam.jpg',
            // (bool | optional) if you want it to fade out on its own or just sit there
            sticky: true,
            // (int | optional) the time you want it to be alive for before fading out
            time: '',
            // (string | optional) the class name you want to apply to that specific message
            class_name: 'my-sticky-class'
        });

        return false;
        });
	</script>
	
	<script type="application/javascript">
        $(document).ready(function () {
            $("#date-popover").popover({html: true, trigger: "manual"});
            $("#date-popover").hide();
            $("#date-popover").click(function (e) {
                $(this).hide();
            });
        
            $("#my-calendar").zabuto_calendar({
                action: function () {
                    return myDateFunction(this.id, false);
                },
                action_nav: function () {
                    return myNavFunction(this.id);
                },
                ajax: {
                    url: "show_data.php?action=1",
                    modal: true
                },
                legend: [
                    {type: "text", label: "Special event", badge: "00"},
                    {type: "block", label: "Regular event", }
                ]
            });
        });
        
        
        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }
    </script>
  

  </body>
</html>