﻿(function($){
	var bigAutocomplete = new function(){
		this.currentInputText = null;
		this.functionalKeyArray = [9,20,13,16,17,18,91,92,93,45,36,33,34,35,37,39,112,113,114,115,116,117,118,119,120,121,122,123,144,19,145,40,38,27];//�����Ϲ��ܼ���ֵ����
		this.holdText = null;

		this.init = function(){
			$("body").append("<div id='bigAutocompleteContent' class='bigautocomplete-layout'></div>");
			$(document).bind('mousedown',function(event){
				var $target = $(event.target);
				if((!($target.parents().andSelf().is('#bigAutocompleteContent'))) && (!$target.is(bigAutocomplete.currentInputText))){
					bigAutocomplete.hideAutocomplete();
				}
			})

			$("#bigAutocompleteContent").delegate("tr", "mouseover", function() {
				$("#bigAutocompleteContent tr").removeClass("ct");
				$(this).addClass("ct");
			}).delegate("tr", "mouseout", function() {
				$("#bigAutocompleteContent tr").removeClass("ct");
			});


			$("#bigAutocompleteContent").delegate("tr", "click", function() {

				window.location.href = 'http://dishui.oschina.io/note-hugo'+$(this).text();
        		return;
		        $.post($(this).text(), function(data){
	           		var html = $(data);
	           		var content = html.find('#main-content').html();
	           		$('#main-content').html(content);

	           		$('#main-content').find('pre code').each(function(i, block) {
					    hljs.highlightBlock(block);
					});
           		    $('#side-toc').empty();
           		    $('#side-toc').append($('#toc'));
		         },"html");



			})

		}

		this.autocomplete = function(param){

			if($("body").length > 0 && $("#bigAutocompleteContent").length <= 0){
				bigAutocomplete.init();
			}

			var $this = $(this);


			var $bigAutocompleteContent = $("#bigAutocompleteContent");

			this.config = {
			               width:$this.outerWidth() - 2,
			               url:null,
			               data:null,
			               callback:null};
			$.extend(this.config,param);
			$this.data("config",this.config);
			console.log($this.data("config"));
			$this.keydown(function(event) {
				switch (event.keyCode) {
				case 40:

					if($bigAutocompleteContent.css("display") == "none")return;

					var $nextSiblingTr = $bigAutocompleteContent.find(".ct");
					if($nextSiblingTr.length <= 0){
						$nextSiblingTr = $bigAutocompleteContent.find("tr:first");
					}else{
						$nextSiblingTr = $nextSiblingTr.next();
					}
					$bigAutocompleteContent.find("tr").removeClass("ct");

					if($nextSiblingTr.length > 0){
						$nextSiblingTr.addClass("ct");
						$this.val($nextSiblingTr.find("div:last").html());

						$bigAutocompleteContent.scrollTop($nextSiblingTr[0].offsetTop - $bigAutocompleteContent.height() + $nextSiblingTr.height() );

					}else{
						$this.val(bigAutocomplete.holdText);
					}


					break;
				case 38:
					if($bigAutocompleteContent.css("display") == "none")return;

					var $previousSiblingTr = $bigAutocompleteContent.find(".ct");
					if($previousSiblingTr.length <= 0){
						$previousSiblingTr = $bigAutocompleteContent.find("tr:last");
					}else{
						$previousSiblingTr = $previousSiblingTr.prev();
					}
					$bigAutocompleteContent.find("tr").removeClass("ct");

					if($previousSiblingTr.length > 0){
						$previousSiblingTr.addClass("ct");
						$this.val($previousSiblingTr.find("div:last").html());

						$bigAutocompleteContent.scrollTop($previousSiblingTr[0].offsetTop - $bigAutocompleteContent.height() + $previousSiblingTr.height());
					}else{
						$this.val(bigAutocomplete.holdText);
					}

					break;
				case 27:

					bigAutocomplete.hideAutocomplete();
					break;
				}
			});

			$this.keyup(function(event) {
				console.log($this.data("config"));
				var k = event.keyCode;
				var ctrl = event.ctrlKey;
				var isFunctionalKey = false;
				for(var i=0;i<bigAutocomplete.functionalKeyArray.length;i++){
					if(k == bigAutocomplete.functionalKeyArray[i]){
						isFunctionalKey = true;
						break;
					}
				}
				if(!isFunctionalKey && (!ctrl || (ctrl && k == 67) || (ctrl && k == 88)) ){
					var config = $this.data("config");
					var offset = $this.offset();
					$bigAutocompleteContent.width(config.width);
					var h = $this.outerHeight() - 1;
					$bigAutocompleteContent.css({"top":offset.top + h,"left":offset.left});

					var data = config.data;
					var url = config.url;
					var keyword_ = $.trim($this.val());
					// console.log(data);
					if(keyword_ == null || keyword_ == ""){
						bigAutocomplete.hideAutocomplete();
						return;
					}
					if(data != null && $.isArray(data) ){
						var data_ = new Array();
						for(var i=0;i<data.length;i++){
							// if(data[i].title.indexOf(keyword_) > -1){
								data_.push(data[i]);
							// }
							console.log(data[i]);
						}
						makeContAndShow(data_);
					}else if(url != null && url != ""){
						$.post(url,{keyword:keyword_},function(result){
							makeContAndShow(result.data)
						},"json")
					}


					bigAutocomplete.holdText = $this.val();
				}
				if(k == 13){
					var callback_ = $this.data("config").callback;
					if($bigAutocompleteContent.css("display") != "none"){
						if(callback_ && $.isFunction(callback_)){
							callback_($bigAutocompleteContent.find(".ct").data("jsonData"));
						}
						$bigAutocompleteContent.hide();
					}
				}

			});


			function makeContAndShow(data_){
				if(data_ == null || data_.length <=0 ){
					return;
				}

				var cont = "<table><tbody>";
				for(var i=0;i<data_.length;i++){
					cont += "<tr><td><div>" + data_[i].title + "</div></td></tr>"
				}
				cont += "</tbody></table>";
				$bigAutocompleteContent.html(cont);
				$bigAutocompleteContent.show();

				$bigAutocompleteContent.find("tr").each(function(index){
					$(this).data("jsonData",data_[index]);
				})
			}


			$this.focus(function(){
				bigAutocomplete.currentInputText = $this;
			});

		}
		this.hideAutocomplete = function(){
			var $bigAutocompleteContent = $("#bigAutocompleteContent");
			if($bigAutocompleteContent.css("display") != "none"){
				$bigAutocompleteContent.find("tr").removeClass("ct");
				$bigAutocompleteContent.hide();
			}
		}

	};


	$.fn.bigAutocomplete = bigAutocomplete.autocomplete;

})(jQuery)