
module.exports = (grunt) ->

  grunt.initConfig
    requirejs:
      compile:
        options:
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

  grunt.loadNpmTasks 'grunt-contrib-requirejs'