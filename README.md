# Ember Brunch Coffee
This is a simple ember skeleton for [Brunch](http://brunch.io/) with working and up to date **handlebars template pre-compilng** with coffescript support
Ember Updated to Rc-6 with handlebars updated to Rc4

## Getting started

Clone the repo and run `npm install` & `brunch build`.
See more info on the [official site](http://brunch.io)

## Versions (branches)

* `master` contains some demo code to give an understanding of how things should work

Forked from https://github.com/icholy/ember-brunch and added sass and coffeescript support. 

## Usage
    
    brunch new myapp -s git@github.com:ajetnewera/ember-brunch-coffee-sass.git



Once the project has been created, you can start a server by running

    brunch watch --server

then visit `localhost:3333`

## Overview

    config.coffee
    package.json
    README.md
    /app/
      assets/
        index.html
        img/
          glyphicons-halflings-white.png
          glyphicons-halflings.png
      styles/
      templates/
      models/
      views/
      controllers/
      templates.coffee
      models.coffee
      views.router
      controllers.coffee
      app.coffee
      router.coffee
      initialize.coffee
    /vendor/
      scripts/
        jquery-1.9.0.js
        console-helper.js
        ember-latest.js
        ember-data-latest.js
        handlebars-latest.js
      styles/
        bootstrap.css
        bootstrap-responsive.css
    /public/
      img/
      stylesheets/
      javascripts/
    /test/
      spec.coffee

* `config.coffee` contains your app configuration. This is where you configure what Plugins / Languages to use and what rules are applied to them.
* `app/` and subdirectories (excluding `app/assets`) contains files that are to be compiled. Javascript files, or files that compile to JS (coffeescript, roy etc.), are automatically wrapped as commonjs style modules so they can be loaded via `require('module/location')`.
* `app/assets` contains images / static files. The contents of the directory are copied to `public/` without any modification.
* `app/templates.coffee`, `app/models.coffee`, `app/views.router`, and `app/controllers.coffee` are loaded in `initialize.coffee` and are responsible for loading their respective classes.
* `test/` contains unit tests.
* `vendor/` contains all third-party code. The code wouldn’t be wrapped in
modules, it would be loaded instantly instead.

The generated output is placed in the `public/` (by default) directory when `brunch build` or `brunch watch` is executed.

## Other
Software Versions used:

* jQuery v1.9.0
* Ember latest - 1.0.0-RC6
* Ember Data - v0.13-39-gca7ba71 (2013-06-20 16:45:54 -0700)
