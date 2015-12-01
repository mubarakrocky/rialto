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
				updateOrder(data.id);
   			}
   		}
   	});
   }, 60000);
})();

function updateOrder(id) {
	$.ajax({
		url: "/logistic/orders.json",
		type: 'PUT',
		data: {id: id}
	});
}
