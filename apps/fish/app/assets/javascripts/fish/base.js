var Service = function(){};
var token = "3ec35e666e5034b4055562cc5392f296340aadff758ee48e";

Service.get = function(url, successCbk, failureCbk) {
	$.ajax({
		url: url,
		dataType: 'json',
		success: successCbk,
		error: failureCbk,
		headers: {
			'X-Spree-Token': token
		}
	});
};
