fs      = require 'fs'
sysPath = require 'path'

# See docs at http://brunch.readthedocs.org/en/latest/config.html.

exports.config = 

  files: 
    
    javascripts: 
      defaultExtension: 'coffee',
      joinTo: 
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/

      order: 
        before: [
          'vendor/scripts/console-helper.js',
          'vendor/scripts/jquery-1.9.0.min.js',
          'vendor/scripts/handlebars.js',
          'vendor/scripts/ember-latest.js',
          'vendor/scripts/ember-data-latest.js',
          'vendor/scripts/foundation/foundation.js'
          'vendor/scripts/foundation/foundation.abide.js'
          'vendor/scripts/foundation/foundation.accordion.js'
          'vendor/scripts/foundation/foundation.alert.js'
          'vendor/scripts/foundation/foundation.clearing.js'
          'vendor/scripts/foundation/foundation.dropdown.js'
          'vendor/scripts/foundation/foundation.equalizer.js'
          'vendor/scripts/foundation/foundation.interchange.js'
          'vendor/scripts/foundation/foundation.joyride.js'
          'vendor/scripts/foundation/foundation.magellan.js'
          'vendor/scripts/foundation/foundation.offcanvas.js'
          'vendor/scripts/foundation/foundation.orbit.js'
          'vendor/scripts/foundation/foundation.reveal.js'
          'vendor/scripts/foundation/foundation.tab.js'
          'vendor/scripts/foundation/foundation.tooltip.js'
          'vendor/scripts/foundation/foundation.topbar.js'
          'vendor/scripts/foundation/vendor/fastclick.js'
          'vendor/scripts/foundation/vendor/jquery.cookie.js'
          'vendor/scripts/foundation/vendor/modernizr.js'
          'vendor/scripts/foundation/vendor/placeholder.js'
          ]

    stylesheets:
      defaultExtension: 'css'
      joinTo: 'stylesheets/app.css'
      order:
        before: ['vendor/styles/css/foundation.css',
          'vendor/styles/css/normalize.css'
        ]

    templates:
      precompile: true
      root: 'templates'
      defaultExtension: 'hbs'
      joinTo: 'javascripts/app.js' : /^app/

  # allow _ prefixed templates so partials work
  conventions:
    ignored: (path) ->
      startsWith = (string, substring) ->
        string.indexOf(substring, 0) is 0
      sep = sysPath.sep
      if path.indexOf("app#{sep}templates#{sep}") is 0
        false
      else
        startsWith sysPath.basename(path), '_'

  server:
    port: 3333
    base: '/'
    run: no

