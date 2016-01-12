myApp.controller('FavoritesController',
  [ '$scope', '$routeParams', '$http', function FaveCtrl($scope, $routeParams, $http) {
  var restaurantParam = $routeParams.restaurant_id;
  var itemParam = $routeParams.item_id;
  $scope.heartClass = "fi-heart unliked";

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
