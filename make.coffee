
require 'shelljs/make'
CleanCSS = require 'clean-css'
requirejs = require 'requirejs'

target.coffee = ->
  exec 'coffee -o src/ -bc coffee/'

target.dev = ->
  exec 'coffee -o src/ -bcmw coffee/', async: yes

target.css = ->
  (new CleanCSS)
  .minify (cat 'css/style.css')
  .to 'build/build.css'

target.requirejs = ->
  requirejs.optimize
    baseUrl: '.'
    paths:
      jquery: 'bower_components/jquery/dist/jquery'
      requireLib: 'bower_components/requirejs/require'
      hbs: 'bower_components/requirejs-hbs/hbs'
      handlebars: 'bower_components/handlebars/handlebars'
      text: 'bower_components/requirejs-text/text'
    shim:
      jquery:
        exports: 'jQuery'
      handlebars:
        exports: 'Handlebars'
    hbs:
      templateExtension: ".hbs"
    name: 'src/main'
    out: 'build/build.js'
    optimize: 'none'
    include: 'requireLib'

target.clean = ->
  rm '-rf', 'build/'
  mkdir 'build/'

target.build = ->
  target.clean()
  target.css()
  target.coffee()
  target.requirejs()