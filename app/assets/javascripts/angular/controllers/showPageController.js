traineesTango.controller('showPageController', ['$scope','$http', function($scope, $http){
  $scope.page = {};
  $scope.showPage = function(id){
    $http.get('/pages/'+id+'.json').success(function(page){
      $scope.page = page;
      angular.element($('.text').append($scope.page.content));
    });
  };  
  $scope.test = function(){
    console.log('hello');
  }
}]);
