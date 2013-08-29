traineesTango.controller('backersController', ['$scope','$http', function($scope, $http){
  $scope.message = "";

$scope.validate = function(){
  pledge = $("b[data-amount]");
  pledge = parseInt(pledge.html());
  amount = $("input[name='backer[amount]']");
  amount = parseInt(amount.val());
  if (pledge > amount) {
    alert("no se puede wey!!!");
  }
 };

  

 

}]);


