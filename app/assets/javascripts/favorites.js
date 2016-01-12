myApp.controller('FavoritesController',
  [ '$scope', '$routeParams', '$http', function FaveCtrl($scope, $routeParams, $http) {
  var restaurantParam = $routeParams.restaurant_id;
  var itemParam = $routeParams.item_id;
  $scope.heartClass = "fi-heart unliked";
  $scope.saveFave = function() {
    if ($scope.heartClass === "fi-heart unliked") {
      $scope.heartClass = "fi-heart liked";
    }
    else {
      $scope.heartClass = "fi-heart unliked";
    };
    $http({
    url: '/favorites',
    method: "POST",
    data: {'restaurant_id': restaurantParam, 'item_id': itemParam}
    })
  }
}]);
