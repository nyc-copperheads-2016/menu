myApp.controller('ItemController',
  ['$scope', '$routeParams', '$http', function ItemCtrl($scope, $routeParams, $http) {
  var restaurantParam = $routeParams.restaurant_id;
  var itemParam = $routeParams.item_id;
  $http.get('http://localhost:3000/api/restaurants/' + restaurantParam + '/items/' + itemParam)
  .then(function successCallback(response) {
    $scope.item = response.data;
  },
  function errorCallback(response) {
      console.log("There was an error");
  });
}]);
