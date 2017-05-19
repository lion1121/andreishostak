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
      // var topOffset = windowTop - headerHeight;
        if(windowTop > headerHeight && $(window).offsetTop !== 0 ) {
            $('header').css('opacity','0.9');
        }
         if ($(window).offsetTop === 0) {
            $('header').css('opacity','0.5');
        }
  })
});

