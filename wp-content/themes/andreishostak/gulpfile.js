'use strict';
/*----------------------------------------------------------------------------------------------------------*/
//  This part works with app folder
{
var gulp = require('gulp'),
    sass = require('gulp-sass'),
    browserSync = require('browser-sync'),
    concat = require('gulp-concat'), // Подключаем gulp-concat (для конкатенации файлов)
    uglify = require('gulp-uglifyjs'), // Подключаем gulp-uglifyjs (для сжатия JS)
    cssnano = require('gulp-cssnano'), // Подключаем пакет для минификации CSS
    rename = require('gulp-rename'), // Подключаем библиотеку для переименования файлов
    del = require('del');  // Подключаем библиотеку для удаления файлов и папок



    gulp.task('sass', function(){ // Создаем таск "sass"
    return gulp.src('scss/**/*.scss') // Берем все sass файлы из папки sass и дочерних, если таковые будут
        .pipe(sass()) // Преобразуем Sass в CSS посредством gulp-sass
        .pipe(gulp.dest('styles')) // Выгружаем результата в папку app/css
        .pipe(browserSync.reload({stream: true})); // Обновляем CSS на странице при изменении

});


// gulp.task('browser-sync', function() { // Создаем таск browser-sync
//     browserSync({ // Выполняем browser Sync
//         server: { // Определяем параметры сервера
//             baseDir: 'app/' // Директория для сервера - app
//         },
//         notify: false // Отключаем уведомления
//     });
// });



    gulp.task('css-min', ['sass'], function() {
        return gulp.src('styles/main.css') // Выбираем файл для минификации
            .pipe(cssnano()) // Сжимаем
            .pipe(rename({suffix: '.min'})) // Добавляем суффикс .min
            .pipe(gulp.dest('styles')); // Выгружаем в папку app/css
    });


    gulp.task('watch', ['sass', 'scripts', 'css-min'], function () {
    gulp.watch('scss/**/*.scss', ['sass']);
    gulp.watch('*.html', browserSync.reload);
    gulp.watch('js/**/*.js', browserSync.reload);
});

gulp.task('scripts', function() {
    return gulp.src([ // Берем все необходимые библиотеки
        'libs/jquery/dist/jquery.min.js', // Берем jQuery
        'libs/magnific-popup/dist/jquery.magnific-popup.min.js' // Берем Magnific Popup
    ])
        .pipe(concat('libs.min.js')) // Собираем их в кучу в новом файле libs.min.js
        .pipe(uglify()) // Сжимаем JS файл
        .pipe(gulp.dest('js')); // Выгружаем в папку app/js
});
}
/*---------------------------------------------------------------------------------------------------*/
//This task cleans dist folder
gulp.task('clean', function() {
    return del.sync('dist'); // Удаляем папку dist перед сборкой
});
/*---------------------------------------------------------------------------------------------------*/
// This part works with dist folder
{
    gulp.task('build', ['sass', 'scripts'], function() {

        var buildCss = gulp.src([ // Переносим CSS стили в продакшен
            'app/css/main.min.css',
            'app/css/libs.min.css'
        ])
            .pipe(gulp.dest('dist/css'));

        var buildFonts = gulp.src('app/fonts/**/*') // Переносим шрифты в продакшен
            .pipe(gulp.dest('dist/fonts'));

        var buildJs = gulp.src('app/js/**/*') // Переносим скрипты в продакшен
            .pipe(gulp.dest('dist/js'));

        var buildHtml = gulp.src('app/*.html') // Переносим HTML в продакшен
            .pipe(gulp.dest('dist'));
        var buildImg = gulp.src('app/img/*') // Переносим IMG в продакшен
            .pipe(gulp.dest('dist/img'));

    });
}