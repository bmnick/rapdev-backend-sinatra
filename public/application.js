$(function () {
	// $(".cell").each(function (index, element) {
	//	var classes = element.className.split(/\s+/), row = "", col = "";
	//	
	//	for (var i in classes) {
	//		var classString = classes[i];
	//		
	//		if (classString.indexOf("column") != -1) {
	//			column = classString.substr(classString.length - 1);
	//		} else if (classString.indexOf("row") != -1) {
	//			row = classString.substr(classString.length - 1);
	//		}
	//	}
	//	
	//	console.log("Adding handler for row: " + row + " and column: " + column + " to element:");
	//	console.log($(element));
	//	
	//	$(element).click(function () {
	//		console.log("Hitting cell at (" + column + ", " + row + ")")
	//		$("#ypos").val(row);
	//		$("#xpos").val(col);
	//	});
	// });
	$(".cell").click(function () {
		var classes = this.className.split(/\s+/), row = "", col = "";

		for (var i in classes) {
			var classString = classes[i];
			
			if (classString.indexOf("column") != -1) {
				column = classString.substr(classString.length - 1);
			} else if (classString.indexOf("row") != -1) {
				row = classString.substr(classString.length - 1);
			}
		}
		
		console.log("Got click at (" + column +"," + row + ")");
		
		$("#xpos").val(column);
		$("#ypos").val(row);
	});
});