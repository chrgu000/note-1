$('.asciinema-add-player').each(function(){
	var id = $(this).attr('id');
	var name = $(this).attr('name');
	var vals = name.split('|');
	var json = vals[0];
	var width = vals[1];
	var height = vals[2];

	var script = $('<script></script>');
	var player = "asciinema.player.js.CreatePlayer('"+id+"', '"+json+"', { width: "+width+", height: "+height+" ,speed: 2});";

	script.html(player);
	$(this).append(script);
})