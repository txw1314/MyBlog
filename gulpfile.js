const gulp = require('gulp');
const minifycss = require('gulp-minify-css');
const htmlmin = require('gulp-html-minifier-terser');
const htmlclean = require('gulp-htmlclean');
const terser = require('gulp-terser');
const replace = require('gulp-replace');
const imagemin = import('gulp-imagemin');
const cwebp = require('gulp-cwebp');                 // npm i --save-dev gulp-cwebp
const webpHtml = require('./gulp-webp-html');

// 压缩css文件
const minify_css = () => (
  gulp.src(['./public/**/*.css'])
    .pipe(minifycss())
    .pipe(gulp.dest('./public'))
);

// 压缩html文件
const minify_html = () => (
  gulp.src(['./public/**/*.html', '!./public/{lib,lib/**}'])
    .pipe(replace('src="/js/', 'src="https://static.inkss.cn/js/'))
    .pipe(replace('../../img/article', 'https://static.inkss.cn/img/article'))
    .pipe(htmlclean())
    .pipe(htmlmin({
      removeComments: true,
      minifyJS: true,
      minifyCSS: true,
      minifyURLs: true,
    }))
    .pipe(gulp.dest('./public'))
)

// 压缩js文件
const minify_js = () => (
  gulp.src(['./public/**/*.js', '!./public/**/*.min.js', '!./public/{libs,libs/**,/}'])
    .pipe(terser())
    .pipe(gulp.dest('./public'))
)

// 压缩 img 文件
const minify_img = async () => {
  gulp.src(['./public/img/**/*', '!./public/img/bkg/..'])
    .pipe(imagemin([
      imagemin.gifsicle({
        interlaced: true
      }),
      imagemin.mozjpeg({
        quality: 90,
        progressive: true
      }),
      imagemin.optipng({
        optimizationLevel: 5
      }),
      imagemin.svgo({
        plugins: [{
          removeViewBox: true
        },
        {
          cleanupIDs: false
        }
        ]
      })
    ]))
    .pipe(gulp.dest('./public/img'))
}


// 图片转 Webp
const img_webp = async () => {
  gulp.src('./public/img/**/*')
    .pipe(cwebp())
    .pipe(gulp.dest('./public/img'))
}

// 替换图片链接
const html_webp = async () => {
  gulp.src(['./public/**/*.html', '!./public/{lib,lib/**}'])
    .pipe(webpHtml())
    .pipe(gulp.dest('./public'))
}

// 压缩 + 静态资源连接替换
gulp.task('one', gulp.parallel(
  minify_html,
  minify_css,
  minify_js
));

// 图片转 webp + 页面资源替换
gulp.task('webp', gulp.parallel(
  img_webp,
  html_webp
));

// 图片压缩
gulp.task('img', gulp.parallel(
  minify_img
));


gulp.task('default', gulp.series('one'));
