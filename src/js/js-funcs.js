/**
全选
*/
(function ($) {
    $.fn.check = function (options) {
    	var defaluts = {
	        checkall:"",
	        checkbox:"",
	        type:"click",
	        callback:function(){}
	    };
        var opts = $.extend({}, defaluts, options); //使用jQuery.extend 覆盖插件默认参数
        var all = $("."+opts.checkall),
        	radio = $("."+opts.checkbox),
        	x= 0;
        	console.dir(radio);
		all.on(opts.type,function(){          //点击全选
            var flag = $(this).prop("checked");
            radio.prop("checked",flag);
            if(typeof opts.callback === "function") opts.callback(x);
        });
        radio.on(opts.type,function(){          //点击每个
            var size = radio.length,
            	chk = radio.filter(":checked").size();
            all.prop("checked",size==chk);
            if(typeof opts.callback === "function") opts.callback(x);
        });
    };
})(jQuery);
$(function () {
    //调用全选插件
    $.fn.check({ checkall: "checkall", checkbox: "checkbox",callback:function(x){}})
});