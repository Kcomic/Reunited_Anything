<%-- 
    Document   : home
    Created on : Nov 14, 2017, 4:15:28 PM
    Author     : Kcomic
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
                            <li class="active"><a href="HomeServlet">หน้าหลัก</a></li>
                            <li><a href=>ค้นหา</a></li>
                            <li><a href=LostServlet>รายการของที่ตามหา</a></li>
                            <li><a href=FoundServlet>รายการของที่พบ</a></li>
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
<div class="jumbotron main-jumbotron" style="margin-bottom: 0px;">
    <div class="container">
        <div class="content">
            <h1>LOST STUFF at KMITL</h1>
            <p class="margin-bottom">เว็บไซต์ตามหาของหายและคืนของสำหรับนักศึกษาและบุคลากรของสถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง</a></p>
            <div class="col-sm-12">
                <a href="lost.jsp" class="btn btn-white btn-dl-size">ตามหาของ</a>
                <a href="found.jsp" class="btn btn-white btn-dl-size btn-margin">พบของ</a>
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
                    <%  Member userMember = (Member) session.getAttribute("member");
                    String email;
                        if (userMember != null) {
                            email = String.valueOf(userMember.getEmail());
                        }else{
                            email = "no";
                        }
                        List<Post> posts = (List<Post>) session.getAttribute("posts");

                        if (posts != null) {
                            for (Post post : posts) {
                    %>
                    <a href="PostDetailServlet?post_id=<%= post.getId()%>&email=<%=email%>" class="list-group-item">
                        <div class="col-xs-3">
                            <figure class="pull-left">
                                <img class="media-object img-rounded img-responsive img-resize"  src="img/<%=post.getId()%>.jpg" alt="" >
                            </figure>
                        </div>
                        <div class="col-xs-9">
                            <h4 class="list-group-item-heading wording"> <%=post.getName()%> </h4>
                        </div>
                        <div class="col-xs-4">
                            <p class="list-group-item-text wording">วันที่หาย: <%=post.getDate()%></p>
                            <p class="list-group-item-text wording">เวลาที่หาย: <%=post.getTime()%></p>
                        </div>
                        <div class="col-xs-4">
                            <p class="list-group-item-text wording">เจ้าของ: <%=post.getFirst_name()%></p>
                        </div>
                    </a>
                    <% }
                        }
                    %>
                </div>
                <div class="row">
                    <div class="col-sm-12 text-right">
                        <button type="button" class="btn btn-primary"><i class="fa fa-plus"></i> อ่านต่อ</button>
                    </div>
                </div>
            </div>


            <div class="col-md-6">
                <h2 style="text-align:center;">ของที่มีคนพบ</h2>
                <div class="list-group">
                    <%
                      
                        List<Post> found_posts = (List<Post>) session.getAttribute("found_posts");
                        if (found_posts != null) {
                            for (Post post : found_posts) {
                    %>
                    <a href="PostDetailServlet?post_id= <%= post.getId()%>&email=<%=email%>" class="list-group-item">
                        <div class="col-xs-3">
                            <figure class="pull-left">
                                <img class="media-object img-rounded img-responsive img-resize"  src="img/<%=post.getId()%>.jpg" alt="" >
                            </figure>
                        </div>
                        <div class="col-xs-9">
                            <h4 class="list-group-item-heading wording"> <%=post.getName()%> </h4>
                        </div>
                        <div class="col-xs-4">
                            <p class="list-group-item-text wording">วันที่หาย: <%=post.getDate()%></p>
                            <p class="list-group-item-text wording">เวลาที่หาย: <%=post.getTime()%></p>
                        </div>
                        <div class="col-xs-4">
                            <p class="list-group-item-text wording">เจ้าของ: <%=post.getFirst_name()%></p>
                        </div>
                    </a>
                    <% }
                        }
                    %>
                </div>
                <div class="row">
                    <div class="col-sm-12 text-right">
                        <button type="button" class="btn btn-primary"><i class="fa fa-plus"></i> อ่านต่อ</button>
                    </div>
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

<script src="https://www.gstatic.com/firebasejs/4.8.0/firebase.js"></script>
<script>
    // Initialize Firebase
    var config = {
        apiKey: "AIzaSyD_fFA9Ec-QDLW4qpGFpTlbL0PgCTlZiZc",
        authDomain: "reunited-anything.firebaseapp.com",
        databaseURL: "https://reunited-anything.firebaseio.com",
        projectId: "reunited-anything",
        storageBucket: "",
        messagingSenderId: "243586778261"
    };
    firebase.initializeApp(config);
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.cookie.js"></script>
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
