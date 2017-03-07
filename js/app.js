require.config({
  baseUrl: '/js/',
  paths:{
    'jquery':'jquery-1.11.2.min',
    'lunr':'lunr',
    'jquery-bigautocomplete':'jquery.bigautocomplete',
    'pin':'jquery.pin',
    'highlight':'highlight.min'
  },
  shim:{
    'jquery-bigautocomplete':{
      deps: ['jquery']
    },
    'pin':{
      deps: ['jquery']
    }
  }
});


require([
  'jquery',
  'lunr',
  'jquery-bigautocomplete',
  'pin',
  'highlight',
  'domReady',
  'text!/js/example_index.json'
  ], function ($, lunr, _ , _, hljs, domReady, indexDump) {

  var indexDump = JSON.parse(indexDump)
  console.time('load')
  window.idx = lunr.Index.load(indexDump)
  console.timeEnd('load')


  $('input').bind('keyup', function () {
    if ($(this).val() < 2) return;
      var query = $(this).val();
    var resultstmp = idx.search(query);
    var newresultstmp = resultstmp.map(function (raw) {
      return {
        title: raw.ref
      }
    });

    $("#lanren").bigAutocomplete({
      width:262,
      data: newresultstmp,
      callback:function(data){
        console.log(data);
      }
    });
  });

  $('#side-toc').append($('#toc'));

  $('.navbar-wrapper').pin({
      containerSelector: ".mr-sidebar"
  });
  domReady(function () {
    $('pre code').each(function(i, block) {
      hljs.highlightBlock(block);
    });

  });

  $('#side-toc').find('a').each(function(){
    $(this).bind('click',function(){
      var ul = $(this).next();
      if(ul.attr('hide') && ul.attr('hide')==0){
        ul.attr('hide',1)
        ul.show();
      }else{
        ul.attr('hide',0);
        ul.hide();
      }
    });
  });

})
