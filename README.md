
One Page Demo
------

This demo is trying to support:

* RequireJS loading and packaging
* multi-language support
* handlebars in development and production
* watch-compile CoffeeScript
* minify css

Tools used:

* Shelljs
* CoffeeScript
* read `package.json` and `bower.json` to find more

run this demo:

```bash
npm install -g shelljs coffee-script
npm install -d
```

for development, open `development.html`:

```bash
coffee make.coffee dev
```

for production, open 'production.html':

```bash
coffee make.coffee build
```

Demo online with Nginx: http://repo.tiye.me/one-page/
