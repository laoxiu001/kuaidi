<template xmlns="http://www.w3.org/1999/html">
  <div class="index">
    <div class="content_top">
      <div class="picture fl">
        <div class="block">
          <span class="demonstration"><!--今日要闻--></span>
          <el-carousel height="320px" indicator-position="outside">
            <el-carousel-item v-for="item in carousel" :key="carousel.title">
              <h3><a href="#" class="clra">{{ item.title }}</a></h3>
              <a href="#"><img :src="item.src" alt="" style="width: 600px;margin-top: 20px"></a>
            </el-carousel-item>
          </el-carousel>
        </div>
      </div>
      <div class="hotnews fl">
        <div class="hotnews_box">
          <p class="today_recomend">今日推荐</p>
          <div class="hotnews_new" v-for="item in today_recomend">
            <h4><a href="#" class="clra">{{ item.title}}</a></h4>
            <p align="left">{{ item.content}}</p>
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
          <div class="posts_img fl"><a :href="'thread?postId=' + item.id " class="clra"><img :src="item.src" alt="post_img"></a></div>
          <div class="posts_title"><a :href="'thread?postId=' + item.id " class="clra">{{ item.title }}</a>
          </div>
          <div class="posts_user">
            <a href="#" class="clra fl"><img src="../assets/index/user.gif" alt="avatar">&nbsp;</a>
            <a href="#" class="clra text13 fl username">{{ item.user }}</a>
            <a class="text13 fl"> &nbsp;| {{ item.date }}</a>
          </div>
          <div class="posts_review" align="left">{{ item.content }}</div>
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
        carousel: [],
        today_recomend: [],
        post: [],
        recomend_reading: [],
      }
    },
    mounted () {
      this.list();
    },
    methods: {
      list(){
        this.$http.post('/api/user/selectPost').then((response)=>{
          this.post = response.data;
          this.recomend_reading = response.data;
        });

        this.$http.post('/api/user/selectNews').then((response)=>{
          this.carousel = response.data;
          this.today_recomend = response.data;
        });
      }
    }
}
</script>

<style scoped>
  .content_top {
    width: 1000px;
    height: 370px;
    margin: 15px auto;
  }

  .picture {
    margin-top: 20px;
    height: 270px;
    width: 685px;
  }
  .picture h3 a:hover{
    color: red;
  }

  .hotnews {
    width: 300px;
    height: 400px;
  }

  .today_recomend {
    width: 95px;
    height: 93px;
    position: absolute;
    right: 250px;
    top: 100px;
    line-height: 200px;
    overflow: hidden;
    background: url("../assets/index/recomend.png") no-repeat -13px -2px;
  }

  .hotnews {
    background-color: white;
  }

  .hotnews_new {
    margin-top: 10px;
    margin-left: 15px;
    width: 270px;
    height: 90px;
  }

  .hotnews_new p {
    width: 260px;
    font-size: 13px;
    color: #999;
    line-height: 20px;
    height: 42px;
    margin-top: 10px;
  }

  .hotnews_new h4 a:hover {
    color: red;
  }

  .content_bottom {
    margin: 50px auto;
    width: 1000px;
  }

  .posts {
    padding-top: 30px;
    padding-left: 10px;
    width: 665px;
    height: 160px;
    background-color: white;
    box-shadow: 0px 2px 5px #888888;
  }

  .posts_img {
    width: 220px;
    height: 135px;
    overflow: hidden;
  }

  .posts_img img:hover {
    transition: all 0.6s;
    transform: scale(1.2); /*鼠标经过图片放大的倍数*/
  }

  .posts_title {
    width: 400px;
    height: 43px;
    margin-left: 230px;
    font-weight: 600;
    font-size: 18px;
    text-align: left;
  }

  .posts_title a:hover {
    color: red;
  }

  .posts_user {
    margin-left: 10px;
    margin-top: 15px;
    width: 400px;
    height: 28px;
    float: left;
  }

  .posts_user a {
    height: 28px;
    line-height: 28px;
  }

  .username:hover {
    color: red
  }

  .posts_user a img {
    border-radius: 20px;
    width: 25px;
    height: 25px;
  }

  .posts_review {
    margin-left: 230px;
    margin-top: 50px;
    width: 400px;
    height: 50px;
    font-size: 14px;
    color: #888;
  }

  .content_bottom_right {
    margin-right: 15px;
    padding-left: 20px;
    padding-top: 15px;
    width: 280px;
    background-color: white;
  }

  .content_bottom_right h2 span {
    float: left;
    display: inline-block;
    height: 30px;
    font-size: 18px;
    color: #EB0028;
    font-weight: 400;
    border-bottom: 2px solid #EB0028;
  }

  .recomend_reading {
    margin-top: 10px;
    text-align: left;
    color: #666;
    font-size: 12px;
    width: 270px;
    height: 90px;
    border-bottom: 1px solid #eee;
  }

  .recomend_reading p {
    margin-top: 10px;
  }

  .recomend_reading img {
    width: 95px;
    height: 75px;
  }

  .recomend_reading a {
    display: block;
    color: #666;
    width: 160px;
    line-height: 21px;
    font-size: 14px;
    font-weight: 400;
  }

  .recomend_reading a:hover {
    color: red;
  }
</style>
