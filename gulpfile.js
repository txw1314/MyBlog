var gulp = require('gulp');
var minifycss = require('gulp-minify-css');
var uglify = require('gulp-uglify');
var babel = require("gulp-babel");

// 压缩css
gulp.task('minify-css', function() {
    return gulp.src('./public/**/*.css')
            .pipe(minifycss({
            compatibility: 'ie8'
        }))
        .pipe(gulp.dest('./public'));
});

// 压缩js
gulp.task('minify-js', function() {
    return gulp.src('./public/js/**/*.js')
        .pipe(babel({
            presets: ['@babel/preset-env']
        }))
        .pipe(gulp.dest('./public'));
});


// 默认任务
gulp.task('default', gulp.parallel(
    'minify-css','minify-js'
));