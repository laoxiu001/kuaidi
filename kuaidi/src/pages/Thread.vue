<template>
  <div id="thread">
    <div class="location">
      <a href="/" class=""><img src="../assets/home.png" alt="首页"></a>
      <em>&nbsp»&nbsp</em>
      <a href="/" class="clra text13">论坛</a>
      <em>&nbsp»&nbsp</em>
      <a href="/" class="clra text13">第一分区</a>
      <em>&nbsp»&nbsp</em>
      <a href="/" class="clra text13">瀑布流</a>
    </div>

    <div class="publish">
      <el-button type="primary" style="background-color: red;border: none">发表主题</el-button>
    </div>

    <div class="title" v-for="item in post">
      <div class="views fl"><a>查看: <span>{{item.review}}</span> | 回复: <span>{{item.reply}}</span></a></div>
      <div class="line fl"><img src="../assets/thread/line.png" alt="分割线"></div>
      <div class="title_text fl">{{item.title}}<a href="" class="clra">[复制链接]</a></div>
      <div class="title_icon fr">
        <a href=""><img src="../assets/thread/print.png" alt=""></a>
        <a href=""><img src="../assets/thread/prev.png" alt=""></a>
        <a href=""><img src="../assets/thread/next.png" alt=""></a>
      </div>
    </div>

    <div class="post" v-for="item in reply">
      <div class="user fl">
        <div class="username"><a>{{item.username}}</a></div>
        <div class="photo"><img src="../assets/thread/photo.gif" alt="photo"></div>
        <div class="userinf">
          <div class="userinf_title fl"><p><a href="" class="clra">{{item.title}}</a></p>主题</div>
          <div class="userinf_post fl"><p><a href="" class="clra">{{item.post}}</a></p>帖子</div>
          <!-- 积分 -->
          <div class="userinf_integral fl"><p><a href="" class="clra">{{item.integral}}</a></p>积分</div>
        </div>
        <div class="admin"><a href="" class="clra">管理员</a></div>
        <div class="level">
          <img src="../assets/thread/sun.gif" alt="太阳">
          <img src="../assets/thread/sun.gif" alt="太阳">
          <img src="../assets/thread/star.gif" alt="星星">
        </div>
        <div class="user_button">
          <el-button type="primary" icon="el-icon-circle-plus-outline" size="mini" style="width: 80px">收听Ta</el-button>
          <el-button type="primary" icon="el-icon-message" size="mini" style="width: 80px">发消息</el-button>
        </div>
      </div>

      <div class="content fl">
        <div class="date">
          发表于 <span style="margin-right: 50px">{{item.date}}</span>
          | <a href="">只看该作者</a>
          | <a href="">只看大图</a>
          | <a href="">倒叙浏览</a>
          | <a href="">阅读模式</a>
        </div>
        <div class="text" v-html="item.content">
          <a>{{item.content}}</a>
        </div>
        <div class="content_button">
          <el-button type="primary" icon="el-icon-star-off" size="mini" v-if="item.isFirst == 1">收藏</el-button>
          <el-button type="primary" icon="el-icon-share" size="mini" v-if="item.isFirst == 1">转发</el-button>
          <el-button type="primary" icon="el-icon-document" size="mini" v-if="item.isFirst == 0">回复</el-button>
          <el-button type="primary" icon="el-icon-upload" size="mini" v-if="item.isFirst == 1">分享</el-button>
          <el-button type="primary" icon="el-icon-document" size="mini" v-if="item.isFirst == 1">淘帖</el-button>
          <el-button type="primary" icon="el-icon-circle-check-outline" size="mini">支持</el-button>
          <el-button type="primary" icon="el-icon-circle-close-outline" size="mini">反对</el-button>
        </div>
      </div>
    </div>

    <div class="reply">
      <div class="title" style="width: 500px;margin-left: 15px"><h2>回复帖子</h2></div>
      <!--在线文本编辑器-->
      <el-form>
        <vue-html5-editor :content="content" :height="200" style="width: 900px;margin: 0 auto;margin-top: 20px"></vue-html5-editor>
        <el-form-item style="margin-top: 20px">
          <el-button type="danger" class="fl" style="margin-left: 40px">发表回复</el-button>
        </el-form-item>
      </el-form>
    </div>
  </div>
</template>

<script>
  export default {
    data(){
      return{
        post: [],
        reply: [],
      }
    },
    mounted () {
      this.list();
    },
    methods: {
      list(){
        /* 获取帖子标题信息 */
        var postId = this.$route.query.postId;/* 获取URL传参 */
        this.$http.post('/api/user/selectPostByID',{
          postId: postId,
        },{}).then((response)=>{
          this.post = response.data;
        });

        /* 获取回帖数据 */
        this.$http.post('/api/user/selectReply',{
          postId: postId,
        },{}).then((response)=>{
          this.reply = response.data;
          console.log('213123' + this.reply);
        });
      }
    }
  }
</script>

<style scope>
  #thread {
    width: 1000px;
    margin: 10px auto;
  }
  .location{
    text-align: left;
    height: 14px;
  }
  .publish{
    margin-top: 15px;
    text-align: left;
    height: 25px;
  }
  .title{
    text-align: left;
    margin-top: 25px;
    width: 950px;
    height: 25px;
    padding: 10px 25px;
    background-color: white;
  }
  .views{
    font-size: 12px;
  }
  .title .views a span{
    color: red;
  }
  .line{
    margin-top: -10px;
    margin-left: 60px;
  }
  .line img{
    height: 45px;
  }
  .title_text{
    margin-left: 20px;
  }
  .title_text{
    font-weight: 800;
  }
  .title_text a{
    color: #999;
    font-size: 12px;
  }
  .title_icon{
    margin-top: 5px;
  }
  .post{
    width: 960px;
    overflow:hidden;
    padding: 20px 20px;
    margin-top: 10px;
    background-color: white;
  }
  .user .username{
    text-align: left;
    width: 155px;
    height: 30px;
    border-bottom: 1px dashed #eee;
  }
  .user .username a{
    height: 30px;
    line-height: 30px;
    font-size: 14px;
    color: red;
  }
  .photo{
    margin-top: 15px;
    border-bottom: 2px solid #d5dadf;
  }
  .userinf{
    margin-top: 8px;
  }
  .userinf div{
    font-size: 13px;
    height: 30px;
    width: 50px;
  }
  .userinf div p a{
    color: red;
  }
  .userinf div p a:hover{
    color: red;
  }
  .userinf_title{
    border-right: 1px solid #CCC;
  }
  .userinf_post{
    border-right: 1px solid #CCC;
  }
  .admin{
    width: 80px;
    height: 30px;
    margin-top: 50px;
    text-align: left;
  }
  .admin a{
    font-size: 12px;
  }
  .admin a:hover{
    color: red;
  }
  .level{
    text-align: left;
  }
  .user_button{
    margin-top: 5px;
    margin-bottom: 55px;
  }
  .content{
    text-align: left;
  }
  .content .date{
    margin-left: 20px;
    font-size: 13px;
    color: #666;
  }
  .content .date span,a{
    color: #666;
    text-decoration: none;
  }
  .content .date a:hover{
    color: red;
  }
  .content .text{
    margin-left: 20px;
    margin-top: 20px;
    width: 760px;
  }
  .content_button{
    margin-top: 80px;
    text-align: center;
  }
  .reply{
    margin-top: 30px;
    height: 400px;
    width: 980px;
    background-color: white;
    padding: 10px 10px;
  }
</style>
