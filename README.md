
One Page Demo
------

This demo is trying to support:

* RequireJS loading and packaging
* multi-language support
* handlebars in development and production
* watch-compile CoffeeScript

Tools used:

* Grunt
* Shelljs
* CoffeeScript
* read `package.json` and `bower.json` to find more

run this demo:

```bash
npm install -g shelljs
npm install -g coffee-script
npm install -d
coffee make.coffee dev # for development
coffee make.coffee build # for production
```