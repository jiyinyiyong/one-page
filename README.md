
One page app template from JiyinYiyong
------ 

This is my personal one page app developing template, based on:

* Git
* Nginx
* Chrome
* Node.js
* CoffeeScript
* Bower
* RequireJS
* [node-dev](https://github.com/fgnass/node-dev)
* [Calabash](https://github.com/jiyinyiyong/calabash)
* [Doodle](https://github.com/jiyinyiyong/doodle)
* [doodle-crx](https://github.com/jiyinyiyong/doodle-crx)

### Usage

Suppose you name is `github-user`, your repo names `my-app`,
you may do use this like:

```bash
# download and rename it as `my-app`
git clone git@github.com:jiyinyiyong/one-page.git my-app
cd my-app

# rewrite the origin to yours
git remote set-url origin git@github.com:github-user/my-app.git

# rewrite `bower.json`
bower init

# add `css/` directory to Chrome Workspace to debug CSS

# start watching and compiling files
node-dev calabash
# open setup Doodle to reload page on changes

# edit README with Sublime Text or whatever editor
subl -a .
```

I suggest serving pages with Nginx. It's simple.

Since `doodle`, `calabash` and `doodle-crx` are made by me,
they could be a bit a hard to pick up.
But I tried to make them simple.

### My practice

I'd like to share my experience got from making pages,
my pages are still as simple as making demos though:

* CoffeeScript and RequireJS
* CSS uses `@import` and is edited mainly in Chrome workspace
* modify and reload with doodle
* prefer Chrome for making apps

Open issues:

* template engine(which should support RequireJS)
* prefer Ractive for rendering
* preder PouchDB to LocalStorage

### License

MIT