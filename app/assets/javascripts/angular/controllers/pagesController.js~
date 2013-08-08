traineesTango.controller('productsController', ['$scope','$http', function($scope, $http){
  $scope.products = {};

  $scope.showProducts = function(){
    $http.get('/products.json').success(function(products){
      $scope.products = products;
    });
  };

  $scope.destroy = function(id){
    $http.delete('/products/'+id+'').success(function(id){
      $scope.products.splice(id, 1);
    });
  };
  
}]);


