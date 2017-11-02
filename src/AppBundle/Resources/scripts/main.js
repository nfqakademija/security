// $('#captcha-form').submit(function (event) {
//     event.preventDefault();
//     grecaptcha.reset();
//     grecaptcha.execute();
// });
//
// function onSubmit(token) {
//     document.getElementById("captcha-form").submit();
// }

function calculateNavbarColors() {
    var scroll = $(window).scrollTop();
    var nav = $("nav");

    var inIndex = $("#about-me").length; // tikrina ar randames Index

    if ((inIndex && scroll >= 700) || !inIndex) {
        nav.addClass("navbar-inverse");
    } else {
        nav.removeClass("navbar-inverse");
    }
}

calculateNavbarColors();
$(window).scroll(calculateNavbarColors);


function openTab(evt, tabId) {
    $(".tabcontent, .tablinks").removeClass("active");
    $(evt.currentTarget).addClass("active");
    $(tabId).addClass("active");
}
