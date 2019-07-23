$(document).ready(function () {
    $(window).resize(function () {
        $("#sx").html($(window).innerWidth());
        $("#sy").html($(window).innerHeight());
    });
});

