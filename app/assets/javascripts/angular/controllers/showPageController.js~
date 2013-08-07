traineesTango.controller('showProductController', ['$scope','$http', function($scope, $http){
  $scope.product = {};

  $scope.showProduct = function(id){
    $http.get('/products/'+id+'.json').success(function(product){
      $scope.product = product;
    });
  };
  
}]);


