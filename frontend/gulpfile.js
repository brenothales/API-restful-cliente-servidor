var gulp = require('gulp'),
	pug = require('gulp-pug'),
 	stylus = require( 'gulp-stylus' ),
	cssmin = require( 'gulp-cssmin' ),
	concat = require( 'gulp-concat' )


var browserSync = require("browser-sync").create();

  gulp.task("serve", function(){
    browserSync.init({
      server:{
        baseDir:'./public'
      }
    });
    gulp.watch("./public/index.html").on("change", browserSync.reload);

});

gulp.task( 'js', function() {

  gulp.src( [
  	'node_modules/angular/angular.min.js',
    'node_modules/angular-animate/angular-animate.min.js',
    'node_modules/angular-aria/angular-aria.min.js',
    'node_modules/angular-messages/angular-messages.min.js',
    'node_modules/angular-material/angular-material.min.js',
    'node_modules/angular-data-grid/dist/pagination.min.js',
    'app/**/*js'
  ] )
    .pipe( concat( 'app.js' ) )
    .pipe( gulp.dest( './public/js/' ) );

});


gulp.task('html', function(){
  return gulp.src('./assets/jade/*.pug')
    .pipe(pug())
    .pipe(gulp.dest('./public/'))
});

// gulp.task('css', function(){
//   return gulp.src('./assets/scss/*.scss')
//     .pipe(sass())
//     .pipe(minifyCSS())
//     .pipe(gulp.dest('public/js/css'))
// });

gulp.task('watch', function() {

  gulp.watch( './public/**/*js', ['js'] );
  gulp.watch( './assets/jade/**/*.pug', ['html'] );

});


gulp.task('default', [ 'html', 'js' ]);
