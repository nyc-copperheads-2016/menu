myApp.controller('FavoritesController',
  [ '$scope', '$routeParams', '$http', function FaveCtrl($scope, $routeParams, $http) {
  var restaurantParam = $routeParams.restaurant_id;
  var itemParam = $routeParams.item_id;
  $scope.saveFave = function() {
    $http({
    url: '/favorites',
    method: "POST",
    data: {'restaurant_id': restaurantParam, 'item_id': itemParam}
    })
  }
}]);
