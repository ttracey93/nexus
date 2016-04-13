gulp = require 'gulp'
nodemon = require 'gulp-nodemon'
sass = require 'gulp-sass'

sassin = './stylesheets/**/*.scss'
sassout = './public/css'

gulp.task 'default', () ->
  nodemon
    script: 'server.coffee'
    ext: 'coffee'

gulp.task 'sass', () ->
  return gulp.src(sassin).pipe(sass()).pipe(gulp.dest(sassout))