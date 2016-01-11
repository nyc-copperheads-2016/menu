myApp.controller('ItemsController',
  ['$scope', '$routeParams', '$http', function MenuCtrl($scope, $routeParams, $http) {
    var params = $routeParams.restaurant_id;
    $http.get('/api/restaurants/'+params+'/items').then(function successCallback(response) {
    $scope.restaurantId = params;
    $scope.restaurant = response.data;

    $scope.currentMenu = $scope.restaurant.menus[0];
    $scope.sections = $scope.currentMenu.sections;
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
    /* filters array now holds a bunch of tag objects. Ex: { name: tag_name, state: 0 } */
    return filters;
  };

  /* tagFilter is referencing one of the tag objects in the tagFilters variable. */
  $scope.toggleTagState = function(tagFilter) {
    tagFilter.state = (tagFilter.state + 1) % 3;
  };

  /* menuItem references "item" in the HTML ng-repeat directive. Index and array are optional arguments that are not being used in customTagFilter. This fn is being invoked for each menu item, and it determines whether or not the item should be displayed. */
  $scope.customTagFilter = function(menuItem, index, array) {
    var showItem = true;
    /* Within the array of tagFilters tag objects... */
    angular.forEach($scope.tagFilters, function(tagFilter) {
      /* If tag state is 1 (clicked once) AND the menu item's tags do NOT contain the tag of state 1, then set showItem to false. */
      for (var type in $scope.tagType) {
        if (tagFilter.state == 1) {
          if (menuItem[$scope.tagType[type]].length > 0) {
            for (var prop in menuItem[$scope.tagType[type]]) {
              if (menuItem[$scope.tagType[type]][prop]["name"] === tagFilter.name) {
                showItem = true;
              } else {
                showItem = false;
              }
            }
          } else {
            showItem = false;
          }
        }
        if (tagFilter.state == 2) {
          if (menuItem[$scope.tagType[type]].length > 0) {
            for (var prop in menuItem[$scope.tagType[type]]) {
              if (menuItem[$scope.tagType[type]][prop]["name"] === tagFilter.name) {
                showItem = false;
              }
            }
          } else {
            showItem = true;
          }
        }
      }
    });
    return showItem;
  };
}]);
