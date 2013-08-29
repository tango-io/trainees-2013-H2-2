traineesTango.controller('backersController', ['$scope','$http', function($scope, $http){
  $scope.message = "";

$scope.validate = function(id){
  pledge = $("b[name='"+id+"']");
  pledge = parseInt(pledge.html());
  amount = $("input[name='backer[amount]']");
  amount = parseInt(amount.val());
  if (pledge > amount || isNaN(amount)) {

    $("#aviable_message").html("pledge is no aviable").css("background-color", "#DF0101");
    $("input[name='backer[pledge_id]']").val([]); 
  }
  else {
    $("#aviable_message").html("pledge is aviable").css("background-color", "#04B404");
   }
 };

  

 

}]);


