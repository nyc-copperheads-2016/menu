myApp.controller('ItemsController',
  ['$scope', '$routeParams', '$http', function MenuCtrl($scope, $routeParams, $http) {
    var params = $routeParams.restaurant_id;
    $http.get('http://localhost:3000/api/restaurants/'+params+'/items').then(function successCallback(response) {
    $scope.menuItems = response.data;
    $scope.tagFilters = $scope.createTagFilters($scope.findUniqueTags(menuItems));
    },
    function errorCallback(response) {
      console.log("There was an error");
  });

  $scope.findUniqueTags = function(menuItems) {
    var tags = {};
    angular.forEach(menuItems, function(menuItem) {
      angular.forEach(menuItem["diets"], function(tag) {
        tags[tag["name"]] = 1;
      });
    });
    /* return is an array of tag strings */
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
      // if (tagFilter.state == 1 && menuItem.diets.indexOf(tagFilter.name) == -1) {
        // if the current object has a tag name == to the tag that was clicked on
        // hide the item
      debugger

      menuItem.forEach(function (dietTag) {
        // body...
        if (tagFilter.state === 1 && dietTag.tag.forEach(function (tag)) { tag.name } !== tagFilter.name) {
          showItem = false;
        }
        else if (tagFilter.state === 2 && tag.name === tagFilter.name) {
          showItem = false;
        }
      })
    });
    return showItem;
  };
}]);
