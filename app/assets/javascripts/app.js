var myApp = angular.module('myApp', ['ngRoute', 'angular.filter', 'ngAnimate']);

myApp.config( ["$routeProvider", "$locationProvider", function($routeProvider, $locationProvider) {
  $routeProvider
  .when('/restaurants/:restaurant_id/menuItems', {
    templateUrl: '/partials/menuItems'
  })
  .when('/restaurants/:restaurant_id/menuItems/:item_id', {
    templateUrl: '/partials/itemShow'
  })
  .when('/users/:user_id', {
    templateUrl: '/partials/userShow'
  })
  .otherwise({
    templateUrl: '/partials/restaurants'
  });
  $locationProvider.html5Mode(false);
}])
