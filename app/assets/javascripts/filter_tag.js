myApp.controller('ItemsController',
  ['$scope', '$routeParams', '$http', function MenuCtrl($scope, $routeParams, $http) {
    var params = $routeParams.restaurant_id;
    $http.get('/api/restaurants/'+params+'/items').then(function successCallback(response) {
    $scope.restaurantId = params;
    $scope.restaurant = response.data;

    $scope.currentMenu = $scope.restaurant.menus[0];
    $scope.menuItems = [];
    $scope.findMenuItems();

    $scope.tagType = ["diets", "tastes", "ingredients"];
    $scope.tagFilters = $scope.createTagFilters($scope.findUniqueTags());

    },
    function errorCallback(response) {
      console.log("There was an error");
  });

  $scope.findMenuItems = function() {
    for (var section in $scope.currentMenu.sections) {
      for (var item in $scope.currentMenu.sections[section].items) {
        $scope.menuItems.push($scope.currentMenu.sections[section].items[item]);
      }
    }
  }

  $scope.findUniqueTags = function() {
    var tags = {};
    for (var type in $scope.tagType) {
      angular.forEach($scope.menuItems, function(menuItem) {
        angular.forEach(menuItem[$scope.tagType[type]], function(tag) {
          tags[tag["name"]] = 1;
        });
      });
    };
    return Object.keys(tags).sort();
  };

  $scope.createTagFilters = function(uniqueTags) {
    var filters = [];
    angular.forEach(uniqueTags, function(tag) {
      filters.push({ name: tag, state: 0 });
    });
    return filters;
  };

  $scope.toggleTagState = function(tagFilter) {
    tagFilter.state = (tagFilter.state + 1) % 3;
  };
}]);
