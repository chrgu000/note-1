var http = require('http');

var os = require('os');

http.createServer(function (request, response) {

response.writeHead(200, {'Content-Type': 'text/plain'});

response.end('Hello World\n'); }).listen(3000);

console.log('Server running at http://127.0.0.1:3000/');


console.log($("ul .children"))

(function($){
    $.getUrlParam = function(name){
        var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r!=null) return unescape(r[2]); return null;
    }
})(jQuery);
var show = $.getUrlParam('show');
var cat = $.getUrlParam('cat');
if(show == null || show == '0'){
    $("ul .children").hide();
}else{
    console.log($(".cat-item-"+cat+" > ul"));
    $(".cat-item-"+cat+" > ul").show();
}

$(".ymtitle").find("a").each(function(){
    $(this).click(function(){
        var href = $(this).attr("href");
        var isHidden = $(this).siblings().is(":hidden");
        if(isHidden){
            $(this).attr("href",href+"&show=1")
            $(this).siblings().show();
        }else{
            $(this).attr("href",href+"&show=0")
            $(this).siblings().hide();
        }
    });
})


<script  type="text/javascript">

</script>


<script  type="text/javascript">
(function($){
    $.getUrlParam = function(name){
        var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r!=null) return unescape(r[2]); return null;
    }
})(jQuery);
var show = $.getUrlParam('show');
var cat = $.getUrlParam('cat');
if(show == null || show == '0'){
    $("ul .children").hide();
}else{
    console.log($(".cat-item-"+cat+" > ul"));
    $(".cat-item-"+cat+" > ul").show();
}
$(".ymtitle").find("a").each(function(){
    $(this).click(function(){
        var href = $(this).attr("href");
        var isHidden = $(this).siblings().is(":hidden");
        if(isHidden){
            $(this).attr("href",href+"&show=1")
            $(this).siblings().show();
        }else{
            $(this).attr("href",href+"&show=0")
            $(this).siblings().hide();
        }
    });
})
</script>