const express = require('express')
const path = require('path')
const router = require('./router/user')
const app = express()

app.use(express.static('static'))
// 这个中间件，只能解析application/json格式的数据
app.use(express.json())
app.use(express.urlencoded({ extended: false }))

const { expressjwt: expressJWT } = require('express-jwt')
const secretKey = 'xx'
app.use(expressJWT({ secret: secretKey, algorithms: ["HS256"] }).unless({path: [/^\/my/]}))

app.use(router)

app.use((err, req, res, next) => {
    // 这次错误是由token解析失败导致的
    if (err.name === 'UnauthorizedError') {
        return res.send({
            status: 1,
            message: '身份认证失败'
        })
    }
    res.send({
        status: 500,
        message: '未知的错误'
    })
})

app.listen(80, () => {
    console.log('http://127.0.0.1');
})