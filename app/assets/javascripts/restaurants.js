angular.module('restaurants', []).controller('RestaurantsController',
  ['$http', '$filter', '$scope', function($http, $filter, $scope) {

  $http.get('/restaurants')
  .then(function(response) {
    console.log(response);
    $scope.restaurants = response.data;
  });
}]);
