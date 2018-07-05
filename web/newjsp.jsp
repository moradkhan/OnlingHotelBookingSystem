<%-- 
    Document   : newjsp
    Created on : Mar 3, 2018, 8:51:32 PM
    Author     : MORAD HOSSAIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="resources/js/angular.min.js" type="text/javascript"></script>
        <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="resources/js/myangular.js" type="text/javascript"></script>

        <title>JSP Page</title>
        <%@include file="header.jsp" %>
        <style>
           #email{
              width: 320px;
              margin-left: 12px;
              color: black;
                   
           }
        </style>
    </head>

    <body ng-app="simpleApp" ng-controller="simpleCtrl" style="background-color: #404040">


        <div style="margin-left: 33%">
            <form method="post" ng-submit="submitSimple()" style="color: whitesmoke">
                <input type="button" value="{{simples.length}}" class="btn btn-success btn-lg" />
                <div>
                    <h1>Create Your Own Customized Tour Package</h1>
                    Name : <select ng-model="simpleForm.fname" style="height: 26px;width: 50px;color: black">
                        <option>Mr.</option>
                        <option>Mrs.</option>
                    </select><input type="text" placeholder="Full Name" ng-model="simpleForm.lname" style="color: black;width: 267px;height: 26px"> <br/><br/>

                    Email:<input type="email" placeholder="Email" ng-model="simpleForm.email" id="email"><br/><br/>

                    Telephone:<input type="text" name="mno" placeholder="mobile no." ng-model="simpleForm.phone" style="color: black;width: 267px;height: 26px"><br/><br/>
                    <span>Which State would you like to visit? (Select all applicable cities)</span><br/>

                    Select Country:<select ng-model="simpleForm.country" style="color: black">
                        <option>Bangladesh</option>
                        <option>India</option>
                        <option>Pakistan</option>
                        <option>Barma</option>
                    </select>
                    Select Disat: <select ng-model="simpleForm.dist" style="color: black">
                        <option>Jessore</option>
                        <option>Khulna</option>
                        <option>Barisal</option>
                    </select>

                    <br/>
                    <br/>




                    Number of person travelling:<select ng-model="simpleForm.person" style="color: black">
                        <option value="memberA">Adults</option>
                        <option value="member1">1</option>
                        <option value="memberA">2</option>
                        <option value="member1">3</option>
                        <option value="memberA">4</option>
                        <option value="member1">5</option>
                        <option value="memberA">6</option>
                        <option value="member1">group</option>
                    </select>

                    Vehicle:<select ng-model="simpleForm.vehicle" style="color: black">
                        <option value="Air">Air</option>
                        <option value="Rail">Rail</option>
                        <option value="Road">Road</option>


                    </select><br/><br/>
                    <span>Do you have any other preferences?</span><br/><br/>

                    <textarea placeholder="Enter your comments here"ng-model="simpleForm.comment" style="color: black" cols="60" rows="5">
            
                    </textarea><br><br>
                    <input type="submit" value="Submit" class="btn btn-success btn-lg"/>

                </div>   


            </form>  
        </div>
    </body>
</html>
