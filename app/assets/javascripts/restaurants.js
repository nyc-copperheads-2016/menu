// Referencing the myApp module that was created in app.js.
var myApp = angular.module('myApp');

myApp.controller('RestaurantsController',
  ['$http', '$filter', '$scope', function($http, $filter, $scope) {

  $http.get('/api/restaurants')
  .then(function(response) {
    console.log(response);
    $scope.restaurants = response.data;
  });
}]);
