var hugolunr = require('hugo-lunr');
var h = new hugolunr();
h.setInput('post/**');
h.setOutput('/hugo/themes/mainroad/static/js/example_data.json');
h.index();