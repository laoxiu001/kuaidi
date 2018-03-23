<template xmlns="http://www.w3.org/1999/html">
  <div class="index">
    <div class="content_top">
      <div class="picture fl">
        <img class="fl" src="../assets/index/lunbo.png" alt="lunbo" style="width: 455px;height: 270px;">
        <img class="fl" src="../assets/index/img2.png" alt="img2" style="display: block">
        <img class="fl" src="../assets/index/img1.jpg" alt="img1" style="display: block">
        <div class="cb"></div>
      </div>
      <div class="hotnews fl">
        <div class="hotnews_box">
          <p class="today_recomend">今日推荐</p>
          <div class="hotnews_new" v-for="item in today_recomend">
            <h4><a href="#" class="clra">{{ item.title}}</a></h4>
            <p align="left">{{ item.review}}</p>
            <hr style="background-color: #f2f2f2">
          </div>
        </div>
      </div>
    </div>
    <div class="content_bottom">
      <div class="content_bottom_right fr">
        <div style="width: 270px;height:45px;border-bottom: 1px solid #eee;"><h2><span>推荐阅读</span></h2></div>
        <div class="recomend_reading" v-for="item in recomend_reading">
          <div class="fl">
            <a href="#" class="clra">{{ item.title }}</a>
            <p>{{ item.date }}</p>
          </div>
          <div class="fl"><img class="fl" :src="item.src"></div>
        </div>
      </div>
      <div class="content_bottom_left fl" v-for="item in post">
        <div class="posts">
          <div class="posts_img fl"><a href="/thread" class="clra"><img :src="item.src" alt="post_img"></a></div>
          <div class="posts_title"><a href="/thread" class="clra">{{ item.title }}</a></div>
          <div class="posts_user">
            <a href="#" class="clra fl"><img src="../assets/index/user.gif" alt="avatar">&nbsp;</a>
            <a href="#" class="clra text13 fl username">{{ item.user }}</a>
            <a class="text13 fl"> &nbsp;| {{ item.date }}</a>
          </div>
          <div class="posts_review" align="left">{{ item.review }}</div>
        </div>
      </div>
      <div class="cb"></div>
    </div>
  </div>
</template>

<script>
  export default {
    data () {
      return {
        today_recomend: [
          {
            title: '特斯拉充电器紧急召回：存在...',
            review: '据特斯拉周二发给客户的电子邮件显示，今年11月，该公司的两位客户声称遭遇汽车充电',
          },
          {
            title: '资本寒冬让创业者融资难，推广...',
            review: '据特斯拉周二发给客户的电子邮件显示，今年11月，该公司的两位客户声称遭遇汽车充电',
          },
          {
            title: '一键“约答”校友，哈佛系创业者用知..',
            review: '据特斯拉周二发给客户的电子邮件显示，今年11月，该公司的两位客户声称遭遇汽车充电',
          },
          {
            title: '创业者花钱要谨慎，多专注于小的事...',
            review: '据特斯拉周二发给客户的电子邮件显示，今年11月，该公司的两位客户声称遭遇汽车充电',
          },
        ],
        post: [
          {
            src: require('../assets/index/post1.jpg'),
            title: 'QQ运营女王刘凌：小白到大神，谈运营人成长',
            user: '不存在拥有',
            date: '2017-05-10',
            review: '对于初阶运营人来讲，最需要打磨的两种素质，一是用户视角，站在用户角度看待问题，而非自己天马行空，为了创意而创意没',
          },
          {
            src: require('../assets/index/post2.png'),
            title: '第一次负责从0到1的产品时要注意哪几点？',
            user: '个地方个人',
            date: '2017-05-20',
            review: '需求优先级的划分是个老生常谈的问题，但为什么这个很重要？ 举个例子：如果自己第一次独立负责一款产品时遇到开发Delay',
          },
          {
            src: require('../assets/index/post3.jpg'),
            title: '算法架构师曹欢欢：给你看下，被调教得很成熟的今日头条 app 长',
            user: '方同意',
            date: '2017-05-20',
            review: '「我们搞算法的，不喜欢 social……」面对围上来要跟他加微信的媒体同仁们，曹欢欢显出些负担感。 　　作为今日头条 ......',
          },
          {
            src: require('../assets/index/post4.jpg'),
            title: '游泳潜水都不怕 这是一款真正的防水耳机',
            user: '你太软弱',
            date: '2017-04-10',
            review: '最近在Kickstarter上出现了一款名叫TAYOGO AMP的蓝牙无线耳机，这款耳机最大的特点就是可以做到真正的防水功能。TAYO .....',
          },
        ],
        recomend_reading: [
          {
            title: 'QQ运营女王刘凌：小白到大神，谈运营人成长',
            date: '2017-05-10',
            src: require('../assets/index/post1.jpg'),
          },
          {
            title: '第一次负责从0到1的产品时要注意哪几点？',
            date: '2017-07-10',
            src: require('../assets/index/post2.png'),
          },
          {
            title: '算法架构师曹欢欢：给你看下，被调教得很成',
            date: '2017-02-15',
            src: require('../assets/index/post3.jpg'),
          },
          {
            title: '游泳潜水都不怕 这是一款真正的防水耳机',
            date: '2017-07-15',
            src: require('../assets/index/post4.jpg'),
          },
        ],
      }
    }
  }
</script>

<style scoped>
  .content_top{
    width: 1000px;
    height: 370px;
    margin:15px auto;
  }
  .picture{
    height: 270px;
    width: 685px;
  }
  .hotnews{
    width: 300px;
    height:375px;
  }
  .today_recomend{
    width: 95px;
    height: 93px;
    position: absolute;
    right: 250px;
    top: 100px;
    line-height: 200px;
    overflow: hidden;
    background: url("../assets/index/recomend.png") no-repeat -13px -2px;
  }
  .hotnews{
    background-color: white;
  }
  .hotnews_new{
    margin-top: 10px;
    margin-left: 15px;
    width: 270px;
    height:80px;
  }
  .hotnews_new p{
    width: 260px;
    font-size: 13px;
    color: #999;
    line-height: 20px;
    height: 42px;
    margin-top: 10px;
  }
  .hotnews_new h4 a:hover{
    color: red;
  }
  .content_bottom{
    margin:0 auto;
    width: 1000px;
  }
  .posts{
    padding-top: 30px;
    padding-left: 10px;
    width: 665px;
    height:160px;
    background-color: white;
    box-shadow: 0px 2px 5px #888888;
  }
  .posts_img{
    width: 220px;
    height: 135px;
    overflow: hidden;
  }
  .posts_img img:hover{
    transition: all 0.6s;
    transform: scale(1.2);/*鼠标经过图片放大的倍数*/
  }
  .posts_title{
    width: 400px;
    height:43px;
    margin-left: 230px;
    font-weight: 600;
    font-size: 18px;
    text-align: left;
  }
  .posts_title a:hover{
    color: red;
  }
  .posts_user{
    margin-left: 10px;
    margin-top: 15px;
    width: 400px;
    height: 28px;
    float: left;
  }
  .posts_user a{
    height: 28px;
    line-height: 28px;
  }
  .username:hover{
    color: red
  }
  .posts_user a img{
    border-radius:20px;
    width:25px;
    height:25px;
  }
  .posts_review{
    margin-left: 230px;
    margin-top: 50px;
    width: 400px;
    height: 50px;
    font-size: 14px;
    color: #888;
  }
  .content_bottom_right{
    margin-right: 15px;
    padding-left: 20px;
    padding-top: 15px;
    width: 280px;
    background-color: white;
  }
  .content_bottom_right h2 span{
    float: left;
    display: inline-block;
    height: 30px;
    font-size: 18px;
    color: #EB0028;
    font-weight: 400;
    border-bottom: 2px solid #EB0028;
  }
  .recomend_reading{
    margin-top: 10px;
    text-align: left;
    color: #666;
    font-size: 12px;
    width: 270px;
    height: 90px;
    border-bottom: 1px solid #eee;
  }
  .recomend_reading p{
    margin-top: 10px;
  }
  .recomend_reading img{
    width: 95px;
    height: 75px;
  }
  .recomend_reading a{
    display: block;
    color: #666;
    width: 160px;
    line-height: 21px;
    font-size: 14px;
    font-weight: 400;
  }
  .recomend_reading a:hover{
    color: red;
  }
</style>
