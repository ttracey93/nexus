'use strict'

module.exports = (sequelize, DataTypes) ->
  User = sequelize.define('User', { username: DataTypes.STRING }, classMethods: associate: (models) ->
    # associations can be defined here
    return
  )
  User
