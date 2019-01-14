
var lunr = require('/hugo/themes/mainroad/static/js/lunr.js'),
    fs = require('fs');
//     hugolunr = require('hugo-lunr')
// //data.json    
// var h = new hugolunr();
// h.setInput('/hugo/content/post/**');
// h.setOutput('/hugo/themes/mainroad/static/js/example_data.json');
// h.index();

var idx = lunr(function () {
  this.ref('uri')

  // this.field('title', { boost: 10 })
  // this.field('tags', { boost: 100 })
  this.field('title')
})

fs.readFile('/hugo/themes/mainroad/static/js/example_data.json', function (err, data) {
  if (err) throw err

  var raw = JSON.parse(data)

  var questions = raw.map(function (q) {
    return {
      uri: q.uri,
      title: q.title
      // body: q.title
      // tags: q.tags.join(' ')
    }
  })

  questions.forEach(function (question) {
    idx.add(question)
  })

  fs.writeFile('/hugo/themes/mainroad/static/js/example_index.json', JSON.stringify(idx), function (err) {
    if (err) throw err
    console.log('done')
  })
})
