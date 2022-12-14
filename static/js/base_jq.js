
$.ajaxPrefilter(function (options) {
  
    if (options.url.indexOf('/api/') !== -1) {
      options.headers = {
        Authorization: localStorage.getItem('token') || '',
      }
    }

    options.complete = function (res) {
      console.log(res);
      if(res.responseJSON) {
        if (res.responseJSON.status === 1 && res.responseJSON.message === '身份认证失败') {
          localStorage.removeItem('token')
          location.href = '/html/login.html'
        }
      }
    }
  })