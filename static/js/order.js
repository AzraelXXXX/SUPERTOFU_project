$(function () {

    reset()

    function reset() {
        $.ajax({
            type: 'GET',
            url: 'http://127.0.0.1/api/order',
            success: function (data) {
                let htmlStr = template('tpl-user', data)
                $('.content .inner').eq(0).html(htmlStr)
    
                let dataArr1 = []
                let dataArr2 = []
                let dataArr3 = []
                let dataArr4 = []
                $.each(data, function (index, i) {
                    if (i.status == 1) {
                        dataArr1.push(i)
                    }
                    else if (i.status == 2) {
                        dataArr2.push(i)
                    }
                    else if (i.status == 3) {
                        dataArr3.push(i)
                    }
                    else if (i.status == 4) {
                        dataArr4.push(i)
                    }
                })
                let htmlStr1 = template('tpl-user', dataArr1)
                $('.content .inner').eq(1).html(htmlStr1)
                let htmlStr2 = template('tpl-user', dataArr2)
                $('.content .inner').eq(2).html(htmlStr2)
                let htmlStr3 = template('tpl-user', dataArr3)
                $('.content .inner').eq(3).html(htmlStr3)
                let htmlStr4 = template('tpl-user', dataArr4)
                $('.content .inner').eq(4).html(htmlStr4)
    
    
                $('.del').click(function() {
                    let id = $(this).attr("rel")
                    $.ajax({
                        type: 'POST',
                        url: 'http://127.0.0.1/api/del/order',
                        data: {
                            id
                        },
                        success: function(data) {
                            $('.alert').html('删除成功').stop().show(0,function() {
                                reset()
                                setTimeout(function() {
                                    $('.alert').hide()
                                },2000)
                            })
                        }
                    })
                })
    
                $('.add').click(function() {
                    let title = $(this).parents('.item').find('.title').html()
                    let color = $(this).parents('.item').find('.color').html()

                    $.ajax({
                        type: 'POST',
                        url: 'http://127.0.0.1/api/car',
                        data: {
                            title,
                            color
                        },
                        success: function(data) {
                            console.log(data);
                            if(data.status == 1) {
                                $('.alert').html(data.msg).stop().show(0,function() {
                                    setTimeout(function() {
                                        $('.alert').hide()
                                    },2000)
                                })
                            }
                            else {
                                $('.alert').html(data.msg).stop().show(0,function() {
                                    setTimeout(function() {
                                        $('.alert').hide()
                                    },2000)
                                })
                            }
                        }
                    })
                })
            }
        })
    }

    // tab栏切换
    $('.header ul li').click(function () {
        $(this).addClass('active').siblings().removeClass('active')
        var index = $(this).index()
        $('.content').eq(index).show().siblings().hide()
    })

    // 返回购物车
    $('.back').click(function() {
        window.location.href = 'http://127.0.0.1/html/car.html'
    })
})