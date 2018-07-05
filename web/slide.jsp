<%-- 
    Document   : slide
    Created on : Mar 4, 2018, 9:11:00 AM
    Author     : MORAD HOSSAIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="resources/css/slide.css" rel="stylesheet" type="text/css"/>
        <script src="resources/js/menu.js" type="text/javascript"></script>
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <%@include file="header.jsp" %>
        <div id="mySidenav" class="sidenav">
            <div class="container" style="background-color: #2874f0; padding-top: 10px;">
                <span class="sidenav-heading">Home</span>
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
            </div>
            <a href="http://clashhacks.in/">Link</a>
            <a href="http://clashhacks.in/">Link</a>
            <a href="http://clashhacks.in/">Link</a>
            <a href="http://clashhacks.in/">Link</a>
        </div>
        <div class="container">
            <div class="row">
                <!-- for more info please get touch with me by droping a email to me   akj114912@gmail.com -->
                <div id="wrapper">
                    <div id="image">
                        <div class="image i1"><img src="resources/images/hdr1.jpg" style="height: 300px;width: 400px;margin-bottom: 150px"></div>
                        <div class="image i2"><img src="resources/images/Sundarban.jpg" style="height: 300px;width: 400px;margin-bottom: 150px"></div>
                        <div class="image i3"><img src="resources/images/kaptyleck.jpg" style="height: 300px;width: 400px;margin-bottom: 150px"></div>
                        <div class="image i4"><img src="resources/images/Saint_Martin's_Island.JPG" style="height: 300px;width: 400px;margin-bottom: 150px"></div>
                        <div class="image i5"><img src="resources/images/60 gombuj.jpg" style="height: 300px;width: 400px;margin-bottom: 150px"></div>
                        <div class="image i6"><img src="resources/images/Madhabkunda.jpg" style="height: 300px;width: 400px;margin-bottom: 150px"></div>
                        <div class="image i7"><img src="resources/images/coxbazar.jpg" style="height: 300px;width: 400px;margin-bottom: 150px"></div>
                        <div class="image i8"><img src="resources/images/sundorbon.jpg" style="height: 300px;width: 400px;margin-bottom: 150px"></div>
                    </div>
                </div>
            </div>
        </div><br><br><br><br>
        <div>
            <%@include file="footer.jsp" %>  
        </div>
    </body>


</html>
