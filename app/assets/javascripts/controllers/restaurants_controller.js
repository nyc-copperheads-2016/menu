myApp.controller('RestaurantsController',
  ['$http', '$filter', '$scope', function($http, $filter, $scope) {
    $http.get('/api/restaurants')
    .then(function(response) {
      $scope.restaurants = response.data;
    });
  }
]);
