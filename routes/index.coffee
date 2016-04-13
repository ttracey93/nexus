users = require './users.coffee'

module.exports = [
  method: 'GET'
  path: '/api/users'
  handler: users.users.all
]