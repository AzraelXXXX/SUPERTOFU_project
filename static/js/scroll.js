$(function() {
    var flag = true
    $('.nav').hide()
    var top = $('.header').height()
    scrtop()
    function scrtop() {
        if($(document).scrollTop() >= top) {
            $(".nav").show();
        }
        else {
            $(".nav").hide();
        }
    }
    $(window).scroll(function() {
        scrtop()
        if(flag) {
            $('.scroll').each(function(index,i) {
                if($(document).scrollTop() >= $(i).offset().top - $('.nav').height() - $('.header').height()) {
                    $('.nav div').eq(index).addClass('active').siblings().removeClass('active')
                }
            })
        }
    })
    $('.nav div').click(function() {
        flag = false
        var topnum = $('.scroll').eq($(this).index()).offset().top - $('.nav').height() - $('.header').height()
        $(document).scrollTop(topnum)
        $(this).addClass("active").siblings().removeClass("active");
    })
})