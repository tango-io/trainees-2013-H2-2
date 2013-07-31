
traineesTango.controller('fillComboController', ['$scope','$http', function($scope, $http){
  $scope.categories = {};

  $scope.fillCombo = function(){
    $http.get('/projects.json').success(function(categories){
      $scope.categories = categories;
    });
  };

 }]);


