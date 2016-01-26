myApp.controller('UserController',
  ['$http', '$scope', '$routeParams', function($http, $scope, $routeParams) {
  var userParam = $routeParams.user_id;

  $http.get('/api/users/' + userParam)
  .then(function(response) {
    $scope.user = response.data;
  });
}]);
