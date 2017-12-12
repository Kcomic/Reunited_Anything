<%-- 
    Document   : profile
    Created on : Nov 20, 2017, 5:43:07 PM
    Author     : gracegapi
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
                  <li class=""><a href="home.jsp">หน้าหลัก</a></li>
                  <li><a href=lost.jsp>รายการของที่ตามหา</a></li>
              <li><a href=found.jsp>รายการของที่พบ</a></li>
            </ul>
            <%
                Member member = Member.getInstance();
                String FirstName = member.getFirstName();
                int chk = 0;
                if (FirstName == null) {
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
                                    <a href="#"><i class="fa fa-user"></i> <%=FirstName%> </a>
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

    <section class="section--no-padding background-gray-lightest">
      <div class="container">
        <div class="breadcrumbs">
          <ul class="breadcrumb">
            <li><a href="home.jsp">หน้าแรก</a></li>
            <li>โปรไฟล์</li>
          </ul>
        </div>
        <h1 class="heading">โปรไฟล์</h1>
        <!-- <p class="lead">This is the lead paragraph of the article. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget.</p> -->
      </div>
    </section> <br><br>

    <link href='http://fonts.googleapis.com/css?family=Raleway:400,200' rel='stylesheet' type='text/css'>

    <div class="container">
      <div class="col-6 col-md-4"></div>
      <div class="col-md-4 col-xs-4">
        <div class="profile-block">
          <div class="panel text-center">
            <% if(member.getUploaded() == 0){%>
            <div class="user-heading"><img style="border-radius: 100%;" src="http://cumbrianrun.co.uk/wp-content/uploads/2014/02/default-placeholder-300x300.png" width="250" height="250"><br><br>
                <% } else{ System.out.println("img/"+member.getEmail()+".jpg");%>
            <div class="user-heading"><img style="border-radius: 100%;" src="img/Profiles/<%=member.getEmail()%>.jpg" width="250" height="250"><br><br>
            <% } %>
                <h2><%=member.getFirstName()%> <%= member.getLastName()%></h2>
              <p><span class="fa fa-envelope" style="width:50px"></span><%=member.getEmail()%></p>
              <p><span class="fa fa-phone" style="width:50px" align = "center"></span><%=member.getPhone()%></p>
            </div>
            <ul class="nav nav-pills nav-stacked">  
              <li class="active"><a href="#"><i class="fa fa-pencil-square-o"></i>Edit profile</a></li> 
              <li><a href="#"><i class="fa fa-sign-out"></i>Logout</a></li>
            </ul>
          </div>
        </div>           
      </div>
    </div>
    
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

