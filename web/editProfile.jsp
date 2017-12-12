<%-- 
    Document   : editProfile
    Created on : Dec 13, 2017, 4:56:40 AM
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
                    <div class="navbar-header"><img src="img/logo_web.png" class="logo"><a href="home.jsp" class="navbar-brand">LOST&<span style="color: #000000;">FOUND</span></a>
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
                        <h4 id="Login" class="modal-title">Customer login</h4>
                    </div>
                    <div class="modal-body">
                        <form action="customer-orders.html" method="post">
                            <div class="form-group">
                                <input id="email_modal" type="text" placeholder="email" class="form-control">
                            </div>
                            <div class="form-group">
                                <input id="password_modal" type="password" placeholder="password" class="form-control">
                            </div>
                            <p class="text-center">
                                <button type="button" class="btn btn-primary"><i class="fa fa-sign-in"></i> Log in</button>
                            </p>
                        </form>
                        <p class="text-center text-muted">Not registered yet?</p>
                        <p class="text-center text-muted"><a href="#"><strong>Register now</strong></a>! It is easy and done in 1 minute and gives you access to special discounts and much more!</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- *** edit Profile ***_________________________________-->
        <section class="section--no-padding background-gray-lightest">
            <div class="container">
                <div class="breadcrumbs">
                </div>
                <br><h1 class="heading">แก้ไขข้อมูลส่วนตัว</h1>
            </div>
        </section><br>
        <div class="container">
            <div class="col-lg-8">
                <div><img src="img/Screen Shot 2560-11-18 at 20.51.10.jpg" class="rounded-circle"  alt="Cinque Terre" width="304" height="236"></div><br>
                <div><button type="editpic" class="btn btn-primary" class=".col-"> แก้ไขรูปภาพ </button></div><br>
                <form>
                    <h3>แก้ไข อีเมล์และรหัสผ่าน</h3>
                    <hr>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="email">อีเมล</label>
                                <input id="email" type="text" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="password">รหัสผ่าน</label>
                                <input id="password" type="text" class="form-control">
                            </div>
                        </div>
                    </div> 
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="passwordagain">รหัสผ่านอีกครั้ง</label>
                                <input id="passwordagain" type="text" class="form-control">
                            </div>
                        </div>
                    </div>
                </form>
                <form>
                    <h3>แก้ไข ข้อมูลส่วนตัว</h3>
                    <hr>
                    <div class="row">
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="fristname">ชื่อจริง</label>
                                <input id="frist" type="text" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="lastname">นามสกุล</label>
                                <input id="lastname" type="text" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="phonenumber">เบอร์โทรศัพท์</label>
                                <input id="phonenumber" type="text" class="form-control">
                            </div>
                        </div> 
                    </div>
                    <div><button type="ok" class="btn btn-primary" class=".col-"> บันทึกการเปลี่ยนแปลง </button></div><br>  
                </form>
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
    </body>
</html>
