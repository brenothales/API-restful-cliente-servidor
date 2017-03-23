angular.module('myApp', ['dataGrid', 'pagination', 'ngMaterial'])
    .controller('myAppController', ['$scope', 'myAppFactory', function ($scope,
myAppFactory) {

        $scope.gridOptions = {
            data: [],
            urlSync: false
        };
        myAppFactory.getData().then(function (responseData) {
            $scope.gridOptions.data = responseData.data;
        })

    }])
    .factory('myAppFactory', function ($http) {
        return {
            getData: function () {
                return $http({
                    method: 'GET',
                    url: 'http://0.0.0.0:3000/api/v1/dogs.json'
                });
            }
        }
    });
