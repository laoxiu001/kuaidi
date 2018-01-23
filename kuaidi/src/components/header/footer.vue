<template>
  <div class="footer">
    <!--底部上部分友情链接start-->
    <div class="url">
      <el-row>
        <el-col :span="4"><div class=""></div>
          &nbsp;
        </el-col>
        <el-col :span="16"><div class="content">
          <!-- 友情链接文本内容 -->
          <el-row>
            <el-col :span="4"><div class="content_box">
              <div class="content_box_text"><a class="fl">一加传媒·MCM</a></div>
              <div class="content_box_url"><a class="fl" href="www.baidu.com">一加传媒·MCM</a></div>
              <div class="content_box_url"><a class="fl" href="www.baidu.com">一加影像</a></div>
            </div></el-col>
            <el-col :span="4"><div class="content_box">
              <div class="content_box_text"><a class="fl">关于我们·About US</a></div>
              <div class="content_box_url"><a class="fl" href="www.baidu.com">广告服务</a></div>
              <div class="content_box_url"><a class="fl" href="www.baidu.com">投稿指南</a></div>
              <div class="content_box_url"><a class="fl" href="www.baidu.com">联系我们</a></div>
              <div class="content_box_url"><a class="fl" href="www.baidu.com">用户协议</a></div>
              <div class="content_box_url"><a class="fl" href="www.baidu.com">关于我们</a></div>
            </div></el-col>
            <el-col :span="4"><div class="content_box">
              <div class="content_box_text"><a class="fl">一加论坛·Forum</a></div>
              <div class="content_box_url"><a class="fl" href="www.baidu.com">国内资讯</a></div>
              <div class="content_box_url"><a class="fl" href="www.baidu.com">国际资讯</a></div>
              <div class="content_box_url"><a class="fl" href="www.baidu.com">社区福利</a></div>
            </div></el-col>
            <el-col :span="4"><div class="content_box">
              <div class="content_box_text"><a class="fl">一加赛事·Race</a></div>
              <div class="content_box_url"><a class="fl" href="www.baidu.com">军事新闻</a></div>
              <div class="content_box_url"><a class="fl" href="www.baidu.com">社区聚焦</a></div>
              <div class="content_box_url"><a class="fl" href="www.baidu.com">赛事专栏</a></div>
              <div class="content_box_text"><a class="fl">一加影像·MCF</a></div>
              <div class="content_box_url"><a class="fl" href="www.baidu.com">优酷空间</a></div>
            </div></el-col>
            <el-col :span="4"><div class="content_box">
              <div class="content_box_text"><a class="fl">合作伙伴·Partners</a></div>
              <div class="content_box_url"><a class="fl" href="www.baidu.com">展览展会</a></div>
              <div class="content_box_url"><a class="fl" href="www.baidu.com">协会团体</a></div>
              <div class="content_box_url"><a class="fl" href="www.baidu.com">合作媒体</a></div>
              <div class="content_box_text"><a class="fl">更多信息·More info</a></div>
              <div class="content_box_url"><a class="fl" href="www.baidu.com">官方微博</a></div>
            </div></el-col>
            <el-col :span="4"><div class="content_box">
              <div class="content_box_text"><a class="fl">一加项目·Projects</a></div>
              <div class="content_box_url"><a class="fl"><img src="../../assets/weixin.jpg" alt="weixin" style="width: 145px;"></a></div>
              <div class="content_box_text"><a class="fl">扫码关注公众号抢福利</a></div>
            </div></el-col>
          </el-row>
        </div>
        </el-col>
        <el-col :span="4"><div class=""></div>
          &nbsp;
        </el-col>
      </el-row>
    </div>
    <!--底部上部分友情链接end-->
    <!--底部下部分版权信息start-->
    <div class="copyright">
      <el-row>
        <el-col :span="4"><div class=""></div>
          &nbsp;
        </el-col>
        <el-col :span="8"><div class="">
          <a class="fl" style="color: #bababa;font-size: 12px">© 2001-2013 Comsenz Inc.  Powered by Discuz! X3.2</a>
        </div>
        </el-col>
        <el-col :span="8"><div class=""></div>
          <a class="fl" style="color: #bababa;font-size: 12px">Archiver|手机版|小黑屋|Comsenz Inc.</a>
        </el-col>
        <el-col :span="4"><div class=""></div>
          &nbsp;
        </el-col>
      </el-row>
    </div>
    <!--底部下部分版权信息end-->
  </div>
</template>

<script>
</script>
<style scope>
  .footer{
    margin-top: 500px;
  }
  .url{
    background-color: #333;
    height: 280px;
    width:100%;
    color: #a5a5a5;
  }
  .url .content{
    margin-top: 30px;
  }
  /* 友情链接：标题 */
  .url .content .content_box .content_box_text{
    height: 35px;
    width:100%;
  }
  /* 友情链接：链接 */
  .url .content .content_box .content_box_url{
    height: 35px;
    width:100%;
    font-size: 12px;
  }
  .url .content .content_box .content_box_url a{
    color: #a5a5a5;
    text-decoration: none;
  }
  .copyright{
    padding-top: 10px;
    background-color: #333;
    height: 25px;
    width:100%;
  }
</style>
