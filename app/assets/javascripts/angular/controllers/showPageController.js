traineesTango.controller('showPageController', ['$scope','$http', function($scope, $http){
  $scope.page = {};
console.log('debtro');
  $scope.showPage = function(id){
    $http.get('/pages/'+id+'.json').success(function(page){
      console.log('jajaja');
      $scope.page = page;
    });
  };
  
}]);


