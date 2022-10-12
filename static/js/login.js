window.addEventListener('load', function () {
    var login_form = document.querySelectorAll('.login-form')
    var swit = document.querySelectorAll('.login-form form .switch a')
    var check = document.querySelectorAll('.login-form form .agreement em')
    var ipt = document.querySelectorAll('input')
    var ipt_i = document.querySelectorAll('.login-form i')
    var phone = document.querySelector('.phone')
    var usernum = document.querySelector('.usernum')
    var code = document.querySelector('.code')
    var psw = document.querySelector('.password')
    var eyes = document.querySelector('.eyes')
    var btn1 = document.querySelector('.btn1')
    var btn2 = document.querySelector('.btn2')
    var mask = document.querySelector('.mask')
    var mask1 = document.querySelector('.mask1')
    var mask_tit = document.querySelector('.mask .warning .title')
    var mask_clo = document.querySelector('.mask .warning .clo_btn')
    var yes = document.querySelector('.mask1 .yes')
    var no = document.querySelector('.mask1 .no')


    // 点击切换 账号密码或者短信验证登录
    swit.forEach(function (i, index) {
        i.onclick = function () {
            login_form.forEach(function (j, rel) {
                j.classList.remove('dn')
                check[rel].classList.remove('em_bg')
            })
            login_form[index].classList.add('dn')
        }
    })

    // 点击选中协议
    check.forEach(function (i, index) {
        i.onclick = function () {
            this.classList.toggle('em_bg')
        }
    })

    // input后面的清空操作
    ipt.forEach(function (i, index) {
        i.oninput = function () {
            if (this.value.length > 0) {
                ipt_i[index].style.display = 'block'
            }
            else {
                ipt_i[index].style.display = 'none'
            }
        }
    })
    ipt_i.forEach(function (i, index) {
        i.onclick = function () {
            ipt[index].value = '';
            this.style.display = 'none'
        }
    })

    var flag = true
    eyes.onclick = function () {
        if (flag) {
            flag = false
            this.style.background = 'url(../img/open_eye.png) no-repeat 0 0 / cover'
            this.parentNode.children[0].type = 'text'
        }
        else {
            flag = true
            this.style.background = 'url(../img/close_eye.png) no-repeat 0 0 / cover'
            this.parentNode.children[0].type = 'password'
        }
    }

    // 判断手机号是否正确
    btn1.onclick = function () {
        mask_tit.innerHTML = '短信验证登录功能修复中，请转移账号密码登录'
        mask.style.display = 'block'
        // var pho_val = phone.value.trim();
        // if (pho_val == '') {
        //     mask_tit.innerHTML = '请输入手机号'
        //     mask.style.display = 'block'
        // }
        // else if (isNaN(pho_val)) {
        //     mask_tit.innerHTML = '手机号码格式不正确，请重新输入'
        //     mask.style.display = 'block'
        // }
        // else if (pho_val.length != 11) {
        //     mask_tit.innerHTML = '手机号码格式不正确，请重新输入'
        //     mask.style.display = 'block'
        // }
        // else if (pho_val != '12345678900') {
        //     mask_tit.innerHTML = '手机号码错误，请重新输入'
        //     mask.style.display = 'block'
        // }
        // else {

        //     // 判断协议是否选中
        //     if (check[0].className == '') {
        //         mask1.style.display = 'block'
        //         // 蒙版中确定是否选中协议
        //         yes.onclick = function () {
        //             mask1.style.display = 'none';
        //             check[0].classList.add('em_bg')
        //         }
        //         no.onclick = function () {
        //             mask1.style.display = 'none';
        //         }
        //     }

        //     else {

        //         // 判断验证码是否正确
        //         var code_val = code.value
        //         if (code_val == '') {
        //             mask_tit.innerHTML = '请先发送短信验证码'
        //             mask.style.display = 'block'
        //         }
        //         else if (isNaN(code_val)) {
        //             mask_tit.innerHTML = '验证码格式不正确，请重新输入'
        //             mask.style.display = 'block'
        //         }
        //         else if (code_val.length < 4) {
        //             mask_tit.innerHTML = '验证码格式不正确，请重新输入'
        //             mask.style.display = 'block'
        //         }
        //         else if (code_val != '1234') {
        //             mask_tit.innerHTML = '验证码错误，请重新输入'
        //             mask.style.display = 'block'
        //         }
        //         else {
        //             window.location.assign('index.html')
        //         }
        //     }
        // }
    }

    // 蒙版关闭
    mask_clo.onclick = function () {
        mask.style.display = 'none'
    }

    // 密码登录
    btn2.onclick = function () {
        var usernum_val = usernum.value.trim();
        var pattern1 = /^1((34[0-8])|(8\d{2})|(([35][0-35-9]|4[579]|66|7[35678]|9[1389])\d{1}))\d{7}$/
        if (usernum_val == '') {
            mask_tit.innerHTML = '请输入账号'
            mask.style.display = 'block'
        }
        else if (!pattern1.test(usernum_val)) {
            mask_tit.innerHTML = '账号格式不正确，请重新输入'
            mask.style.display = 'block'
        }
        else {
            // 判断协议是否选中
            if (check[1].className == '') {
                mask1.style.display = 'block'
                // 蒙版中确定是否选中协议
                yes.onclick = function () {
                    mask1.style.display = 'none';
                    check[1].classList.add('em_bg')
                }
                no.onclick = function () {
                    mask1.style.display = 'none';
                }
            }

            else {

                // 判断密码锁是否正确
                var psw_val = psw.value.trim()
                var pattern2 = /^[a-zA-Z0-9_]{8,16}$/
                if (psw_val == '') {
                    mask_tit.innerHTML = '请输入密码'
                    mask.style.display = 'block'
                }
                else if (!pattern2.test(psw_val)) {
                    mask_tit.innerHTML = '密码格式不正确，请重新输入'
                    mask.style.display = 'block'
                }
                else {
                    // window.location.assign('index.html')
                    axios({
                        method: 'POST',
                        url: 'http://127.0.0.1/my/login',
                        data: {
                            username: usernum_val,
                            password: psw_val
                        }
                    }).then(data => {
                        console.log(data);
                        localStorage.setItem('token', data.data.token)
                        if(data.data.status == 0) {
                            mask_tit.innerHTML = data.data.msg
                            mask.style.display = 'block'
                        }
                        else {
                            mask_tit.innerHTML = data.data.msg
                            mask.style.display = 'block'
                            mask_clo.onclick = function() {
                                window.location.href = 'http://127.0.0.1/html/index.html'
                                mask.style.display = 'none'
                            }
                        }
                    })
                }
            }
        }
    }
})