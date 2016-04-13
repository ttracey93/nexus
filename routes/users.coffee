models = require '../models/index.coffee'

exports.users =
  all: (req, res) ->
    models.User.findAll().then (users) ->
      res(users).code(200)