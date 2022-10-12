const express = require('express')
const db = require('../db/db')
const bcrypt = require('bcryptjs')
const jwt = require('jsonwebtoken')


const router = express.Router()

const secretKey = 'xx'

// 注册
router.post('/my/rej', (req, res) => {
    let {username, password} = req.body
    const sql = `select * from users where username=?`
    db.query(sql, username, (err, results) => {
        if(err) return res.send(err.message)
        if(results.length > 0 ) return res.send({msg: '用户名已注册', status: 0})

        password = bcrypt.hashSync(password, 10)

        const sql2 = `insert into users(username, password) values (?,?)`
        db.query(sql2, [username, password], (err, results) => {
            if(err) return res.send(err.message);
            if(results.affectedRows !== 1) return res.send({msg: '注册失败, 请稍后再试', status: 0})
            res.send({msg: '注册成功', status: 1})
        })
    })
})

// 登录
router.post('/my/login', (req, res) => {
    let { username, password } = req.body

    const sql = `select * from users where username=?`
    db.query(sql, username, (err, results) => {
        if (err) return console.log(err.message);
        if (results.length !== 1) return res.send({msg :'用户名未注册', status: 0});
        // if (results[0].password !== password) return res.send({msg: '密码错误，请重新登录', status: 0})
        const compareResult = bcrypt.compareSync(password, results[0].password)
        if (!compareResult) return res.send({msg: '密码错误，请重新登录', status: 0})

        const tokenStr = jwt.sign({username}, secretKey, {expiresIn: '2h'})
        res.send({
            status: 200,
            msg: '登录成功！',
            token: 'Bearer ' + tokenStr
        })
    })
})

// 获取分页数据
router.get('/api/paging', (req, res) => {
    let {num} = req.query
    if(num == 0) {
        const sql = `select * from goods`
        con(sql)
    }
    else if(num == 1) {
        const sql = `select * from goods order by num desc`
        con(sql)
    }
    else if(num == 2) {
        const sql = `select * from goods order by id desc`
        con(sql)
    }
    else if(num == 3) {
        const sql = `select * from goods order by price`
        con(sql)
    }
    else if(num == 4) {
        const sql = `select * from goods order by price desc`
        con(sql)
    }

    // 数据库调用函数
    function con(sql) {
        db.query(sql, (err, results) => {
            if(err) return console.log(err.message)
            res.send({
                status: 1,
                message: '获取数据成功！',
                data: results
            })
        })
    }
})

// 详情页数据
router.get('/api/details', (req, res) => {
    let {title} = req.query
    const sql = `select * from details where title=?`
    db.query(sql, title, (err, results) => {
        if(err) return res.send(err.message)
        if(results.length !== 1) return res.send('获取商品信息失败，请稍后再试！')
        res.send(results)
    })
})

// 添加购物车数据
router.post('/api/car', (req, res) => {
    const car = req.body
    const sql = `select * from cars where title=? and color=?`
    db.query(sql, [car.title, car.color], (err, results) => {
        if(err) return res.send(err.message)
        if(results.length == 1) {
            if(results[0].del_status == 1) {
                const sql1 = `update cars set del_status=0 where title=? and color=?`
                db.query(sql1, [car.title, car.color], (err, results) => {
                    if(err) return res.send(err.message)
                    if(results.affectedRows !== 1) return res.send({msg: '加入失败，请稍后再试', status: 1})
                    res.send({msg: '加入购物车成功', status: 0})
                })
            }
            else {
                return res.send({msg: '商品已在购物车中', status: 1})
            }
        }
        else {
            const sql2 = `insert into cars set ?`
            db.query(sql2, car, (err, results) => {
                if(err) return res.send(err.message)
                if(results.affectedRows !== 1) return res.send({msg: '加入失败，请稍后再试', status: 1})
                res.send({msg: '加入购物车成功', status: 0})
            })
        }
    })
})

// 获取购物车数据
router.get('/api/car', (req, res) => {
    const sql = `select * from cars`
    db.query(sql, (err, results) => {
        if(err) return res.send(err.message)
        if(results.length < 1) return res.send({msg: '购物车没有数据', status: 1})
        res.send(results)
    })
})

// 修改购物车数据
router.post('/api/update/car', (req, res) => {
    let {count,id} = req.body
    const sql = `update cars set count=? where id=?`
    db.query(sql, [count, id], (err, results) => {
        if(err) return res.send(err.message)
        if(results.affectedRows < 1) return res.send('修改失败，稍后再试')
        res.send('修改成功')
    })
})

// 标记删除购物车数据
router.post('/api/del/car', (req, res) => {
    let {title, color} = req.body
    const sql = `update cars set del_status=1 where title=? and color=?`
    db.query(sql, [title, color], (err, results) => {
        if(err) return res.send(err.message)
        if(results.affectedRows < 1) return res.send({msg: '删除失败，稍后再试', status: 1})
        res.send({msg: '删除成功', status: 0})
    })
})

// 添加订单信息
router.post('/api/order', (req, res) => {
    const sql = `insert into order_info set ?`
    db.query(sql, req.body, (err, results) => {
        if(err) return res.send(err.message)
        if(results.affectedRows < 1) return res.send('付款失败，请稍后再试')
        res.send('添加成功')
    })
})

// 改变订单信息
router.post('/api/update/order', (req, res) => {
    let {title, color} = req.body
    const sql = `UPDATE order_info SET status=2 where title=? and color=? ORDER BY id DESC LIMIT 1`
    db.query(sql, [title, color], (err, results) => {
        if(err) return res.send(err.message)
        if(results.length < 1) return res.send('订单修改失败') 
        res.send('支付成功')
    })
})

// 查询订单信息
router.get('/api/order', (req, res) => {
    const sql = `select * from order_info where status<>0 order by id desc`
    db.query(sql, (err, results) => {
        if(err) return res.send(err.message)
        if(results.length < 1) return res.send('未查找到订单信息')
        res.send(results)
    })
})

// 标记删除订单信息
router.post('/api/del/order', (req, res) => {
    let {id} = req.body
    const sql = `update order_info set status=0 where id=?`
    db.query(sql, id, (err, results) => {
        if(err) return res.send(err.message)
        if(results.affectedRows !== 1) return res.send('删除失败')
        res.send('删除成功')
    })
})

module.exports = router