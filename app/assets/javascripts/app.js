var myApp = angular.module('myApp', ['ngRoute']);

myApp.config(function ($routeProvider, $locationProvider) {
  $routeProvider
  .when('/restaurants/:restaurant_id/menuItems', {
    templateUrl: '/partials/menuItems'
  })
  .when('/restaurants/:restaurant_id/menuItems/:item_id', {
    templateUrl: '/partials/itemShow'
  })
  .otherwise({
    templateUrl: '/partials/restaurants'
  });
  $locationProvider.html5Mode(true);
})
