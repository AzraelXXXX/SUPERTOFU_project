$(function () {
    $('.price').html(sessionStorage.getItem("price"))
    $('.num').html(sessionStorage.getItem("count"))

    let count = Number(sessionStorage.getItem("count"))
    var back = document.querySelector('.back')
    back.onclick = function () {
        $('.is_true').show()
        $('.is_true .cancel').click(function () {
            $('.is_true').hide()
        })
        $('.is_true .determine').click(function () {
            for (var i = count; i > 0; i--) {
                sessionStorage.removeItem("goods" + i)
            }
            sessionStorage.removeItem("count")
            sessionStorage.removeItem("price")
            window.location.href = 'http://127.0.0.1/html/car.html'
        })
    }

    $('.sn1').focus()

    //自动跳到下一个输入框
    $("input").each(function (index, i) {
        $(i).keyup(function (e) {
            if ($(this).val().length < 1) {
                $(this).parent().prev().children().focus();
            } else {
                if ($(this).val().length >= 1) {
                    $(this).parent().next().children().focus();
                }
            }
            if ($('.sn1').val().length == 1 && $('.sn2').val().length == 1 && $('.sn3').val().length == 1 && $('.sn4').val().length == 1 && $('.sn5').val().length == 1 && $('.sn6').val().length == 1) {
                $(i).blur()
                if ($('.sn1').val() == 1 && $('.sn2').val() == 4 && $('.sn3').val() == 7 && $('.sn4').val() == 2 && $('.sn5').val() == 5 && $('.sn6').val() == 8) {

                    let goodsArr = []
                    for (var i = count; i > 0; i--) {
                        goodsArr.push(JSON.parse(sessionStorage.getItem("goods" + i)))
                    }

                    console.log(goodsArr);

                    $.each(goodsArr, function (index, i) {
                        $.ajax({
                            type: 'POST',
                            url: 'http://127.0.0.1/api/update/order',
                            data: {
                                title: i.goods[0].title,
                                color: i.goods[0].color
                            },
                            success: function (data) {
                                for (var i = count; i > 0; i--) {
                                    sessionStorage.removeItem("goods" + i)
                                }
                                sessionStorage.removeItem("count")
                                sessionStorage.removeItem("price")
                                $('.alert').html('支付成功')
                                $('.alert').show(0, function () {
                                    setTimeout(function () {
                                        $('.alert').hide(0, function () {
                                            window.location.href = 'http://127.0.0.1/html/order.html'
                                        })
                                    }, 1000)
                                })
                            }
                        })
                    }) 
                }
                else {
                    $('.alert').html('密码错误')
                    $('.alert').show(0, function () {
                        setTimeout(function () {
                            $('.alert').hide()
                        }, 1000)
                    })
                    $('input').val("")
                }
            }
        });
    });
})