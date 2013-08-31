traineesTango.controller('editCategoryController', ['$scope', '$http', function($scope, $http) {
  $scope.categories = {};
  $scope.editorEnabled = false;

  $scope.showCategories = function(){
    $http.get('/discovers.json').success(function(categories){
      $scope.categories = categories;
    });
  };
 $scope.enableEditor = function() {
    $scope.editorEnabled = true;
    $scope.editCategory = $scope.key;
  };
  
  $scope.disableEditor = function(){
    $scope.editorEnabled = false;
  };
  
  $scope.save = function(){
    console.log("Ya entro")
    $scope.key = $scope.editCategory;
    $scope.disableEditor();
  };
  
}]);
