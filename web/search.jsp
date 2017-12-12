<%-- 
    Document   : search
    Created on : Dec 12, 2017, 6:16:00 PM
    Author     : User
--%>

<%@page import="model.Member"%>
<%@page import="java.util.List"%>
<%@page import="model.Post"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>LOST STUFF KMITL</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Font Awesome and Pixeden Icon Stroke icon fonts-->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/pe-icon-7-stroke.css">
    <!-- Google fonts - Roboto-->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,700">
    <!-- lightbox-->
    <link rel="stylesheet" href="css/lightbox.min.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/logo_web.ico" type="image/x-icon"> 
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
    <!-- navbar-->
    <header class="header">
      <div role="navigation" class="navbar navbar-default">
        <div class="container">
          <div class="navbar-header"><a href="index.html" class="navbar-brand">LOST<span style="color: #000000;">STUFF</span></a>
            <div class="navbar-buttons">
              <button type="button" data-toggle="collapse" data-target=".navbar-collapse" class="navbar-toggle navbar-btn">Menu<i class="fa fa-align-justify"></i></button>
            </div>
          </div>
          <div id="navigation" class="collapse navbar-collapse navbar-right">
            <ul class="nav navbar-nav">
              <li><a href="HomeServlet">หน้าหลัก</a></li>
              <li class="active"><a href=>ค้นหา</a></li>
              <li><a href=LostServlet>รายการของที่ตามหา</a></li>
              <li><a href=FoundServlet>รายการของที่พบ</a></li>
              <li><a href="register.html">สมัครสมาชิก</a></li>
            </ul>
          </div>
        </div>
      </div>
    </header>
    
    <section class="section--no-padding background-gray-lightest">
      <div class="container">
        <div class="breadcrumbs">
          <ul class="breadcrumb">
            <li><a href="index.html">หน้าแรก</a></li>
            <li>ค้นหา</li>
          </ul>
        </div>
        <div class="row">
        <div class="col-xs-3">
        <h1 class="heading">ค้นหา</h1>
        </div>
        </div>
      </div>
    </section>
    <section class="section--little-padding blog-post" style="margin-left: 370px;">
      <div class="container">
        <div class="row">
          <div class="col-sm-12">
            <div class="post-content">
              <form>
              <!-- <h4>ค้นหารายการของ</h4>
                <hr> -->
                <div class="row">
                  <div class="col-sm-6">
                    <div class="form-group">
                      <div class="col-sm-3" style="padding-left: 0px;">
                        <label for="inputStatus">ต้องการค้นหา</label>
                      </div>
                      <label class="radio-inline"><input type="radio" style="margin-top: 7px;" checked="checked" name="optradio">ทั้งหมด</label>
                      <label class="radio-inline"><input type="radio" style="margin-top: 7px;" name="optradio">ของหาย</label>
                      <label class="radio-inline"><input type="radio" style="margin-top: 7px;" name="optradio">ของที่พบ</label>
                    </div>
                  </div>
                </div>

            <div class="col-sm-6">
            <div class="form-group row">
              <label for="inputStatus" style="float:left;">ประเภท</label>
                      <div class="col-sm-2">
                        <select class="selectpicker" data-live-search="true" style="float:left; width: 150px;">
                            <option data-tokens="ketchup mustard">ทั้งหมด </option>
                            <option data-tokens="mustard">คน</option>
                            <option data-tokens="frosting">สัตว์</option>
                            <option data-tokens="frosting">สิ่งของ</option>
                        </select>
                      </div>
                      </div>
                      </div>

                <div class="row">
                  <div class="col-sm-8">
                    <div class="form-group">
                      <div class="col-sm-3" style="padding-left: 0px;">
                        <label for="inputStatus">สถานที่</label>
                      </div>
                      <input type="text" placeholder="สถานที่" class="form-control">
                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-sm-8">
                    <div class="form-group">
                      <div class="col-sm-3" style="padding-left: 0px;">
                        <label for="inputStatus">รายละเอียด</label>
                      </div>
                      <input type="text" placeholder="รายละเอียด" class="form-control">
                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-sm-12">
                    <button type="button" class="btn btn-primary"><i class="fa fa-search"></i>ค้นหา</button>
                  </div>
                </div>
              </form>
            </div>
            <!-- /.post-content-->
          </div>
        </div>
      </div>
    </section>
    
    <footer class="footer">
      <div class="footer__copyright">
        <div class="container">
          <div class="row">
            <div class="col-md-6">
              <p>&copy;2016 Best company</p>
            </div>
            <div class="col-md-6">
              <p class="credit">Code <a href="https://bootstrapious.com/e-commerce-templates" class="external">Bootstrapious</a></p>
              <!-- Please do not remove the backlink to us unless you support us at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- Javascript files-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.cookie.js"> </script>
    <script src="js/lightbox.min.js"></script>
    <script src="js/front.js"></script>
    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID.-->
    <!---->
    <script>
    //   (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
    //   function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
    //   e=o.createElement(i);r=o.getElementsByTagName(i)[0];
    //   e.src='//www.google-analytics.com/analytics.js';
    //   r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
    //   ga('create','UA-XXXXX-X');ga('send','pageview');
    // </script>
  </body>
</html>