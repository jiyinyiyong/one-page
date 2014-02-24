
define (require, exports) ->

  lang = require 'src/lang'
  panelTemplate = require 'hbs!template/panel'

  console.log 'file loaded'
  console.log panelTemplate(name: lang.get('panel'))
