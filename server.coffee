h = require 'hapi'

server = new h.Server()
server.connection
  host: 'localhost'
  port: 8000

server.route
  method: 'GET'
  path: '/'
  handler: (req, res) ->
    res 'hello world'

server.start (err) ->
  if err
    throw err

  console.log 'not err, started'