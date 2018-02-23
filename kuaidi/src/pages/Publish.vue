<template>
  <div id="publish">
    <div class="location">
      <a href="/" class=""><img src="../assets/home.png" alt="首页"></a>
      <em>&nbsp»&nbsp</em>
      <a href="/" class="clra text13">论坛</a>
      <em>&nbsp»&nbsp</em>
      <a href="/" class="clra text13">第一分区</a>
      <em>&nbsp»&nbsp</em>
      <a href="/" class="clra text13">瀑布流</a>
    </div>

    <div class="editor">
      <el-form ref="form" label-position="left" :inline="true">
        <el-form-item label="帖子主题">
          <el-select placeholder="请选择主题分类" v-model="style">
            <el-option label="教程" value="shanghai"></el-option>
            <el-option label="软件" value="shanghai1"></el-option>
            <el-option label="游戏" value="shanghai2"></el-option>
            <el-option label="壁纸" value="shanghai3"></el-option>
            <el-option label="铃声" value="shanghai4"></el-option>
            <el-option label="杂谈" value="shanghai5"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="标题">
          <el-input v-model="name" style="width: 545px"></el-input>
        </el-form-item>
      <!--在线文本编辑器-->
      <vue-html5-editor :content="content" :height="500"></vue-html5-editor>
        <el-form-item style="margin-top: 20px">
          <el-button type="danger">发表帖子</el-button>
          <el-button plain>保存草稿</el-button>
        </el-form-item>
      </el-form>
    </div>
  </div>
</template>

<script>
  export default {
    data(){
      return {
        content:'',
        name:'',
        style:'',
      }
    }
  }
</script>

<style>
  #publish {
    width: 1000px;
    margin:8px auto;
  }
  .location{
    text-align: left;
    height: 14px;
  }
  .review_top{
    margin-left: 15px;
    width: 870px;
    height:32px;
  }
  .editor{
    text-align: left;
    margin:20px auto;
    width: 900px;
    padding: 30px 50px;
    background-color: white;
  }
</style>
