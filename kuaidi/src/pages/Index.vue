<template>
  <div class="index">
    <my-header></my-header>
    <div class="content_top">
      <div class="picture fl">
        <img class="fl" src="../assets/index/lunbo.png" alt="lunbo" style="width: 455px;height: 270px;">
        <img class="fl" src="../assets/index/img2.png" alt="img2" style="display: block">
        <img class="fl" src="../assets/index/img1.jpg" alt="img1" style="display: block">
        <div class="cb"></div>
      </div>
      <div class="hotnews fl">
        <div class="hotnews_box">
          <p class="recomend">今日推荐</p>
          <div class="hotnews_new">
            <h4><a>特斯拉充电器紧急召回：存在...</a></h4>
            <p align="left">据特斯拉周二发给客户的电子邮件显示，今年11月，该公司的两位客户声称遭遇汽车充电</p>
          </div>
          <hr style="background-color: #f2f2f2">
          <div class="hotnews_new">
            <h4><a>资本寒冬让创业者融资难，推广...</a></h4>
            <p align="left">据特斯拉周二发给客户的电子邮件显示，今年11月，该公司的两位客户声称遭遇汽车充电</p>
          </div>
          <hr>
          <div class="hotnews_new">
            <h4><a>一键“约答”校友，哈佛系创业者用知..</a></h4>
            <p align="left">据特斯拉周二发给客户的电子邮件显示，今年11月，该公司的两位客户声称遭遇汽车充电</p>
          </div>
          <hr>
          <div class="hotnews_new">
            <h4><a>创业者花钱要谨慎，多专注于小的事...</a></h4>
            <p align="left">据特斯拉周二发给客户的电子邮件显示，今年11月，该公司的两位客户声称遭遇汽车充电</p>
          </div>
        </div>
      </div>
    </div>
    <div class="content_bottom">
      <div class="content_bottom_left">
        <div class="posts">
          <div class="posts_img fl"><img src="../assets/index/post.jpg" alt="post_img"></div>
          <div class="posts_title"><a href="#" class="clra">QQ运营女王刘凌：小白到大神，谈运营人成长的三个阶段</a></div>
          <div class="posts_user">
            <a href="#" class="clra fl"><img src="../assets/index/user.gif" alt="avatar">&nbsp;</a>
            <a href="#" class="clra text13 fl">23123</a>
            <a class="text13 fl"> &nbsp;| 2017-05-10</a>
          </div>
          <div class="posts_review" align="left">对于初阶运营人来讲，最需要打磨的两种素质，一是用户视角，站在用户角度看待问题，而非自己天马行空，为了创意而创意没有太</div>
        </div>
      </div>
    </div>
    <my-footer></my-footer>
  </div>
</template>

<script>
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
  .recomend{
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
  .content_bottom{
    margin:0 auto;
    width: 1000px;
  }
  .posts{
    padding-top: 30px;
    width: 650px;
    height:160px;
    background-color: white;
    box-shadow: 0px 2px 5px #888888;
  }
  .posts_title{
    width: 415px;
    height:43px;
    margin-left: 230px;
    font-weight: 550;
    font-size: 18px;
    text-align: left;
  }
  .posts_user{
    width: 415px;
    height: 28px;
    margin-top: 10px;
    margin-left: 10px;
    float: left;
  }
  .posts_user a{
    height: 28px;
    line-height: 28px;
  }
  .posts_user a img{
    border-radius:20px;
    width:25px;
    height:25px;
  }
  .posts_review{
    margin-left: 230px;
    width: 415px;
    height: 50px;
    font-size: 14px;
    color: #888;
  }
</style>
