/**
 * Created by this on 2018/3/17.
 */
var models = require('../db');
var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var $sql = require('../sqlMap');
// 连接数据库
var conn = mysql.createConnection(models.mysql);
conn.connect();
var jsonWrite = function(res, ret) {
  if(typeof ret === 'undefined') {
    res.send('err')
  } else {
    /*res.send('ok')*/
    res.send(ret);
  }
};
// 注册接口
router.post('/addUser', (req, res) => {
  var sql_name = $sql.user.select_name
  var sql = $sql.user.add;
  var params = req.body;
  console.log(params);
  conn.query(sql_name,params.username,function(err,result) {
    if(err) {
      console.log(err)
    }
    if(result[0]===undefined) {
      conn.query(sql,[params.username,params.password,params.email], function(err, result) {
        if(err) {
          console.log(err)
        }
        if(result) {
          jsonWrite(res, result)
        }
      })
    }else {
      res.send('-1');    //当前注册username与数据库重复时，data返回-1
    }
  })

});



// 快递回收表单页面
router.post('/recycle', (req, res) => {
  var sql = $sql.user.addRecycle;
  var params = req.body;
  console.log(params);
  conn.query(sql,[params.resource,params.area,params.damage,params.manner,params.name,params.tel,params.address], function(err, result) {
    if(err) {
      res.send('-1');
      console.log(err)
    }
    if(result) {
      jsonWrite(res, result)
    }
  })
});

//查找用户接口
router.post('/selectUser', (req,res) => {
  var sql_name = $sql.user.select_name;
  var sql_password = $sql.user.select_password;
  var params = req.body;
  conn.query(sql_name,params.username,function(err, result) {
    if(err) {
      console.log(err)
    }
    if(result[0]===undefined) {
      res.send('-1')    //查询不出username，data返回-1
    }else {
      conn.query(sql_password,params.password, function(err, result) {
        if(err) {
          console.log(err)
        }
        if(result[0]===undefined) {
          res.send('0')    //username正确后，password错误，data返回 0
        }else {
          jsonWrite(res, result);
        }
      })
    }
  })
});

//首页展示帖子标题
router.post('/selectPost', (req,res) => {
  var sql_post = $sql.user.select_post;
  var params = req.body;
  conn.query(sql_post,function(err, result) {
    if(err) {
      console.log(err)
    }
    if(result[0]===undefined) {
      res.send('-1')    //查询不到帖子数据，data返回-1
    }else {
      res.send(result);
    }
  })
});


//详情页 根据帖子ID 展示帖子标题
router.post('/selectPostById', (req,res) => {
  var sql_post = $sql.user.select_postById;
  var params = req.body;
  conn.query(sql_post,params.postId, function(err, result) {
    if(err) {
      console.log(err)
    }
    if(result[0]===undefined) {
      res.send('-1')    //查询不到帖子数据，data返回-1
    }else {
      res.send(result);
    }
  })
});

//详情页 根据帖子ID 展示回帖数据
router.post('/selectReply', (req,res) => {
  var sql_post = $sql.user.select_replyById;
  var params = req.body;
  conn.query(sql_post,params.postId, function(err, result) {
    if(err) {
      console.log(err)
    }
    if(result[0]===undefined) {
      res.send('-1')    //查询不到帖子数据，data返回-1
    }else {
      res.send(result);
    }
  })
});


//展示新闻页面数据
router.post('/selectNews', (req,res) => {
  var sql_post = $sql.user.select_news;
  var params = req.body;
  conn.query(sql_post,function(err, result) {
    if(err) {
      console.log(err)
    }
    if(result[0]===undefined) {
      res.send('-1')    //查询不到帖子数据，data返回-1
    }else {
      res.send(result);
    }
  })
});

module.exports = router;
