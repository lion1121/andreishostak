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
           alert('Hello');
       });
       return false;
   });
});