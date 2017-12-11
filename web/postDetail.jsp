<%-- 
    Document   : postDetail
    Created on : Dec 12, 2017, 1:20:15 AM
    Author     : Kawin
--%>

<%@page import="model.PostDetail"%>
<%@page import="model.Post"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                    <div class="navbar-header"><a href="HomeServlet" class="navbar-brand">LOST&<span style="color: #000000;">FOUND</span></a>
                        <div class="navbar-buttons">
                            <button type="button" data-toggle="collapse" data-target=".navbar-collapse" class="navbar-toggle navbar-btn">Menu<i class="fa fa-align-justify"></i></button>
                        </div>
                    </div>
                    <div id="navigation" class="collapse navbar-collapse navbar-right">
                        <ul class="nav navbar-nav">
                            <li class=""><a href="HomeServlet">หน้าหลัก</a></li>
                            <li><a href="text.html">หน้าอะไรไม่รู้</a></li>
                            <!-- <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Dropdown <b class="caret"></b></a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Dropdown item 1</a></li>
                                <li><a href="#">Dropdown item 2</a></li>
                                <li><a href="#">Dropdown item 3</a></li>
                                <li><a href="#">Dropdown item 4</a></li>
                              </ul>
                            </li>
                            <li><a href="contact.html">Contact</a></li> -->
                            <li class="active"><a href="register.html">สมัครสมาชิก</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>

        <section class="section--no-padding background-gray-lightest">
            <div class="container">
                <div class="breadcrumbs">
                    <ul class="breadcrumb">
                        <li><a href="HomeServlet">หน้าแรก</a></li>
                        <li>พบสิ่งของ</li>
                    </ul>
                </div>
                <h1 class="heading">แจ้งพบเจอสิ่งของ</h1>
                <!-- <p class="lead">This is the lead paragraph of the article. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget.</p> -->
            </div>
        </section>
        <div class="ct-read _self-ps_rel" itemprop="articleBody">






            <p>




            <div class="lostlist_listbox">
                <div class="bx-controls"></div></div>
            <div id="bx-pager">



                <a data-slide-index="0" href="" style="float: left; list-style: none; position: relative; width: 160px; margin-right: 10px;">


                    <a data-slide-index="0" href="" style="float: left; list-style: none; position: relative; width: 160px; margin-right: 10px;" class="bx-clone"></a></div></div><div class="bx-controls bx-has-controls-direction"><div class="bx-controls-direction"></div></div></div>
</div>
</div>
<center>
    <body>
        <table align="center" width="762">
            <tr>
                <td>
                    <div id="content_text" class="col-md-7 scrollviewport">
                        <div class="container">

                            <div class="lostlist_box panel panel-info">
                                <div class="active_list_content">
                                    <br>
                                    <br>
                                    <%
                                        PostDetail post = (PostDetail) session.getAttribute("postDetail");
                                    %>
                                    <center>
                                        <img src = "img/<%=post.getId()%>.jpg" width="500" height="300">
                                    </center>
                                    <br>
                                    <br>
                                    <span>ประกาศพบ สิ่งของ ประเภทสิ่งของที่พบเจอ</span>
                                    <br><br>
                                    <p class="hilight"><span>ข้อมูลของที่เจอ</span></p>
                                    <ul class="list-group">
                                        <li class="list-group-item"><font class="fielder"><span>ประเภทสิ่งของที่พบเจอ : </span></font> <%= post.getType()%></li>
                                        <li class="list-group-item"><font class="fielder"><span>วันที่พบ : </span></font> <%= post.getDate()%></li>
                                        <li class="list-group-item"><font class="fielder"><span>ช่วงเวลาที่พบเจอ : </span></font> <%= post.getTime()%> น.</li>
                                        <li class="list-group-item"><font class="fielder"><span>เพศ : </span></font> ไม่ระบุเพศ</li>
                                        <li class="list-group-item"><font class="fielder"><span>ชื่อสถานที่ : </span></font> <%= post.getPlace()%></li>
                                        <li class="list-group-item"><font class="fielder"><span>รายละเอียดเพิ่มเติม : </span></font> <br><%= post.getDetail()%> </li>
                                    </ul>

                                </div>
                                <div class="active_list_content">
                                    <p class="hilight"><span>ข้อมูลติดต่อกลับ</span></p>
                                    <ul class="list-group">
                                        <li class="list-group-item"><font class="fielder"><span>ชื่อ-นามสกุล : </span></font><%= post.getFirstName()%> <%= post.getLastName()%></li>
                                        <li class="list-group-item"><font class="fielder"><span>เบอร์โทร : </span></font><%= post.getPhone()%></li>
                                        <li class="list-group-item"><font class="fielder"><span>อีเมล์ : </span></font><%= post.getEmail()%></li>
                                        <li class="list-group-item"><font class="fielder"><span>ที่อยู่ : </span></font>ตำบล หน้าเมือง อำเภอ เมือง จังหวัด ราชบุรี รหัสไปรษณีย์ 70000</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                    </div></div>
            </tr>
            </td>
    </body>
</center>


</div>

<!-- Javascript files-->
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