document.getElementById("Favorite").onclick = function() {
	var Favs = this.getElementsByTagName("div");

	if (Favs[0].className == "show") {
		Favs[0].className = "hideen";
		Favs[1].className = "show";
	} else {
		Favs[0].className = "show";
		Favs[1].className = "hideen";
	}
}
