<%-- 
    Document   : foundPost
    Created on : Dec 12, 2017, 3:51:59 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.1.3/css/bootstrap-datetimepicker.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

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
                        <li><a href="home.jsp">หน้าแรก</a></li>
                        <li>พบสิ่งของ</li>
                    </ul>
                </div>
                <h1 class="heading">แจ้งพบเจอสิ่งของ</h1>
                <!-- <p class="lead">This is the lead paragraph of the article. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget.</p> -->
            </div>
        </section>
        <form enctype="multipart/form-data" action="PostServlet" method="POST">
        <section class="section--little-padding blog-post">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="post-content">
                            
                                <h4>ข้อมูลสิ่งของ</h4>
                                <hr>
                                <div class="row" style="margin-left: 180px;">
                                    <div class="col-sm-10">
                                        <div class="form-group">
                                            <label for="type_found">หัวข้อ <span class="required">*</span></label>
                                            <input name="name" id="type_found" type="text" placeholder="กรุณาระบุชื่อหัวข้อกระทู้" class="form-control" >
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="margin-left: 180px;">
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <label for="inputStatus" style="float:left;">ประเภท  <span class="required">*</span></label><br>
                                            <div class="col" style="margin-right: 250px;">
                                                <select name="type" class="selectpicker" data-live-search="true" style="float:left; width: 300px; height: 31px;">
                                                    <option data-tokens="all">ทั้งหมด </option>
                                                    <option data-tokens="human">คน</option>
                                                    <option data-tokens="animal">สัตว์</option>

                                                    <option data-tokens="item">สิ่งของ</option>
                                                </select> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <label name="place" for="plase_found">สถานที่พบเจอ <span class="required">*</span></label>
                                            <input id="plase_found" type="text" placeholder="กรุณากรอกสถานที่พบเจอ" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="margin-left: 180px;">

                                    <div class="col-sm-5">
                                            <label for="plase_found">รูปภาพ <span class="required">*</span></label>
                                            <input type="file" name="fileImage"><br>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <label for="date_found">วัน - เวลาที่พบเจอ <span class="required">*</span></label>
                                            <div class="row">
                                                <div class='col-sm-3'>
                                                    <div class="form-group">
                                                        <div class='input-group date' id='datetimepicker1' style="width: 375px;">
                                                            <input name="dateTime" type='text' class="form-control" />
                                                            <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="margin-left: 180px;">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="text_add">รายละเอียดเพิ่มเติม <span class="required">*</span></label>
                                            <textarea name ="detail" id="text_add" type="text" placeholder="  กรุณากรอกรายละเอียดเพิ่มเติม" class="pt-form-comment" style="width: 781px; height: 150px;"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary btn-md" style="margin-left: 550px;">Submit</button>
                                
                        </div>
                        <!-- /.post-content-->
                    </div>
                </div>
            </div>
        </section>
            </form>

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
        <script src="js/jquery.cookie.js"></script>
        <script src="js/lightbox.min.js"></script>
        <script src="js/front.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.1.3/js/bootstrap-datetimepicker.min.js"></script>

        <script>
            $(function () {
                var bindDatePicker = function () {
                    $(".date").datetimepicker({
                        format: 'DD-MM-YYYY HH-mm',
                        icons: {
                            time: "fa fa-clock-o",
                            date: "fa fa-calendar",
                            up: "fa fa-arrow-up",
                            down: "fa fa-arrow-down"
                        }
                    }).find('input:first').on("blur", function () {
                        // check if the date is correct. We can accept dd-mm-yyyy and yyyy-mm-dd.
                        // update the format if it's yyyy-mm-dd
                        var date = parseDate($(this).val());

                        if (!isValidDate(date)) {
                            //create date based on momentjs (we have that)
                            date = moment().format('DD-MM-YYYY HH-mm');
                        }

                        $(this).val(date);
                    });
                }

                var isValidDate = function (value, format) {
                    format = format || false;
                    // lets parse the date to the best of our knowledge
                    if (format) {
                        value = parseDate(value);
                    }

                    var timestamp = Date.parse(value);

                    return isNaN(timestamp) == false;
                }

                var parseDate = function (value) {
                    var m = value.match(/^(\d{1,2})(\/|-)?(\d{1,2})(\/|-)?(\d{4})$/);
                    if (m)
                        value = m[5] + '-' + ("00" + m[3]).slice(-2) + '-' + ("00" + m[1]).slice(-2);
                    var h = d.getHours();
                    h = (h < 10) ? ("0" + h) : h;

                    var m = d.getMinutes();
                    m = (m < 10) ? ("0" + m) : m;

                    return value;
                }

                bindDatePicker();
            });
        </script>
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