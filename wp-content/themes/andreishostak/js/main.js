$(document).ready(function(){
    $('.slider').slick({
        infinite: true,
        adaptiveHeight: true,
        fade: true,
        cssEase: 'linear',
        dots: false
});
});



document.getElementById('links').onclick = function (event) {
    event = event || window.event;
    var target = event.target || event.srcElement,
        link = target.src ? target.parentNode : target,
        options = {index: link, event: event},
        links = this.getElementsByTagName('a');
    blueimp.Gallery(links, options);
};

$(document).ready(function () {
   $('#contactForm').submit(function () {
       $.ajax({
           type: "POST",
           url: "/wp-content/themes/andreishostak/send_email.php",
           data: $(this).serialize()
       }).done(function () {
           $('#msgSubmit').removeClass('hidden');
       });
       return false;
   });
});


$(document).ready(function () {
   setBindings();
});

function setBindings() {
    $('nav a').click(function (e) {
        e.preventDefault();
        var sectionID = $(this).parent().attr('id') + "Section";
        $("html, body").animate({
            scrollTop: $("#" + sectionID).offset().top-100
        }, 1000)
    })
}


$(document).ready(function () {
  $(document).scroll(function () {
      var headerHeight = $('.main_menu_wrapper').height();
      var windowTop = $(window).scrollTop();
        if(windowTop > headerHeight && windowTop !== 0 ) {
            $('header').css('opacity','0.9');
        }
         else {
            $('header').css('opacity','0.5');

        }

  })
});



$(document).ready(function () {
   $('.links > div:nth-child(1)').addClass('in active') ;
});

$(document).ready(function () {
    var windowHeight = $(window).height();
    if ($(window).scrollTop === windowHeight - 600) {
       $('.to_top').css('display', 'none');
    }
    $('.to_top').click(function () {
        $("html, body").animate({
            scrollTop: $('body').offset().top
        }, 1000)
    })
});

$(document).ready(function () {
   $('.menu_btn').click(function () {
       $(this).toggleClass('change');
       $('.menu_container').toggleClass('show_menu');
       if($('.menu_container').is(':visible')) {
           $('.menu_container a').click(function () {
               $('.menu_container').removeClass('show_menu');
               $('.menu_btn').removeClass('change');
           })
       }
   }) ;
});