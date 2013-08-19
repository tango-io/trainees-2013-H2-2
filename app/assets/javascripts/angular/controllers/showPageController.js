traineesTango.controller('showPageController', ['$scope','$http', function($scope, $http){
  $scope.page = {};

  $scope.showPage = function(id){
    $http.get('/pages/'+id+'.json').success(function(page){
      $scope.page = page;
      angular.element($('.page_content').append($scope.page.content));
    });
  };

}]);
