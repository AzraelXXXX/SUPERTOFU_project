window.addEventListener('load', function () {
    var pb = document.querySelectorAll('.pb')
    var body = document.documentElement;
    var nav = document.querySelector('.nav')
    var con_top = document.querySelector('.con-top ul')
    var goback = document.querySelector('.goback')
    var only = document.querySelector('.con .inner .only')
    var price_top = document.querySelector('.price_top')
    var price_bottom = document.querySelector('.price_bottom')

    axiosDif(0)

    // 封装的axios函数
    function axiosDif(num) {
        axios({
            method: 'GET',
            url: 'http://127.0.0.1/api/paging',
            params: {
                num
            }
        }).then(data => {
            let results = data.data.data
            waterfall()
            single()
    
            var scrolltop = nav.offsetTop
            var con_scrolltop = con_top.offsetTop
            window.onscroll = function (event) {
                var event = event || window.event
                var scrollTop = document.documentElement.scrollTop || document.body.scrollTop || 0;
                // // 瀑布流复制
                // if (body.offsetHeight - body.clientHeight > scrollTop) { }
                // else {
                //     waterfall()
                //     single()
                // }
    
                if (this.scrollY >= scrolltop) {
                    nav.style.position = 'fixed'
                    nav.style.top = '0'
                }
                else {
                    nav.style.position = 'relative'
                }
    
                if (this.scrollY >= con_scrolltop) {
                    con_top.style.position = 'fixed'
                    con_top.style.top = '1.08rem'
                }
                else {
                    con_top.style.position = 'relative'
                    con_top.style.top = '0'
                }
    
                if (this.scrollY >= 1800) {
                    goback.style.bottom = '.05rem'
                }
                else {
                    goback.style.bottom = '-.9rem'
                }
            }
    
            // 封装瀑布流
            function waterfall() {
                for(var i = 0; i < pb.length; i++) {
                    pb[i].innerHTML = ''
                }
                var index = 0
                for (var i = 0; i < results.length; i++) {
                    var item = document.createElement('div')
                    item.className = 'item';
                    item.innerHTML = '<div class="item-img"><img src="' + results[i].img + '"></div><div class="item-con"><h5>' + results[i].title + '</h5><p><span>￥</span><span>' + results[i].price + '</span><span>' + results[i].num + '人付款</span></p></div>'
                    for (var j = 0; j < pb.length; j++) {
                        if (pb[j].offsetHeight < pb[index].offsetHeight) {
                            index = x;
                        }
                    }
                    pb[index++].appendChild(item);
                    index >= pb.length ? index = 0 : index;
                }
            }
    
            function single() {
                only.innerHTML = ''
                var index = 0
                for (var i = 0; i < results.length; i++) {
                    var item = document.createElement('div')
                    item.className = 'item';
                    item.innerHTML = '<div class="only-item"><img src="' + results[i].img + '" alt=""><div class="o-it-r"><div><h2>' + results[i].title + '</h2><span>运费 ￥ 18</span></div><p><span>￥ </span><span>' + results[i].price + '</span> ' + results[i].num + '人付款</p></div></div>'
                    only.appendChild(item);
                }
            }

            // 点击item，跳转到详情页
            var items = document.querySelectorAll('.pb .item')

            items.forEach(function(i, rel) {
                i.onclick = function() {
                    var title = i.children[1].children[0].innerHTML
                    sessionStorage.setItem("title", title)
                    window.location.href = 'http://127.0.0.1/html/details.html'
                }
            })

            // 点击item，跳转到详情页
            var on_items = document.querySelectorAll('.only .item')

            on_items.forEach(function(i, rel) {
                i.onclick = function() {
                    var title = i.children[0].children[1].children[0].children[0].innerHTML
                    sessionStorage.setItem("title", title)
                    window.location.href = 'http://127.0.0.1/html/details.html'
                }
            })
        })
    }

    // 点击首页跳转
    var home_page = document.querySelector('.header .nav .nav-list ul li.home-page')
    home_page.onclick = function () {
        window.location.href = 'http://127.0.0.1/html/index.html'
    }

    // 点击返回顶部
    goback.onclick = function () {
        window.scrollTo({ top: 0 })
    }



    // 内容顶部点击切换样式
    var lis = document.querySelectorAll('.con-top ul li')
    lis.forEach(function (i, rel) {
        var flag = true
        i.onclick = function() {
            price_top.style.background = 'url(../img/top.png) no-repeat 0 0.02rem / 100%'
            price_bottom.style.background = 'url(../img/bottom.png) no-repeat 0 -0.02rem / 100%'
            window.scrollTo({ top: 0 })
            for (var j = 0; j < lis.length; j++) {
                lis[j].className = ''
            }
            i.className = 'active'
            if(rel !== 3) {
                axiosDif(rel)
            }
            else {
                if(flag) {
                    flag = false
                    price_top.style.background = 'url(../img/top-ff5000.png) no-repeat 0 0.02rem / 100%'
                    price_bottom.style.background = 'url(../img/bottom.png) no-repeat 0 -0.02rem / 100%'
                    axiosDif(rel)
                }
                else {
                    flag = true
                    price_top.style.background = 'url(../img/top.png) no-repeat 0 0.02rem / 100%'
                    price_bottom.style.background = 'url(../img/bottom-ff5000.png) no-repeat 0 -0.02rem / 100%'
                    axiosDif(4)
                }
            }
        }
    })

    var flag = true
    lis[4].onclick = function() {
        if (flag) {
            flag = false
            this.children[0].classList.add('shrink')
            only.style.display = 'block'
            for (var i = 0; i < pb.length; i++) {
                pb[i].style.display = 'none'
            }
        }
        else {
            flag = true
            this.children[0].classList.remove('shrink')
            only.style.display = 'none'
            for (var i = 0; i < pb.length; i++) {
                pb[i].style.display = 'block'
            }
        }
    }
})