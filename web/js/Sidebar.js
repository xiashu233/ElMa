document.getElementById("Sidebar_left").onmousedown = function(){
	changeItem(-1);
}


function changeItem(index){
	var items = document.getElementById("Sidebar_InfoID").getElementsByTagName("div");
	for (var i = 0; i < items.length; i++) {
		if( i == index){
			items[i].style.display = "block";
		}else{
			items[i].style.display = "none";
		}
	}
}