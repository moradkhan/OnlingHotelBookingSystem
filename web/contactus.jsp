<%-- 
    Document   : contactus
    Created on : Mar 5, 2018, 12:40:44 AM
    Author     : MORAD HOSSAIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">    
        <link href="resources/css/contact.css" rel="stylesheet" type="text/css"/>
        <%@include file="header.jsp" %>
    </head>
    <body style="background-color: #737373">
        <div class="container animated fadeIn">

            <div class="row">
                <h1 class="header-title"> Contact </h1>
                <hr>
                <div class="col-sm-12" id="parent">
                    <div class="col-sm-6">
                         <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3652.096530294641!2d90.3704033143584!3d23.743936894941555!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755bf4b9dfea6f7%3A0x9a5c92b1a22e81f!2sAsia+Pacific+Communication+Ltd.!5e0!3m2!1sen!2sbd!4v1520190049468" width="550" height="260" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>

                    <div class="col-sm-6">
                        <form action="form.php" class="contact-form" method="post">

                            <div class="form-group">
                                <input type="text" class="form-control" id="name" name="nm" placeholder="Name" required="" autofocus="">
                            </div>


                            <div class="form-group form_left">
                                <input type="email" class="form-control" id="email" name="em" placeholder="Email" required="">
                            </div>

                            <div class="form-group">
                                <input type="text" class="form-control" id="phone" onkeypress="return event.charCode >= 48 && event.charCode <= 57" maxlength="10" placeholder="Mobile No." required="">
                            </div>
                            <div class="form-group">
                                <textarea class="form-control textarea-contact" rows="5" id="comment" name="FB" placeholder="Type Your Message/Feedback here..." required=""></textarea>
                                <br>
                                <button class="btn btn-default btn-send"> <span class="glyphicon glyphicon-send"></span> Send </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="container second-portion">
                <div class="row">
                    <!-- Boxes de Acoes -->
                    <div class="col-xs-12 col-sm-6 col-lg-4">
                        <div class="box">							
                            <div class="icon">
                                <div class="image"><i class="fa fa-envelope" aria-hidden="true"></i></div>
                                <div class="info">
                                    <h3 class="title">MAIL & WEBSITE</h3>
                                    <p  style="color: white">
                                        <i class="fa fa-envelope" aria-hidden="true"></i> &nbsp gondhiyahardik6610@gmail.com
                                        <br>
                                        <br>
                                        <i class="fa fa-globe" aria-hidden="true"></i> &nbsp www.hardikgondhiya.com
                                    </p>

                                </div>
                            </div>
                            <div class="space"></div>
                        </div> 
                    </div>

                    <div class="col-xs-12 col-sm-6 col-lg-4">
                        <div class="box">							
                            <div class="icon">
                                <div class="image"><i class="fa fa-mobile" aria-hidden="true"></i></div>
                                <div class="info">
                                    <h3 class="title">CONTACT</h3>
                                    <p  style="color: white">
                                        <i class="fa fa-mobile" aria-hidden="true"></i> &nbsp (+880)-192111951
                                        <br>
                                        <br>
                                        <i class="fa fa-mobile" aria-hidden="true"></i> &nbsp  (+880)-1756706520
                                    </p>
                                </div>
                            </div>
                            <div class="space"></div>
                        </div> 
                    </div>

                    <div class="col-xs-12 col-sm-6 col-lg-4">
                        <div class="box">							
                            <div class="icon">
                                <div class="image"><i class="fa fa-map-marker" aria-hidden="true"></i></div>
                                <div class="info">
                                    <h3 class="title">ADDRESS</h3>
                                    <p  style="color: white">
                                        <i class="fa fa-map-marker" aria-hidden="true"></i> &nbsp 15/3 Junction Plot 
                                        "Shree Krishna Krupa", Dhanmondi - 1209.
                                    </p>
                                </div>
                            </div>
                            <div class="space"></div>
                        </div> 
                    </div>		    
                    <!-- /Boxes de Acoes -->

                    <!--My Portfolio  dont Copy this -->

                </div>
            </div>

        </div>
    </body>
</html>
