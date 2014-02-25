
define (require, exports) ->

  lang = require 'src/lang'
  panelTemplate = require 'hbs!template/panel'

  $ = require 'jquery'

  console.log 'file loaded'
  $('#entry').append panelTemplate(name: lang.get('panel'))

