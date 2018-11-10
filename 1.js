function getProduct() {
	/**
	ini json.. 
	kalo objek itu awalnya kurung kurawal, 
	kalo array kurung siku.
	*/
	const json = {
	itemId : "12341822",
	itemName : "basic t-shirt",
	price : 70000,
	availableColorAndSize :[{ 
			color : "red", 
			size : "S,M,L"
		},
       {
			color : "solid black", 
			sizes : "M, L"
		}
],

freeShiping : false

	} 
	
	return json;
}
console.log(getProduct())