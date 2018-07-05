<%-- 
    Document   : show
    Created on : Mar 4, 2018, 10:57:19 PM
    Author     : MORAD HOSSAIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="resources/js/angular.min.js" type="text/javascript"></script>
        <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="resources/js/myangular.js" type="text/javascript"></script>
        <style>
            #email{
                width: 320px;
                margin-left: 12px;
                color: black;

            }
            table,tr,th,td{
                border: 5px solid #527881;
                color: whitesmoke;
                text-align: center;
            }
            th{
                background-color: #006699;
                 text-align: center;
            }
            td{
                background-color: #133e40; 
               
            }
            th,td{
                 text-align: center;
            }
        </style>
         <%@include file="header.jsp" %>
    </head>

    <body ng-app="simpleApp" ng-controller="simpleCtrl" style="background-color: #245269">
         <div style="margin-left: 33%">
            <form method="post" ng-submit="submitSimple()" style="color: whitesmoke">
                <input type="button" value="{{simples.length}}" class="btn btn-success btn-lg" />
                <div>
                    <h1>Create Administration Customized Tour Package</h1>
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
        <div class="col-sm-12">
            <table class="table">
                <tr>
                    <th  style="text-align: center">ID</th>
                    <th  style="text-align: center">Name</th>
                    <th  style="text-align: center">Email</th>
                    <th  style="text-align: center">Phone</th>
                    <th  style="text-align: center">Country</th>
                    <th  style="text-align: center">District</th>
                    <th  style="text-align: center">Person</th>
                    <th  style="text-align: center">Vehicle</th>
                    <th  style="text-align: center">Comment</th>
                    <th  style="text-align: center">Action</th>
                </tr>

                <tr ng-repeat="simple in simples">
                    <td> {{ simple.id}}</td>

                    <td >{{ simple.fname}}  {{ simple.lname}}</td>  
                    <td >{{ simple.email}}</td>  
                    <td >{{ simple.phone}}</td>  
                    <td >{{ simple.country}}</td>  
                    <td >{{ simple.dist}}</td>  
                    <td >{{ simple.person}}</td>  
                    <td >{{ simple.vehicle}}</td>  
                    <td >{{ simple.comment}}</td>  

                    <td><a ng-click="editSimple(simple)" class="blue-button" style="color: #4BB648">Edit</a> | <a ng-click="deleteSimple(simple)" class="red-button" style="color: #EA4A5A">Delete</a></td>
                </tr>
            </table>

        </div>

    </body>
</html>

