App= require('app')
App.AboutRoute = Em.Route.extend
	activate: () ->
		console.log 'entered about route'
	exit: () ->
		console.log 'left about route'