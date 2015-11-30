
var ProductList = function() {
	var productJson = function(data) {
		ProductList.setProducts(data.products);
	};
	
	Service.get("/api/products", productJson);
};

ProductList.setProducts = function(products) {
	console.log(products);
};

var ProductBox = function() {
	
};
