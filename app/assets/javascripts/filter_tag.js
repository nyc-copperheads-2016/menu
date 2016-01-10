var myApp = angular.module('myApp',[]);

angular.module('myApp').controller('MainController',
  ['$scope', '$http', function MenuCtrl($scope, $http) {
   $http.get('http://localhost:3000/menus/1/items').then(function successCallback(response) {
    $scope.menuItems = response;
  },
    function errorCallback(response) {
      console.log("There was an error");
  });

  // $scope.menuItems = [
  //   {name: 'Burger', tags: ['sweet', 'spicy', 'fake meat']},
  //   {name: 'Cola', tags: ['sweet']},
  //   {name: 'Grilled Cheese', tags: ['cheesy', 'savory']}
  // ];

  $scope.findUniqueTags = function() {
    var tags = {};
    angular.forEach($scope.menuItems, function(menuItem) {
      angular.forEach(menuItem.tags, function(tag) {
        tags[tag] = 1;
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

  $scope.tagFilters = $scope.createTagFilters($scope.findUniqueTags());

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
      if (tagFilter.state == 1 && menuItem.tags.indexOf(tagFilter.name) == -1) {
        showItem = false;
      }
      else if (tagFilter.state == 2 && menuItem.tags.indexOf(tagFilter.name) > -1) {
        showItem = false;
      }
    });
    return showItem;
  };
}]);
