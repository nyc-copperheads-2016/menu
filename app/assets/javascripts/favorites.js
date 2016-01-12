myApp.controller('FavoritesController',
  [ '$scope', '$routeParams', '$http', function FaveCtrl($scope, $routeParams, $http) {
  var restaurantParam = $routeParams.restaurant_id;
  var itemParam = $routeParams.item_id;
  $scope.heartClass = "fi-heart unliked";
  $scope.saveFave = function() {
    if ($scope.heartClass === "fi-heart unliked") {
      $scope.heartClass = "fi-heart liked";
      $http({
        url: '/favorites',
        method: "POST",
        data: {'item_id': itemParam}
      })
    }
    else {
      $scope.heartClass = "fi-heart unliked";
      $http.get('/api/restaurants/' + restaurantParam + '/items/' + itemParam)
      .then(function successCallback(response) {
        $scope.item = response.data;
        var faveId = $scope.item[1].id
        $http({
          url: '/favorites/' + faveId,
          method: "DELETE",
          data: {'item_id': itemParam}
        })
      });
    };
  }
}]);
