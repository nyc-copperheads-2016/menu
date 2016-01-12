myApp.controller('FavoritesController',
  [ '$scope', '$routeParams', '$http', '$window', function FaveCtrl($scope, $routeParams, $http, $window) {
  var restaurantParam = $routeParams.restaurant_id;
  var itemParam = $routeParams.item_id;

  $http.get('/api/restaurants/' + restaurantParam + '/items/' + itemParam)
  .then(function successCallback(response) {
    $scope.item = response.data;

    if ($scope.item[1] === null) {
      $scope.heartClass = "fi-heart unliked";
    }
    else {
      $scope.heartClass = "fi-heart liked";
    }
  });

  $scope.saveFave = function() {
    $http.get('/api/restaurants/' + restaurantParam + '/items/' + itemParam)
    .then(function successCallback(response) {
      $scope.item = response.data;

      if ($scope.item[1] === null) {
        $scope.heartClass = "fi-heart liked";
        $http({
          url: '/favorites',
          method: "POST",
          data: {'item_id': itemParam}
        });
      }
      else if ($scope.item[1] === '/users/new'){
        $window.location.href = '/users/new';
      }
      else {
        $scope.heartClass = "fi-heart unliked";
        var faveId = $scope.item[1].id;
        $http({
          url: '/favorites/' + faveId,
          method: "DELETE",
          data: {'item_id': itemParam}
        });
      }
    });
  };
}]);
