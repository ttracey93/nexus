h = require 'hapi'
g = require 'good'
models = require './models/index.coffee'

server = new h.Server()

server.connection
  host: 'localhost'
  port: 8000

server.register require 'inert', (err) ->
  if err
    throw err

server.register {
  register: g
  options: reporters: [ {
    reporter: require('good-console')
    events:
      response: '*'
      log: '*'
  } ]
}, (err) ->
  if err
    throw err

server.route require './routes/index.coffee'

server.route
  method: 'GET'
  path: '/{path*}'
  handler: (req, res) ->
    res.file './public/index.html'

models.sequelize.sync().then () ->
  server.start (err) ->
    if err
      throw err

    console.log 'server started'