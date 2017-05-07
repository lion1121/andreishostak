$(document).ready(function(){
    $('.slider').slick({
        infinite: true,
        adaptiveHeight: true,
        fade: true,
        cssEase: 'linear',
        dots: false
});
});


$(document).ready(function() {
    $(document).on('scroll', function () {
        var window_top = $(window).scrollTop(),
            contentHeight = $('.content').height(),
            menuHeight = $('.header_content').height(),
            windowHeight = $(window).height();
        if (window_top > menuHeight) {
            $('.header_content').css('background', 'white');
        }
        else {
            $('.header_content').css('background', 'rgba(0, 8, 12, 0.1)');
        }
        $("[data-step-id]").each(function () {
            var div_top = $(this).offset().top;
            var div_1 = $(this).attr('data-step-id');
            if (window_top > div_top - 300) {
                $('header nav li, footer nav li ').removeClass('cur');
                $('header nav li:eq(' + div_1 + '), footer nav li:eq(' + div_1 + ')').addClass('cur');
            }
            else {
                $('header nav li:eq(' + div_1 + '), footer nav li:eq(' + div_1 + ')').removeClass('cur');
            }
            if (window_top + windowHeight == contentHeight + 201) {
                $('header nav li, footer nav li ').removeClass('cur');
                $('header nav li:eq(4), footer nav li:eq(4)').addClass('cur');
            }
        });
    });
    $('.menu li').on('click', function (event) {
        var index = $(this).index(),
            timeScroll = 800;
        $.scrollTo("[data-step-id=" + index + "]", timeScroll, {offset: -58});
        event.preventDefault();
    });
});