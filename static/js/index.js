window.addEventListener('load', function () {
    var swiper1 = new Swiper('.swiper1', {
        pagination: '.swiper-pagination',
        // paginationClickable: true,
        loop: true,
        autoplay: 2000,
        speed: 800,
        autoplayDisableOnInteraction: false,
    })
    var nav = document.querySelector('.nav')
    var scrolltop = nav.offsetTop
    // console.log(scrolltop);
    window.onscroll = function () {
        // console.log(this.scrollY);
        if (this.scrollY >= scrolltop) {
            nav.style.position = 'fixed'
            nav.style.top = '0'
        }
        else {
            nav.style.position = 'relative'
        }
    }

    var paging = document.querySelector('.header .nav .nav-list ul li.paging')
    paging.onclick = function() {
        window.location.href = 'http://127.0.0.1/html/paging.html'
    }

    var to_de = document.querySelectorAll('.to_de')
    to_de.forEach(function(i, rel) {
        i.onclick = function() {
            var title = this.children[0].title
            sessionStorage.setItem("title", title)
            window.location.href = 'http://127.0.0.1/html/details.html'
        }
    })
})