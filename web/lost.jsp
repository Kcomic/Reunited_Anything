<%-- 
    Document   : lost
    Created on : Nov 18, 2017, 10:39:59 PM
    Author     : fonprnp
--%>

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
          <div class="navbar-header"><img src="img/logo_web.png" class="logo"><a href="home.jsp" class="navbar-brand">LOST<span style="color: #000000;">STUFF</span></a>
            <div class="navbar-buttons">
              <button type="button" data-toggle="collapse" data-target=".navbar-collapse" class="navbar-toggle navbar-btn">Menu<i class="fa fa-align-justify"></i></button>
            </div>
          </div>
          <div id="navigation" class="collapse navbar-collapse navbar-right">
            <ul class="nav navbar-nav">
              <li><a href="home.jsp">หน้าหลัก</a></li>
              <li class="active"><a href=lost.jsp>รายการของที่ตามหา</a></li>
              <li><a href=found.jsp>รายการของที่ตามหา</a></li>
            </ul>
           <%

                                    String name = (String) session.getAttribute("F_Name");
                                %>
           <a href="#"><i class="fa fa-user"></i> <%=name%> </a>
           <a href="LogoutServlet" class="btn navbar-btn btn-ghost"><i class="fa fa-sign-out"></i>ออกจากระบบ</a>

          </div>
        </div>
      </div>
    </header>
    
    <section class="section--no-padding background-gray-lightest">
      <div class="container">
        <div class="breadcrumbs">
          <ul class="breadcrumb">
            <li><a href="home.jsp">หน้าแรก</a></li>
            <li>รายการของหาย</li>
          </ul>
        </div>
        <h1 class="heading">รายการของหาย</h1>
        <!-- <p class="lead">This is the lead paragraph of the article. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget.</p> -->
      </div>
    </section>
    <section class="section--little-padding blog-post">
      <div class="container">
        <div class="row">
          <div class="row">
            <div class="col-lg-12" style="padding-left: 30px;padding-right: 30px;height: 30px;">
              <div class="col-md-2" style="width: 100px;padding-right: 15px;padding-left: 16px;padding-bottom:5px;">
                <p><b>รูป</b></p>
              </div>
              <div class="col-md-1" style="padding-left: 15px;padding-right: 15px;">
                <p class="list-group-item-text"><b>ประเภท</b></p>
              </div>
              <div class="col-md-3" style="padding-left: 30px;">
                <p class="list-group-item-text" style="padding-right: 15px;"><b>หัวข้อ</b></p>
              </div>
              <div class="col-md-3" style="padding-left: 15px;width: 267px;">
                <p class="list-group-item-text" style="padding-left: 5px;"><b>ผู้พบ</b></p>
              </div>
              <div class="col-md-1" style="width: 92px;">
                <p class="list-group-item-text"><b>วันที่หาย</b></p>
              </div>
              <div class="col-md-1" style="width: 108px;">
                <p class="list-group-item-text"><b>เวลาที่หาย</b></p>
              </div>
              <div class="col-md-1" style="padding-left: 0px;">
                <p class="list-group-item-text"><b>สถานะ</b></p>
              </div>
              </div>
            </div>
          <div class="col-lg-12">
            <div class="list-group">
                <a href="#" class="list-group-item">
                    <div class="col-md-2" style="width: 100px;padding-left: 0px;">
                        <figure class="pull-left">
                        <img class="media-object img-rounded img-responsive img-resize" src="img/lost1.jpg" alt="" >
                       </figure>
                    </div>
                    <div class="col-md-1" style="padding-left: 0px;" >
                        <p class="list-group-item-text wording">ตุ๊กตา</p>
                    </div>
                    <div class="col-md-3">
                        <p class="list-group-item-text wording">ตามหานุ้งหมีไรอันแสนน่ารักค่ะ ฮือ ไม่มีรางวัล มีแต่ใจให้ไปไม่คิดอะไร แง</p>
                    </div>
                    <div class="col-md-3">
                        <p class="list-group-item-text wording">น้ำฝนคนเดิมเพิ่มเติมคือน่ารักมากๆ</p>
                    </div>
                    <div class="col-md-1" style="padding-left: 0px;">
                        <p class="list-group-item-text wording">15/10/2014</p>
                    </div>
                    <div class="col-md-1" style="padding-left: 0px;">
                        <p class="list-group-item-text wording">16.00 น.</p>
                    </div>
                    <div class="col-md-1" style="padding-left: 0px;width: 150px;">
                        <p class="list-group-item-text wording" style="color:#FF0000;">ยังไม่พบ</p>
                    </div>
                </a>
                <a href="#" class="list-group-item">
                    <div class="col-md-2" style="width: 100px;padding-left: 0px;">
                        <figure class="pull-left">
                        <img class="media-object img-rounded img-responsive img-resize" src="img/lost2.jpg" alt="" >
                       </figure>
                    </div>
                    <div class="col-md-1" style="padding-left: 0px;" >
                        <p class="list-group-item-text wording">โทรศัพท์</p>
                    </div>
                    <div class="col-md-3">
                        <p class="list-group-item-text wording">ไอโฟนของหน่องเอง</p>
                    </div>
                    <div class="col-md-3">
                        <p class="list-group-item-text wording">น้ำฝนคนเดิมเพิ่มเติมคือน่ารักมากๆอีกแล้วจย้า</p>
                    </div>
                    <div class="col-md-1" style="padding-left: 0px;">
                        <p class="list-group-item-text wording">15/10/2014</p>
                    </div>
                    <div class="col-md-1" style="padding-left: 0px;">
                        <p class="list-group-item-text wording">16.00 น.</p>
                    </div>
                    <div class="col-md-1" style="padding-left: 0px;width: 150px;">
                        <p class="list-group-item-text wording" style="color:#FF0000;">ยังไม่พบ</p>
                    </div>
                </a>
                <a href="#" class="list-group-item">
                    <div class="col-md-2" style="width: 100px;padding-left: 0px;">
                        <figure class="pull-left">
                        <img class="media-object img-rounded img-responsive img-resize" src="img/lost1.jpg" alt="" >
                       </figure>
                    </div>
                    <div class="col-md-1" style="padding-left: 0px;" >
                        <p class="list-group-item-text wording">ตุ๊กตา</p>
                    </div>
                    <div class="col-md-3">
                        <p class="list-group-item-text wording">ตามหานุ้งหมีไรอันแสนน่ารักค่ะ ฮือ ไม่มีรางวัล มีแต่ใจให้ไปไม่คิดอะไร แง</p>
                    </div>
                    <div class="col-md-3">
                        <p class="list-group-item-text wording">น้ำฝนคนเดิมเพิ่มเติมคือน่ารักมากๆ</p>
                    </div>
                    <div class="col-md-1" style="padding-left: 0px;">
                        <p class="list-group-item-text wording">15/10/2014</p>
                    </div>
                    <div class="col-md-1" style="padding-left: 0px;">
                        <p class="list-group-item-text wording">16.00 น.</p>
                    </div>
                    <div class="col-md-1" style="padding-left: 0px;width: 150px;">
                        <p class="list-group-item-text wording" style="color:#FF0000;">ยังไม่พบ</p>
                    </div>
                </a>
                <a href="#" class="list-group-item">
                    <div class="col-md-2" style="width: 100px;padding-left: 0px;">
                        <figure class="pull-left">
                        <img class="media-object img-rounded img-responsive img-resize" src="img/lost2.jpg" alt="" >
                       </figure>
                    </div>
                    <div class="col-md-1" style="padding-left: 0px;" >
                        <p class="list-group-item-text wording">โทรศัพท์</p>
                    </div>
                    <div class="col-md-3">
                        <p class="list-group-item-text wording">ไอโฟนของหน่องเอง</p>
                    </div>
                    <div class="col-md-3">
                        <p class="list-group-item-text wording">น้ำฝนคนเดิมเพิ่มเติมคือน่ารักมากๆอีกแล้วจย้า</p>
                    </div>
                    <div class="col-md-1" style="padding-left: 0px;">
                        <p class="list-group-item-text wording">15/10/2014</p>
                    </div>
                    <div class="col-md-1" style="padding-left: 0px;">
                        <p class="list-group-item-text wording">16.00 น.</p>
                    </div>
                    <div class="col-md-1" style="padding-left: 0px;width: 150px;">
                        <p class="list-group-item-text wording" style="color:#FF0000;">ยังไม่พบ</p>
                    </div>
                </a>
            </div>

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
