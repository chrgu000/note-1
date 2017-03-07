$(function () {
	function T() {
		_this = this;
	};
	T.prototype = {
		replace: function (str) {
			var str2 = str || '';
			var pattern = new RegExp("[`~!@#$^&*()=-|{}':;',\\[\\].<>/?~！@#￥……&*（）——|{}【】‘；：”“'。，、？]");
			var newstr=str2.replace(pattern,'hao');
			return newstr;
		}
	};

	if(!window.t) {
		window["t"] = new T();
	}
	window["t"]["string"] = new String();
});