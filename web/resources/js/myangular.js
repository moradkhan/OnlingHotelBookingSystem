

var app = angular.module("simpleApp", []);

app.controller("simpleCtrl", function ($scope, $http) {


    $scope.simples = [];//Array
    $scope.simpleForm = {//$scope.simpleForm ata akti object
        id: -1,
        fname: "",
        lname: "",
        email: "",
        phone: "",
        country: "",
        dist: "",
        person: "",
        vehicle: "",
        comment: ""
    };

    _refreshSimpleData();

    $scope.submitSimple = function () {

        var method = "";
        var url = "";
        if ($scope.simpleForm.id == -1) {
            method = "POST";
            url = 'service/emp';
        } else {

            method = "PUT";
            url = 'service/emp/up/' + $scope.simpleForm.id;
        }

        $http({
            method: method,
            url: url,
            data: angular.toJson($scope.simpleForm),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(_success, _error);
    };

    //HTTP DELETE- delete Message by Id
    $scope.deleteSimple = function (simple) {
        $http({
            method: 'DELETE',
            url: 'service/emp/del/' + simple.id
        }).then(_success, _error);
    };

    $scope.editSimple = function (simple) {
        $scope.simpleForm.id = simple.id,
                $scope.simpleForm.fname = simple.fname,
                $scope.simpleForm.lname = simple.lname,
                $scope.simpleForm.email = simple.email,
                $scope.simpleForm.phone = simple.phone,
                $scope.simpleForm.country = simple.country,
                $scope.simpleForm.dist = simple.dist,
                $scope.simpleForm.person = simple.person,
                $scope.simpleForm.vehile = simple.vehile,
                $scope.simpleForm.comment = simple.comment
        
    };

    function _refreshSimpleData() {
        $http({
            method: 'GET',
            url: 'http://localhost:8080/bangladeshTour.com/service/emp'
        }).then(function xx(response) {
            $scope.simples = response.data;
            console.log(response.data);
        }, function yy(response) {
            console.log(response.statusText);
        });
    }

    function _success(response) {
        _refreshSimpleData();
        _clearFormData()
    }

    function _error(response) {
        console.log(response.statusText);
    }


    function _clearFormData() {
        $scope.simpleForm.id = -1,
                $scope.simpleForm.fname = "",
                $scope.simpleForm.lname = "",
                $scope.simpleForm.email = "",
                $scope.simpleForm.phone = "",
                $scope.simpleForm.country = "",
                $scope.simpleForm.dist = "",
                $scope.simpleForm.person = "",
                $scope.simpleForm.vehile = "",
                $scope.simpleForm.comment = ""
                

    }
    ;

});