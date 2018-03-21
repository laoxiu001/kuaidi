<template>
  <div class="pinterest">
    <div class="location">
      <a href="/" class=""><img src="../assets/home.png" alt="首页"></a>
      <em>&nbsp»&nbsp</em>
      <a href="/" class="clra text13">论坛</a>
      <em>&nbsp»&nbsp</em>
      <a href="/" class="clra text13">第一分区</a>
      <em>&nbsp»&nbsp</em>
      <a href="/" class="clra text13">瀑布流</a>
    </div>

    <div class="review">
      <img class="fl" src="../assets/pinterest/icon/img.jpg" alt="img">
      <div class="review_top fl">
        <a class="name">工艺品展示瀑布流</a>
        <a class="information">今日:
          <strong>0</strong>
          | 主题:
          <strong>30</strong>
          | 排名:
        <strong>11</strong><img src="../assets/pinterest/icon/up.png" alt=""></a>
      </div>
      <div class="review_bottom fr">
        <div class="collection fl">
          <a href="" class="clra text14 fr">&nbsp;收藏本版</a>
        </div>
        <div class="fl" style="width: 20px;height: 30px;line-height: 30px"><em class="">&nbsp;|&nbsp;</em></div>
        <div class="subscription fl">
          <a href="" class="clra text14 fr">&nbsp;订阅本版</a>
        </div>
      </div>
    </div>

    <div class="content_top">
      <div class="menu fl">
        <a href="" class="clra fl">全部主题</a>
        <a href="" class="clra fl">全部时间</a>
        <a href="" class="clra fl">默认排序</a>
      </div>
      <div class="style fr">
        <a href="" class="clra">最新</a>
        <em>&nbsp;|&nbsp;</em>
        <a href="" class="clra">热门</a>
        <em>&nbsp;|&nbsp;</em>
        <a href="" class="clra">热帖</a>
        <em>&nbsp;|&nbsp;</em>
        <a href="" class="clra">精华</a>
        <em>&nbsp;|&nbsp;</em>
        <a href="" class="clra">图片模式</a>
      </div>
    </div>

    <div class="content_bottom">

      <div class="item" v-for="item in list">
        <div class="item_img"><img :src="item" alt=""></div>
      </div>
      <infinite-loading @infinite="infiniteHandler"></infinite-loading>

      <!--<div class="item">
        <div class="item_img"><img src="../assets/pinterest/img/1.jpg" alt=""></div>
      </div>-->
    </div>
  </div>
</template>

<script>
  /* 导入无限加载插件 */
  import InfiniteLoading from 'vue-infinite-loading';

  export default {
    data() {
      return {
        list: [],
      };
    },
    methods: {
      infiniteHandler($state) {
        setTimeout(() => {
          const temp = [];
          for (let i = this.list.length; i <= this.list.length + 5; i++) {
            temp.push('../../static/pinterest/img/'+ i + '.jpg');
          }
          this.list = this.list.concat(temp);
          $state.loaded();
        }, 1000);
      },
    },
    components: {
      InfiniteLoading,
    },
  };
</script>

<style scope>
  .pinterest{
    width: 1000px;
    margin:8px auto;
  }
  .location{
    text-align: left;
    width:100%;
    height: 14px;
  }
  .review{
    margin-top: 15px;
    padding: 20px 15px;
    width: 970px;
    height:100px;
    text-align: left;
    background-color: white;
  }
  .review_top{
    margin-left: 15px;
    width: 870px;
    height:32px;
  }
  .review_top .name{
    font-size: 20px;
    color: #EB0028;
    font-weight: 500;
  }
  .information {
    height: 31px;
    line-height: 31px;
    font-size: 14px;
    color: #999;
  }
  .information strong{
    color: #EB0028;
  }
  .review_bottom{
    margin-left: 15px;
  }
  .review_bottom a img{
    margin-top: 3px;
  }
  .collection{
    width: 80px;
    height: 30px;
    line-height: 30px;
    background-color: red;
      background: url(../assets/pinterest/icon/collection.png) no-repeat left center;
  }
  .subscription{
    width: 80px;
    height: 30px;
    line-height: 30px;
    background-color: red;
    background: url(../assets/pinterest/icon/subscription.png) no-repeat left center;
  }
  .content_top{
    padding:15px 10px;
    margin-top: 20px;
    width:980px;
    height:40px;
    background-color: white;
  }
  .menu a{
    font-size: 12px;
    color: #8F939A;
    display: inline-block;
    border: 1px solid #f0f0f0;
    height: 38px;
    line-height: 38px;
    margin-right: 6px;
    padding-left: 15px;
    padding-right: 30px;
    background: #fff url(../assets/pinterest/icon/menu.png) no-repeat right -104px;
  }
  .menu a:hover{
    color: red;
  }
  .style{
    height:38px;
    width: 250px;
  }
  .style a{
    height: 38px;
    line-height: 38px;
    font-size: 12px;
    color: #7d7d7d;
  }
  .style em{
    font-size: 12px;
    color: #7d7d7d;
  }
  .style a:hover{
    color: red;
  }
  .content_bottom{
    width: 1000px;
    background-color: white;
    border-top: 1px solid #F2F2F2;
    column-count: 3;/* 瀑布流图片列数 */
    column-gap: 0;/* 瀑布流图片间距 */
  }
  .item {
    break-inside: avoid;
    box-sizing: border-box;
    padding: 10px;
  }
  .item_img img{
    width: 100%;
    overflow: hidden;
    position: relative;
    display: flex;
    background: currentColor;
  }
</style>
