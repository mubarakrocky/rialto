// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

(function() {
   setInterval(function(){
   	$.ajax({
   		url: "/logistic/orders/get_last_order.json",
   		success: function(data) {
   			if(data.is_alerted == false) {
   				var audio = new Audio('/logistic/leanonmajo_Wz4UCWH3.mp3');
				audio.play();
				updateOrder({id: data.id});
				setTimeout(function(){
					location.reload();
				}, 20000);
   			}
   		}
   	});
   }, 30000);
   
})();

function updateOrder(params, onSuccess) {
	$.ajax({
		url: "/logistic/orders.json",
		type: 'PUT',
		data: params,
		success: onSuccess
	});
}


$('document').ready(function(){
	$(".done-btn").click(function(e){
   		var orderId = $(e.target).attr("orderid");
   		updateOrder({id: orderId, status: "Done"}, function(){
   			location.reload();
   		});
   });
});
