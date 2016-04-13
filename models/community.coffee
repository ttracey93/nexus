'use strict'

module.exports = (sequelize, DataTypes) ->
  Community = sequelize.define('Community', {
    name: DataTypes.STRING
    physical: DataTypes.BOOLEAN
  }, classMethods: associate: (models) ->
    # associations can be defined here
    return
  )
  Community
