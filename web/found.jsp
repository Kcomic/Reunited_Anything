<%-- 
    Document   : found
    Created on : Nov 18, 2017, 10:57:22 PM
    Author     : founprnp
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
          <div class="navbar-header"><img src="img/logo_web.png" class="logo"><a href="home.jsp" class="navbar-brand">LOST<span style="color: #000000;">STUFF</span></a>
            <div class="navbar-buttons">
              <button type="button" data-toggle="collapse" data-target=".navbar-collapse" class="navbar-toggle navbar-btn">Menu<i class="fa fa-align-justify"></i></button>
            </div>
          </div>
          <div id="navigation" class="collapse navbar-collapse navbar-right">
            <ul class="nav navbar-nav">
              <li><a href="HomeServlet">หน้าหลัก</a></li>
              <li><a href=>ค้นหา</a></li>
              <li><a href=LostServlet>รายการของที่ตามหา</a></li>
              <li class="active"><a href=FoundServlet>รายการของที่พบ</a></li>
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
            <p class="text-center text-muted"><a href="RegisterServlet"><strong>สมัครสมาชิก!</strong></a> เพื่อใช้งานเว็บไซต์</p>
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
            <li><a href="found.jsp">รายการของที่พบ</a></li>
          </ul>
        </div>
        <div class="row">
            <div class="col-xs-3" style="padding-right: 0px;">
                <h1 class="heading">รายการของที่พบ</h1>
            </div>
            <div class="col-xs-2" style="margin-top: 5px;">
                <% session.setAttribute("post", "found"); %>
                <a href="foundPost.jsp"><button type="button" class="btn btn-primary"><i class="fa fa-plus"></i> แจ้งพบของ</button></a>
            </div>
        </div>
        <!-- <p class="lead">This is the lead paragraph of the article. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget.</p> -->
      </div>
    </section>
    <section class="section--little-padding blog-post">
      <div class="container">
        <div class="row">
          <div class="row">
            <div class="col-xs-12" style="padding-left: 30px;padding-right: 30px;height: 30px;">
              <div class="col-xs-2" style="width: 100px;padding-right: 15px;padding-left: 16px;padding-bottom:5px;">
                <p><b>รูป</b></p>
              </div>
              <div class="col-xs-1">
                <p class="list-group-item-text"><b>ประเภท</b></p>
              </div>
              <div class="col-xs-3">
                <p class="list-group-item-text" style="padding-right: 15px;"><b>หัวข้อ</b></p>
              </div>
              <div class="col-xs-2">
                <p class="list-group-item-text" style="padding-left: 5px;"><b>ผู้พบเจอ</b></p>
              </div>
              <div class="col-xs-1"  style="padding-left: 0px;">
                <p class="list-group-item-text"><b>วันที่หาย</b></p>
              </div>
              <div class="col-xs-2"  style="padding-left: 0px;">
                <p class="list-group-item-text"><b>สถานที่หาย</b></p>
              </div>
              <div class="col-xs-1" style="padding-left: 0px;">
                <p class="list-group-item-text"><b>สถานะ</b></p>
              </div>
              </div>
            </div>
          <div class="col-xs-12">
            <div class="list-group">
                 <%  Member userMember = (Member) session.getAttribute("member");
                    String email;
                        if (userMember != null) {
                            email = String.valueOf(userMember.getEmail());
                        }else{
                            email = "no";
                        }
                      List<Post> found_posts = (List<Post>) session.getAttribute("found_posts");
                        if (found_posts != null) {
                            for (Post post : found_posts) {
                    %>
                     <a href="PostDetailServlet?post_id=<%= post.getId()%>&email=<%=email%>" class="list-group-item">
                    <div class="col-xs-2" style="width: 100px;padding-left: 0px;">
                         <figure class="pull-left">
                        <img class="media-object img-rounded img-responsive img-resize"  src="img/<%=post.getId()%>.jpg" alt="" >
                       </figure>
                    </div>
                    <div class="col-xs-1" style="padding-left: 0px;" >
                        <p class="list-group-item-text wording"> <%= post.getType() %> </p>
                    </div>
                    <div class="col-xs-3" style="padding-left: 0px;">
                        <p class="list-group-item-text wording"><%= post.getName() %></p>
                    </div>
                    <div class="col-xs-2">
                        <p class="list-group-item-text wording"><%= post.getFirst_name() %></p>
                    </div>
                    <div class="col-xs-1" style="padding-left: 0px;">
                        <p class="list-group-item-text wording"><%= post.getDate() %></p>
                    </div>
                    <div class="col-xs-2" style="padding-left: 0px;">
                        <p class="list-group-item-text wording"><%= post.getPlace() %></p>
                    </div>
                    <div class="col-xs-1" style="padding-left: 10px;">
                        <p class="list-group-item-text wording" style="color:#FF0000;"><%= post.getValidate() %></p>
                    </div>
                </a>
                 <% }
                        }
                    %>
            </div>

          </div>
        </div>
      </div>
            <div class="row text-center">
   
                <ul class="pagination">
                    <li>
                        <a href="#">&laquo;</a>
                    </li>
                    <li class="active">
                        <a href="#">1</a>
                    </li>
                    <li>
                        <a href="#">2</a>
                    </li>
                    <li>
                        <a href="#">3</a>
                    </li>
                    <li>
                        <a href="#">4</a>
                    </li>
                    <li>
                        <a href="#">5</a>
                    </li>
                    <li>
                        <a href="#">&raquo;</a>
                    </li>
                </ul>
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