gulp = require 'gulp'
nodemon = require 'gulp-nodemon'

gulp.task 'default', () ->
  nodemon
    script: 'server.coffee'
    ext: 'coffee'