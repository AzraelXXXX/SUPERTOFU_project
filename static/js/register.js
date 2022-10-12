window.addEventListener('load', function () {
    var btn = document.querySelector('.btn')
    var phone = document.querySelector('.phone')
    var code = document.querySelector('.code')
    var check = document.querySelector('.register_form form .agreement em')
    var mask = document.querySelector('.mask')
    var mask1 = document.querySelector('.mask1')
    var mask_tit = document.querySelector('.mask .warning .title')
    var mask_clo = document.querySelector('.mask .warning .clo_btn')
    var yes = document.querySelector('.mask1 .yes')
    var no = document.querySelector('.mask1 .no')

    // 判断手机号是否正确
    btn.onclick = function () {
        var pho_val = phone.value.trim();
        var pattern1 = /^1((34[0-8])|(8\d{2})|(([35][0-35-9]|4[579]|66|7[35678]|9[1389])\d{1}))\d{7}$/
        if (pho_val == '') {
            mask_tit.innerHTML = '请输入手机号'
            mask.style.display = 'block'
        }
        else if (!pattern1.test(pho_val)) {
            mask_tit.innerHTML = '手机号码格式不正确，请重新输入'
            mask.style.display = 'block'
        }
        else {

            // 判断协议是否选中
            if (check.className == '') {
                mask1.style.display = 'block'
                // 蒙版中确定是否选中协议
                yes.onclick = function () {
                    mask1.style.display = 'none';
                    check.classList.add('em_bg')
                }
                no.onclick = function () {
                    mask1.style.display = 'none';
                }
            }

            else {

                // 判断验证码是否正确
                var code_val = code.value.trim()
                var pattern2 = /^[a-zA-Z0-9_]{8,16}$/
                if (code_val == '') {
                    mask_tit.innerHTML = '密码不能为空'
                    mask.style.display = 'block'
                }
                else if (!pattern2.test(code_val)) {
                    mask_tit.innerHTML = '密码格式不正确，请重新输入'
                    mask.style.display = 'block'
                }
                else {
                    axios({
                        method: 'POST',
                        url: 'http://127.0.0.1/my/rej',
                        data: {
                            username: pho_val,
                            password: code_val
                        }
                    }).then(data => {
                        if(data.data.status == 0) {
                            mask_tit.innerHTML = data.data.msg
                            mask.style.display = 'block'
                        }
                        else {
                            mask_tit.innerHTML = data.data.msg
                            mask.style.display = 'block'
                            mask_clo.onclick = function() {
                                window.location.href = 'http://127.0.0.1/html/login.html'
                                mask.style.display = 'none'
                            }
                        }
                    })
                }
            }
        }
    }

    // 蒙版关闭
    mask_clo.onclick = function () {
        mask.style.display = 'none'
    }

    // 点击选中协议
    check.onclick = function () {
        this.classList.toggle('em_bg')
    }
})