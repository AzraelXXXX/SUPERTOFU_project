window.addEventListener('load', function () {
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        paginationType: 'fraction',
    });

    

    var back = document.querySelector('.header .back img:first-child');
    var shop_car = document.querySelector('.header .shop-car');
    var index = document.querySelector('.footer .fot-nav:first-child');
    var btn_left = document.querySelector('.footer .fot-btn .btn-left');
    var btn_right = document.querySelector('.footer .fot-btn .btn-right');
    var alert = document.querySelector('.alert');
    var collection = document.querySelector('.footer .collection');
    var collect_alert = document.querySelector('.collect-alert');
    var price = document.querySelector('.content .introduce .price span:last-child')
    var title = document.querySelector('.content .introduce .title h2')
    var num = document.querySelector('.content .introduce .describe>span>span')
    var swiper_wrapper = document.querySelector('.swiper-wrapper')
    var information = document.querySelector('.information')
    var sel = document.querySelector('.parameter .select')
    var sel_text = document.querySelector('.parameter .select>span')
    var sel_num = document.querySelector('.parameter .select>span>.sel_num')


    axios({
        method: 'GET',
        url: 'http://127.0.0.1/api/details',
        params: {
            title: sessionStorage.getItem("title")
        }
    }).then(data => {
        let result = data.data[0]
        price.innerHTML = result.price
        title.innerHTML = result.title
        num.innerHTML = result.num

        let banner_img = JSON.parse(result.banner_img).img
        let bannerArr = []
        for (var k in banner_img) {
            let swiper_slide = `<div class="swiper-slide"><img src="${banner_img[k]}" alt=""></div>`
            bannerArr.push(swiper_slide)
        }
        swiper_wrapper.innerHTML = bannerArr.join('')


        let details_img = JSON.parse(result.details_img).img
        for (var k in details_img) {
            let img = document.createElement('img')
            img.src = details_img[k]
            information.append(img)
        }


        let sel_json = JSON.parse(result.sel).select
        sel_num.innerHTML = sel_json.length
        for (var k in sel_json) {
            let sel_img = document.createElement('img')
            sel_img.src = sel_json[k].src
            sel.insertBefore(sel_img, sel.children[k])
        }


        var sel_img_all = document.querySelectorAll('.parameter .select img')
        var status = 0
        sel_img_all.forEach(function (i, rel) {
            i.onclick = function () {
                status = 1
                sel_img_all.forEach(function (j) {
                    j.style.border = 'none'
                    j.removeAttribute('img_rel')
                })
                this.setAttribute('img_rel', 1)
                this.style.border = '1px solid #ff5000'
                sel_text.innerHTML = sel_json[rel].color
                sessionStorage.setItem("src", sel_json[rel].src)
                sessionStorage.setItem("color", sel_json[rel].color)
            }
        })


        btn_left.onclick = function () {
            if (status == 0) {
                alert.innerHTML = '请选择商品规格'
                alert.style.display = 'block'
                setTimeout(function () {
                    alert.style.display = 'none'
                }, 2000)
            }
            else {
                axios({
                    method: 'POST',
                    url: 'http://127.0.0.1/api/car',
                    data: {
                        title: result.title,
                        price: result.price,
                        src: sessionStorage.getItem("src"),
                        color: sessionStorage.getItem("color")
                    }
                }).then(data => {
                    if (data.data.status == 1) {
                        alert.innerHTML = data.data.msg
                        alert.style.display = 'block'
                        setTimeout(function () {
                            alert.style.display = 'none'
                        }, 2000)
                    }
                    else {
                        alert.innerHTML = data.data.msg
                        alert.style.display = 'block'
                        setTimeout(function () {
                            alert.style.display = 'none'
                        }, 2000)
                    }
                })
            }
        }

        btn_right.onclick = function () {
            if (status == 0) {
                alert.innerHTML = '请选择商品规格'
                alert.style.display = 'block'
                setTimeout(function () {
                    alert.style.display = 'none'
                }, 2000)
            }
            else {
                
                let to_title = title.innerHTML
                let to_price = price.innerHTML
                let to_color = sel_text.innerHTML
                let to_img = null
                sel_img_all.forEach(function(i, rel) {
                    if(i.getAttribute('img_rel')) {
                        to_img = i.getAttribute('src')
                    }
                })
                sessionStorage.setItem("goods1", JSON.stringify({goods:[{title: to_title, color: to_color}]}))
                axios({
                    method: 'post',
                    url: 'http://127.0.0.1/api/order',
                    data: {
                        title: to_title,
                        price: to_price,
                        img: to_img,
                        color: to_color,
                        num: 1
                    }
                }).then(data => {
                    sessionStorage.setItem("count", 1)
                    sessionStorage.setItem("price", to_price)
                    window.location.href = 'http://127.0.0.1/html/settlement.html'
                })
            }
        }
    })

    back.onclick = function () {
        if(document.referrer == 'http://127.0.0.1/html/car.html') {
            window.location.href = 'http://127.0.0.1/html/index.html'
        }
        else {
            history.go(-1)
        }
    }

    shop_car.onclick = function () {
        window.location.href = 'http://127.0.0.1/html/car.html'
    }

    index.onclick = function () {
        window.location.href = 'http://127.0.0.1/html/index.html'
    }



    var flag = true
    collection.onclick = function () {
        if (flag) {
            flag = false
            this.children[0].src = 'img/collected.png'
            this.children[1].innerHTML = '已收藏'
            collect_alert.innerHTML = '收藏成功'
            collect_alert.style.display = 'block'
            setTimeout(function () {
                collect_alert.style.display = 'none'
            }, 2000)
        }
        else {
            flag = true
            this.children[0].src = 'img/shoucang.png'
            this.children[1].innerHTML = '收藏'
            collect_alert.innerHTML = '已取消收藏'
            collect_alert.style.display = 'block'
            setTimeout(function () {
                collect_alert.style.display = 'none'
            }, 2000)
        }
    }

})