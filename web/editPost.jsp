<%-- 
    Document   : editPost
    Created on : Dec 12, 2017, 9:35:20 PM
    Author     : Administrator
--%>

<%@page import="model.PostDetail"%>
<%@page import="model.Member"%>
<%@page import="java.util.List"%>
<%@page import="model.Post"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!DOCTYPE html>
<!DOCTYPE html>
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
          <div class="navbar-header"><a href="index.html" class="navbar-brand">LOST&<span style="color: #000000;">FOUND</span></a>
            <div class="navbar-buttons">
              <button type="button" data-toggle="collapse" data-target=".navbar-collapse" class="navbar-toggle navbar-btn">Menu<i class="fa fa-align-justify"></i></button>
            </div>
          </div>
          <div id="navigation" class="collapse navbar-collapse navbar-right">
            <ul class="nav navbar-nav">
              <li class=""><a href="index.html">หน้าหลัก</a></li>
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
            <li><a href="index.html">หน้าแรก</a></li>
            <li>พบสิ่งของ</li>
          </ul>
        </div>
        <h1 class="heading">น้องแมวหนูหาย เหลือแต่ไฟฉาย</h1>
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
                                    <div class="row">
                                        <%
                                            PostDetail post = (PostDetail) session.getAttribute("postDetail");
                                        %>
                                        <div class="col-sm-5"> <center><div class="box"><a href="https://i.ytimg.com/vi/I9YrKY_jrAY/maxresdefault.jpg" title="" data-lightbox="portfolio" data-title="น้องแมว"><img src="img/<%=post.getId()%>.jpg" alt="" class="img-responsive" width="500" height="300"></a></div> </center>
                                        </div>
                                        <div class="col-sm-7"><br>
                                            <form action="SaveEditServlet?post_id=<%=post.getId()%>" method="POST">

                                                <p class="hilight"><span>ข้อมูลของที่เจอ </span></p>
                                                <li class="list-group-item"><font class="fielder"><span>ประเภทสิ่งของที่พบเจอ : &nbsp;   &nbsp;  &nbsp;</span></font> 
                                                    <div class="col" style="margin-right: 250px;height: 40px;">
                                                        <select name="type" class="selectpicker" data-live-search="true" style="float:left; width: 300px; height: 31px;">
                                                            <option data-tokens="all">ทั้งหมด </option>
                                                            <option data-tokens="human">คน</option>
                                                            <option data-tokens="animal">สัตว์</option>

                                                            <option data-tokens="item">สิ่งของ</option>
                                                        </select> 
                                                    </div>
                                                </li> 
                                                <li class="list-group-item"><font class="fielder"><span>วันที่พบ : </span></font> 
                                                    <div class="form-group">
                                                        <div class='col-sm-3' style="padding-left: 0px;">
                                                            <div class='input-group date' id='datetimepicker1'>
                                                                <input name="dateTime" type='text' class="form-control" style="width: 200px;"><span class="input-group-addon" ><span class="glyphicon glyphicon-calendar" ></span></span>
                                                            </div>
                                                        </div>s
                                                    </div>
                                                </li>
                                                <li class="list-group-item"><font class="fielder"><span>ชื่อสถานที่ : </span></font><input id="type_found" name="place" type="text" text="<%=post.getPlace()%>" class="form-control"></li>
                                                <li class="list-group-item"><font class="fielder"><span>รายละเอียดเพิ่มเติม : </span></font> <br><textarea id="text_add" name="detail" type="text" placeholder="<%=post.getDetail()%>" class="pt-form-comment" style="width: 618px; height: 120px;"></textarea><br>
                                                <li class="list-group-item"><font class="fielder"><span>สถานะสิ่งของ : &nbsp   &nbsp  &nbsp   &nbsp</span></font>
                                                    <input type="radio" name="validate" value="wait" checked="checked" />  ยังไม่พอเจอ&nbsp   &nbsp  &nbsp   &nbsp
                                                    <input type="radio" name="validate" value="finish" /> พบเจอแล้ว
                                                    <br>
                                                </li>
                                                </ul>


                                        </div>

                                    </div> </div>
                            </div>
                            <center><button type="submit" class="btn btn-primary">SAVE</button></center> 
                            </form>
                            <hr>

                            </body>
                            </center>


                        </div>

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
