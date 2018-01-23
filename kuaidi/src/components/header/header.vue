<template>
  <div class="Myheader">
    <div class="set">
      <el-row>
        <el-col :span="4"><div class="">
          &nbsp;
        </div></el-col>
        <el-col :span="8"><div class="fl">
          <a class="clra" href="" style="">设为首页</a>
          <a class="clra" href="" style="">收藏本站</a>
        </div></el-col>
        <el-col :span="8"><div class="">
          <a class="clra fr" href="" style="">注册</a>
          <a class="fr">&nbsp;|&nbsp;</a>
          <a class="clra fr" href="" style="">登陆</a>
        </div></el-col>
        <el-col :span="4"><div class="">
          &nbsp;
        </div></el-col>
      </el-row>
    </div>

    <div class="nav">
      <el-row>
        <el-col :span="4"><div class="">
          &nbsp;
        </div></el-col>
        <el-col :span="4"><div class="logo">
          <img class="fl" src="../../assets/logo.png" alt="logo">
        </div></el-col>
        <el-col :span="8"><div class="text">
          <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal" @select="handleSelect">
            <el-menu-item index="1">门户</el-menu-item>
            <el-submenu index="2">
              <template slot="title">论坛</template>
              <el-menu-item index="2-1">主题列表页</el-menu-item>
              <el-menu-item index="2-3">内容页</el-menu-item>
            </el-submenu>
            <el-menu-item index="1">咨询</el-menu-item>
            <el-menu-item index="1">瀑布流</el-menu-item>
            <el-menu-item index="1">排行榜</el-menu-item>
            <el-menu-item index="1">导读</el-menu-item>
          </el-menu>
        </div></el-col>
        <el-col :span="4"><div class="search">
          <el-input
            size="mini"
            placeholder="请输入内容"
            prefix-icon="el-icon-search"
            v-model="input21">
          </el-input>
        </div></el-col>
      </el-row>
        <el-col :span="4"><div class="">
          &nbsp;
        </div></el-col>
      </el-row>
    </div>
  </div>
</template>
<script>
</script>
<style scope>
  .Myheader{
    margin-top: -60px;
    width: 100%;
    height: 100px;
  }
  .set{
    height: 40px;
   margin: 0px auto;
  }
  .set a{
    font-size:12px;
    height: 40px;
    line-height: 40px;
    color: #808080;
  }
  .nav{
    height: 60px;
  }
  .search{
    margin-top: 15px;
  }
</style>
<style>
  *{
    margin: 0;
    padding: 0;
  }
  /*清除浮动*/
  .cb{
    clear: both;
  }
  /*清除浮动*/

  /*li标签清除样式*/
  .clrli{
    list-style-type: none;
  }
  /*li标签清除样式*/

  /*a标签清除样式*/
  .clra,.clra:hover{
    text-decoration: none;
    color: #000;
  }
  /*a标签清除样式*/

  /*左浮动*/
  .fl{
    float: left;
  }
  /*左浮动*/

  /*右浮动*/

  .fr{
    float: right;
  }
  /*右浮动*/

  /* 将a标签块状化 */
  .dis_block{
    display: block;
  }
  /* 将a标签块状化 */

  /* li标签设置同一行 */
  .inline_li{
    display: inline;
  }
  /* li标签设置同一行 */

  /*文字居中*/
  .middle{
    text_align: center;
  }
  /*文字居中*/
  /*13号字体*/
  .text13{
    font-size: 13px;
  }
  /*13号字体*/
  /*14号字体*/
  .text14{
    font-size: 14px;
  }
  /*14号字体*/
  /*15号字体*/
  .text15{
    font-size: 15px;
  }
  /*15号字体*/
  /*16号字体*/
  .text16{
    font-size: 16px;
  }
  /*16号字体*/
  /*17号字体*/
  .text17{
    font-size: 17px;
  }
  /*17号字体*/
  /*18号字体*/
  .text18{
    font-size: 18px;
  }
  /*18号字体*/
</style>
