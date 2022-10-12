$(function () {

    reset()

    function reset() {
        $.ajax({
            type: 'GET',
            url: 'http://127.0.0.1/api/car',
            success: (data) => {
                let dataArr = []
                let num = 0
                for (let k in data) {
                    if (data[k].del_status == 0) {
                        num++
                    }
                    if (data[k].del_status == 0) {
                        let item_con = `<div class="item-con">
                                            <input type="checkbox" class="item-sel">
                                            <img src="${data[k].src}" alt="" class="it_img">
                                            <div class="item-intro">
                                                <h2>${data[k].title}</h2>
                                                <div><span class="item_color">${data[k].color}</span><img src="../img/bottom-9c.png" alt=""></div>
                                                <span>跨店没200减20</span>
                                                <span class="price">￥${data[k].price}</span>
                                            </div>
                                            <div class="p-num">
                                                <a href="javascript:;" class="decrement" rel="${data[k].id}">-</a>
                                                <input type="text" class="itxt" value="${data[k].count}">
                                                <a href="javascript:;" class="increment" rel="${data[k].id}">+</a>
                                            </div>
                                        </div>`
                        dataArr.unshift(item_con)
                    }
                }
                $('.item-con-all').html(dataArr.join(''))
                $('.tit_num').html(num)
                
    
                // 加减操作
                $(".increment").click(function () {
                    var n = $(this).siblings(".itxt").val();
                    var id = $(this).attr('rel')
                    n++;
                    $(this).siblings(".itxt").val(n);
                    $.ajax({
                        type: 'POST',
                        url: 'http://127.0.0.1/api/update/car',
                        data: {
                            count: n,
                            id
                        },
                        success: data => {
                            console.log(data);
                        }
                    })
                    getsum()
                });



                $(".decrement").click(function () {
                    var n = $(this).siblings(".itxt").val();
                    var id = $(this).attr('rel')
                    if (n == 1) {
                        $('.alert').stop().html('该宝贝不能减少了呦~').show(0, function () {
                            setTimeout(function () {
                                $('.alert').hide()
                            }, 2000)
                        })
    
                        return false;
                    }
                    n--;
                    $(this).siblings(".itxt").val(n);
                    $.ajax({
                        type: 'POST',
                        url: 'http://127.0.0.1/api/update/car',
                        data: {
                            count: n,
                            id
                        },
                        success: data => {
                            console.log(data);
                        }
                    })
                    getsum()
                });
    
                // 点击店铺全选
                $(".set-all").change(function () {
                    $(".set-all, .sel-bot-all , .item-sel").prop("checked", $(this).prop("checked"))
    
                    if ($(this).prop("checked")) {
                        $(".item-con").addClass("item-co-bg");
                    }
                    else {
                        $(".item-con").removeClass("item-co-bg");
                    }
                    getsum()
                })
    
                // 点击结算全选
                $(".sel-bot-all").change(function () {
                    $(".set-all, .sel-bot-all , .item-sel").prop("checked", $(this).prop("checked"))
    
                    if ($(this).prop("checked")) {
                        $(".item-con").addClass("item-co-bg");
                    }
                    else {
                        $(".item-con").removeClass("item-co-bg");
                    }
                    getsum()
                })
    
                // 点击商品选中
                $(".item-sel").change(function () {
                    if ($(".item-sel:checked").length === $(".item-sel").length) {
                        $(".set-all, .sel-bot-all").prop("checked", true);
                    }
                    else {
                        $(".set-all, .sel-bot-all").prop("checked", false);
                    }
    
                    if ($(this).prop("checked")) {
                        $(this).parents(".item-con").addClass("item-co-bg");
                    }
                    else {
                        $(this).parents(".item-con").removeClass("item-co-bg");
                    }
                    getsum()
                })
    
                // 点击删除选中商品
                $('.settlement .set-right .del').click(function () {
                    let flag = true
                    $(".item-con").each(function (index, i) {
                        if ($(i).find('.item-sel').prop('checked')) {
                            flag = false
                            let title = $(this).find('h2').html()
                            let color = $(this).find('.item_color').html()
                            // console.log(title, color);
                            $.ajax({
                                type: 'POST',
                                url: 'http://127.0.0.1/api/del/car',
                                data: {
                                    title,
                                    color
                                },
                                success: (data) => {
                                    if(data.status == 1) {
                                        $('.alert').stop().html(data.msg).show(0, function () {
                                            setTimeout(function () {
                                                $('.alert').hide()
                                            }, 2000)
                                        })
                                    }
                                    else {
                                        reset()
                                        $('.alert').stop().html(data.msg).show(0, function () {
                                            setTimeout(function () {
                                                $('.alert').hide()
                                            }, 2000)
                                        })
                                    }
                                }
                            })
                        }
                    })
                    if(flag) {
                        $('.alert').stop().html('请选中后再删除').show(0, function () {
                            setTimeout(function () {
                                $('.alert').hide()
                            }, 2000)
                        })
                    }
                })

                // 结算
                $('.set-right div').click(function () {
                    if ($('.count').html() == 0) {
                        $('.alert').stop().html('请选择商品再结算').show(0, function () {
                            setTimeout(function () {
                                $('.alert').hide()
                            }, 2000)
                        })
                    }
                    else {
                        let n = 1
                        $('.item-con').each(function(index, i) {
                            if ($(i).find('.item-sel').prop('checked')) {
                                let title = $(i).find('h2').html()
                                let img = $(i).find('.it_img').attr("src")
                                let price = $(i).find('.price').html().substr(1)
                                let num = $(i).find('.itxt').val()
                                let color = $(i).find('.item_color').html()

                                sessionStorage.setItem("goods"+n, JSON.stringify({goods:[{title, color}]}))
                                n++
                                $.ajax({
                                    type: "POST",
                                    url: "http://127.0.0.1/api/order",
                                    data: {
                                        title,
                                        img,
                                        price,
                                        num,
                                        color
                                    },
                                    success: function(data) {
                                        sessionStorage.setItem("count",$('.count').html())
                                        sessionStorage.setItem("price",$('.all-price').html())
                                        window.location.href = 'http://127.0.0.1/html/settlement.html'
                                    }
                                })
                            }
                        })
                    }
                })
            }
        })
    }


    // 点击管理显示删除
    $('.header .top span').click(function () {
        $('.settlement .set-right .del').toggle()
    })


    function getsum() {
        var money = 0
        var count = 0
        $(".item-con").each(function (index, i) {
            // console.log($(i).find('.price').text().substr(1));
            if ($(i).find('.item-sel').prop('checked')) {
                count++
                money += parseFloat(($(i).find('.itxt').val()) * ($(i).find('.price').text().substr(1)))
            }
            $('.all-price').text(money.toFixed(2))
            $('.count').text(count)
        })
    }

    $('.back').click(function() {
        window.location.href = 'http://127.0.0.1/html/details.html'
    })
})