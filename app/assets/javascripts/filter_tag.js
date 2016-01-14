myApp.controller('ItemsController', ['$scope', '$routeParams', '$http',
  function MenuCtrl($scope, $routeParams, $http) {
  var params = $routeParams.restaurant_id;
  $http.get('/api/restaurants/'+params+'/items').then(function successCallback(response) {
    $scope.restaurantId = params;
    $scope.restaurant = response.data;

    $scope.currentMenu = $scope.restaurant.menus[0];
    $scope.menuItems = $scope.findMenuItems();
    $scope.popularItems = $scope.findPopular();
    $scope.featuredItems = $scope.findFeatured();

    $scope.popularButton = $scope.displayButton($scope.popularItems)
    $scope.featuredButton = $scope.displayButton($scope.featuredItems)

    $scope.tagType = ["diets", "tastes", "ingredients"];
    $scope.tagFilters = $scope.createTagFilters($scope.findUniqueTags());
  }, function errorCallback(response) {
    console.log("There was an error");
  });

  $scope.displayButton = function(items) {
    if (items.length === 0) {
      return false;
    } else {
      return true;
    }
  }

  $scope.findMenuItems = function() {
    items = [];
    for (var section in $scope.currentMenu.sections) {
      for (var item in $scope.currentMenu.sections[section].items) {
        items.push($scope.currentMenu.sections[section].items[item]);
      }
    }
    return items;
  };

  $scope.findFeatured = function() {
    featured = [];
    angular.forEach($scope.menuItems, function(menuItem){
      if (menuItem.featured === true) {
        featured.push(menuItem)
      }
    });
    return featured;
  };

  $scope.findPopular = function() {
    liked = {};
    popular = [];
    trending = [];
    angular.forEach($scope.menuItems, function(menuItem){
      if (menuItem.favorites.length > 0) {
        liked[menuItem.name] = menuItem.favorites.length;
      }
    });
    for (var like in liked) {
      popular.push([like, liked[like]]);
      popular.sort(function(a, b) {
        return b[1] - a[1];
      });
    }
    if (popular.length > 6) {
      popular = popular.slice(0, 5);
    }
    angular.forEach($scope.menuItems, function(menuItem){
      popular.forEach(function(pop) {
        if (pop[0] === menuItem.name) {
          trending.push(menuItem);
        }
      });
    });
    if (trending.length === 0) {
      return false;
    } else {
      return trending;
    }
  };

  $scope.findUniqueTags = function() {
    var tags = {};
    for (var type in $scope.tagType) {
      angular.forEach($scope.menuItems, function(menuItem) {
        angular.forEach(menuItem[$scope.tagType[type]], function(tag) {
          tags[tag["name"]] = $scope.tagType[type];
        });
      });
    }
    return tags;
  };

  $scope.createTagFilters = function(uniqueTags) {
    var filters = [];
    for (var tag in uniqueTags) {
      filters.push({ type: uniqueTags[tag], name: tag, state: 0 });
    }
    return filters;
  };

  $scope.toggleTagState = function(tagFilter) {
    tagFilter.state = (tagFilter.state + 1) % 3;
  };
}]);
