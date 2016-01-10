angular.module('restaurants', ['ngRoute']).controller('RestaurantsController',
  ['$http', '$filter', '$scope', function($http, $filter, $scope) {

  $http.get('/api/restaurants')
  .then(function(response) {
    console.log(response);
    $scope.restaurants = response.data;
  });
}]);
