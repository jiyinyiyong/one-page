
require('calabash').do 'watch and compile',
  'pkill -f doodle'
  'coffee -o src/ -bcmw coffee/'
  'doodle index.html src/ log:yes'