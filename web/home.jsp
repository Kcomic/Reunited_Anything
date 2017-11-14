<%-- 
    Document   : home
    Created on : Nov 14, 2017, 4:15:28 PM
    Author     : Kcomic
--%>

<%@page import="java.util.List"%>
<%@page import="model.Post"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>LOST&FOUND KMITL</title>
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
    <link rel="shortcut icon" href="favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
    <!-- navbar-->
    <header class="header">
      <div role="navigation" class="navbar navbar-default">
        <div class="container">
          <div class="navbar-header"><a href="home.jsp" class="navbar-brand">LOST&<span style="color: #000000;">FOUND</span></a>
            <div class="navbar-buttons">
              <button type="button" data-toggle="collapse" data-target=".navbar-collapse" class="navbar-toggle navbar-btn">Menu<i class="fa fa-align-justify"></i></button>
            </div>
          </div>
          <div id="navigation" class="collapse navbar-collapse navbar-right">
            <ul class="nav navbar-nav">
              <li class="active"><a href="home.jsp">หน้าหลัก</a></li>
              <li><a href=#>หน้าอะไรไม่รู้</a></li>
              <!-- <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Dropdown <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Dropdown item 1</a></li>
                  <li><a href="#">Dropdown item 2</a></li>
                  <li><a href="#">Dropdown item 3</a></li>
                  <li><a href="#">Dropdown item 4</a></li>
                </ul>
              </li>
              <li><a href="contact.html">Contact</a></li> -->
            </ul>
              <%

                                    String name = (String) session.getAttribute("F_Name");
                                    int chk = 0;
                                    if (name == null) {
                                        chk = 1;
                                    }

                                    if (chk == 1) {
                                %>
            <a href="#" data-toggle="modal" data-target="#login-modal" class="btn navbar-btn btn-ghost"><i class="fa fa-sign-in"></i>เข้าสู่ระบบ</a>
          </div>
        </div>
      </div>
    </header>
    <!-- *** LOGIN MODAL ***_________________________________________________________
    -->
    <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true" class="modal fade">
      <div class="modal-dialog modal-sm">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" data-dismiss="modal" aria-hidden="true" class="close">×</button>
            <h4 id="Login" class="modal-title">เข้าสู่ระบบ</h4>
          </div>
          <div class="modal-body">
            <form action="Login.do" method="post">
              <div class="form-group">
                <input id="email_modal" type="text" placeholder="อีเมล" class="form-control" name="username">
              </div>
              <div class="form-group">
                  <input id="password_modal" type="password" placeholder="รหัสผ่าน" class="form-control" name="password">
              </div>
              <p class="text-center">
                <button type="submit" class="btn btn-primary"><i class="fa fa-sign-in"></i>เข้าสู่ระบบ</button>
              </p>
            </form>
            <p class="text-center text-muted">ยังไม่ได้เป็นสมาชิก ?</p>
            <p class="text-center text-muted"><a href="register.html"><strong>สมัครสมาชิก!</strong></a> เพื่อใช้งานเว็บไซต์</p>
          </div>
        </div>
      </div>
    </div>
    <!-- *** LOGIN MODAL END ***-->
    <% }
                                        if (chk == 0) {
                                    %> 
                                    <a href="#"><i class="fa fa-user"></i> <%=name%> </a>
                                    <a href="LogoutServlet" class="btn navbar-btn btn-ghost"><i class="fa fa-sign-out"></i>ออกจากระบบ</a>
          </div>
        </div>
      </div>
    </header>
    <!-- *** LOGIN MODAL ***_________________________________________________________
    -->
    <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true" class="modal fade">
      <div class="modal-dialog modal-sm">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" data-dismiss="modal" aria-hidden="true" class="close">×</button>
            <h4 id="Login" class="modal-title">เข้าสู่ระบบ</h4>
          </div>
          <div class="modal-body">
            <form action="Login.do" method="post">
              <div class="form-group">
                <input id="email_modal" type="text" placeholder="อีเมล" class="form-control" name="username">
              </div>
              <div class="form-group">
                  <input id="password_modal" type="password" placeholder="รหัสผ่าน" class="form-control" name="password">
              </div>
              <p class="text-center">
                <button type="submit" class="btn btn-primary"><i class="fa fa-sign-in"></i>เข้าสู่ระบบ</button>
              </p>
            </form>
            <p class="text-center text-muted">ยังไม่ได้เป็นสมาชิก ?</p>
            <p class="text-center text-muted"><a href="register.html"><strong>สมัครสมาชิก!</strong></a> เพื่อใช้งานเว็บไซต์</p>
          </div>
        </div>
      </div>
    </div>
                                    <%}%>
    <div class="jumbotron main-jumbotron" style="margin-bottom: 0px;">
      <div class="container">
        <div class="content">
          <h1>LOST & FOUND at KMITL</h1>
          <p class="margin-bottom">เว็บไซต์ตามหาของหายและคืนของสำหรับนักศึกษาและบุคลากรของสถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง</a></p>
          <div class="col-sm-12">
          <a class="btn btn-white btn-dl-size">ตามหาของ</a>
          <a class="btn btn-white btn-dl-size btn-margin">พบของ</a>
          </div>
        </div>
      </div>
    </div>
    <!-- หัวข้อ-->
    <!-- <section class="section--h2-padding">
      <div class="container">
        <h2 style="text-align:center;">ของที่มีคนพบ</h2>
      </div>
    </section> -->
    <!-- จบหัวข้อ-->
    <!-- list-->
    <section class="section--have-padding background-gray-lightest">
      <div class="container">
        <div class="row">
        <div class="col-md-6">
            <h2 style="text-align:center;">ของที่มีคนตามหา</h2>
            <div class="list-group">
                <% List<Post> posts = (List<Post>) session.getAttribute("posts");
                        if (posts != null) {
                            for (Post post : posts){
                        %>
                <a href="#" class="list-group-item">
                    <div class="col-md-3">
                        <figure class="pull-left">
                        <img class="media-object img-rounded img-responsive"  src="img/lost1.jpg" alt="" >
                       </figure>
                    </div>
                    <div class="col-md-4">
                        <h4 class="list-group-item-heading"> <%=post.getName()%> </h4>
                        <p class="list-group-item-text">วันที่หาย: <%=post.getDate()%></p>
                        <p class="list-group-item-text">เวลาที่หาย: <%=post.getTime()%></p>
                    </div>
                    <div class="col-md-4">
                        <p class="list-group-item-text" style="padding-top:20px;padding-left:5px;">เจ้าของ: <%=post.getFirst_name()%></p>
                    </div>
                </a>
                <% }
                        }
                    %>
            </div>
        </div>


       <div class="col-md-6">
       <h2 style="text-align:center;">ของที่มีคนพบ</h2>
        <div class="list-group">
            <%
                List<Post> found_posts = (List<Post>) session.getAttribute("found_posts");
                        if (found_posts != null) {
                            for (Post post : found_posts){   
                        %>
            <a href="#" class="list-group-item">
                    <div class="col-md-3">
                        <figure class="pull-left">
                        <img class="media-object img-rounded img-responsive"  src="img/found1.jpg" alt="" >
                       </figure>
                    </div>
                    <div class="col-md-4">
                        <h4 class="list-group-item-heading"> <%=post.getName()%> </h4>
                        <p class="list-group-item-text">วันที่หาย: <%=post.getDate()%></p>
                        <p class="list-group-item-text">เวลาที่หาย: <%=post.getTime()%></p>
                    </div>
                    <div class="col-md-4">
                        <p class="list-group-item-text" style="padding-top:20px;padding-left:5px;">เจ้าของ: <%=post.getFirst_name()%></p>
                    </div>
            </a>
            <% }
                        }
                    %>
        </div>
        </div> 
        </div>
      </div>
    </section>
    <!-- list end-->
    
    <footer class="footer">
      <div class="footer__copyright">
        <div class="container">
          <div class="row">
            <div class="col-md-6">
              <p>LOST&FOUND</p>
            </div>
            <div class="col-md-6">
              <p class="credit">SE PROJECT</a></p>
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
