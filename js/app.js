require.config({
  baseUrl: '/js/',
  paths:{
    'jquery':'jquery-1.11.2.min',
    'lunr':'lunr',
    'jquery-bigautocomplete':'jquery.bigautocomplete',
    'pin':'jquery.pin',
    'highlight':'highlight.min',
    'jquery-scrollUp':'jquery.scrollUp',
  },
  shim:{
    'jquery-bigautocomplete':{
      deps: ['jquery']
    },
    'pin':{
      deps: ['jquery']
    },
    'jquery-scrollUp':{
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
  'text!/js/example_index.json',
  'jquery-scrollUp',
  ], function ($, lunr, _ , _, hljs, domReady, indexDump, _) {

  var indexDump = JSON.parse(indexDump)
  console.time('load')
  window.idx = lunr.Index.load(indexDump)
  console.timeEnd('load')

  $("#lanren").bigAutocomplete({
    width:314,
    // data: newresultstmp,
    callback:function(data){
      console.log(data);
      window.location.href=data.title;
    },
    idx: idx
  });


  $('#side-toc').append($('#toc'));

  $('.navbar-wrapper').pin({
      containerSelector: ".mr-sidebar"
  });
  domReady(function () {
    $('pre code').each(function(i, block) {
      hljs.highlightBlock(block);
    });
    //回到顶端
    $.scrollUp({
      animation: 'fade',
      scrollImg: {
        active: true,
        type: 'background',
      }
    });
    $("#lanren").focus();
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
