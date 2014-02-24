
require 'shelljs/make'

target.watch = ->
  exec 'coffee -o src/ -bcmw coffee/', async: yes

