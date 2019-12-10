window.onload = function() {
	var list = document.getElementById("list");
	var prev = document.getElementById("prev");
	var next = document.getElementById("next");

	function animate(offset) {
		//获取的是style.left，是相对左边获取距离，所以第一张图后style.left都为负值，
		//且style.left获取的是字符串，需要用parseInt()取整转化为数字。
		var newLeft = parseInt(list.style.left) + offset;
		// alert(offset + "," + newLeft);
		if (newLeft <= -3990) {
			newLeft = 0;
		} else if (newLeft >= 1330) {
			newLeft = -2660;
		}
		list.style.left = newLeft + 'px';

	}


	prev.onclick = function() {
		animate(1330);
	}
	next.onclick = function() {
		// alert("dnmd")
		animate(-1330);
	}

	var timer;

	function play() {
		timer = setInterval(function() {
			prev.onclick()
		}, 5000)
	}
	play();

	var container = document.getElementById('container');

	function stop() {
		clearInterval(timer);
	}
	container.onmouseover = stop;
	container.onmouseout = play;

	var buttons = document.getElementById('buttons').getElementsByTagName('span');
	var index = 1;

	function buttonsShow() {
		//这里需要清除之前的样式
		for (var i = 0; i < buttons.length; i++) {
			if (buttons[i].className == 'on') {
				buttons[i].className = '';
			}
		}
		//数组从0开始，故index需要-1
		buttons[index - 1].className = 'on';
	}

	prev.onclick = function() {
		index -= 1;
		if (index < 1) {
			index = 3;
		}
		buttonsShow();
		animate(1330);
	}
	next.onclick = function() {
		//由于上边定时器的作用，index会一直递增下去，我们只有5个小圆点，所以需要做出判断
		index += 1;
		if (index > 3) {
			index = 1;
		}
		buttonsShow();
		animate(-1330);
	}


	for (var i = 0; i < buttons.length; i++) {
		(function(i) {
			buttons[i].onclick = function() {

				/*   这里获得鼠标移动到小圆点的位置，用this把index绑定到对象buttons[i]上，去谷歌this的用法  */
				/*   由于这里的index是自定义属性，需要用到getAttribute()这个DOM2级方法，去获取自定义index的属性*/
				var clickIndex = parseInt(this.getAttribute('index'));
				var offset = 1330 * (index - clickIndex); //这个index是当前图片停留时的index
				animate(offset);
				index = clickIndex; //存放鼠标点击后的位置，用于小圆点的正常显示
				buttonsShow();
			}
		})(i)
	}

	container.onmouseover = stop;
	container.onmouseout = play;
	play();
}
