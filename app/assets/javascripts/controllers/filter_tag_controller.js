myApp.controller('ItemsController', ['$scope', '$routeParams', '$http', 'filterTags',
  function MenuCtrl($scope, $routeParams, $http, filterTags) {
    var params = $routeParams.restaurant_id;
    $http.get('/api/restaurants/'+params+'/items').then(function successCallback(response) {
      $scope.restaurantId = params;
      $scope.restaurant = response.data;

      $scope.currentMenu = $scope.restaurant.menus[0];
      $scope.menuItems = filterTags.findMenuItems($scope.currentMenu);
      $scope.popularItems = filterTags.findPopular($scope.menuItems);
      $scope.featuredItems = filterTags.findFeatured($scope.popularItems);

      $scope.popularButton = filterTags.displayButton($scope.popularItems)
      $scope.featuredButton = filterTags.displayButton($scope.featuredItems)

      $scope.tagType = ["diets", "tastes", "ingredients"];
      $scope.tagFilters = filterTags.createTagFilters(filterTags.findUniqueTags($scope.tagType, $scope.menuItems));
    }, function errorCallback(response) {
      console.log("There was an error");
    });
    $scope.toggleTagState = function(tagFilter) {
      tagFilter.state = (tagFilter.state + 1) % 3;
    };
  }
]);
