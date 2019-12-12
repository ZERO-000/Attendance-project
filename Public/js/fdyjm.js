function show(id){
	
	
	var divs = document.getElementsByName("dv")
	var divx = document.getElementsByName("sad")

	for (var i = 0 ; i < divs.length ; i++){
		if (divs[i].id == "d"+id ){

					divs[i].style.display="block";
					divx.onclick = function(){
						divs[i].style.display="none";
					}
			console.log(id);		
		}else{

					divs[i].style.display="none";
					

		}
	}
}

// function showX(e){
// 	e.preventDefault();
// 	console.log("closing");

// 	// var divx = document.getElementsByName("sad")
// 	// 	divx.onclick = function(){
// 	// 			divs[i].style.display="none";
// 	// 		}
// }