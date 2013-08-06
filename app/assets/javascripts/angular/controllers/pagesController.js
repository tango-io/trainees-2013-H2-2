traineesTango.controller('pagesController', ['$scope','$http', function($scope, $http){
  $scope.pages = {};
console.log('dentro');
  $scope.showPages = function(){
    $http.get('/pages.json').success(function(pages){
      $scope.pages = pages;
    });
  };

  $scope.destroy = function(id){
    $http.delete('/pages/'+id+'').success(function(id){
      $scope.pages.splice(id, 1);
    });
  };
  
}]);


