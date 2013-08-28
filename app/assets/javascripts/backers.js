$("input[name='backer[pledge_id]']").click(function (){ 
  console.log("entro");
  pledge = $("b[data-amount]");
  pledge = parseInt(pledge.html());
  amount = $("input[name='backer[amount]']");
  amount = parseInt(amount.val());
  if (pledge > amount) {
    console.log("no se puede wey!!!");
  }
});


//$(document).ready(function(){
//$("input[name='backer[pledge_id]']").change(function (){
  //alert("hola");
//})}); 
//$("body").click(function(){
 //alert("clicked!");
//});

