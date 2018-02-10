<template xmlns="http://www.w3.org/1999/html">
  <div id="login">
    <div class="middle">
      <div class="box">
        <div class="box_top"><h3>注册 Comsenz Inc. 论坛</h3></div>
        <div class="box_bottom">
          <div class="form">
            <el-form ref="form" label-width="80px" label-position="left">
              <el-form-item label="用户名">
                <el-input></el-input>
              </el-form-item>
              <el-form-item label="密码">
                <el-input type="password"></el-input>
              </el-form-item>
              <el-form-item label="确认密码">
                <el-input type="password"></el-input>
              </el-form-item>
              <el-form-item
                prop="email"
                label="Email"
                :rules="[
      { required: true, message: '请输入邮箱地址', trigger: 'blur' },
      { type: 'email', message: '请输入正确的邮箱地址', trigger: 'blur,change' }
    ]"
              >
                <el-input></el-input>
              </el-form-item>
              <el-form-item label="验证码">
                <el-input style="width: 160px;float: left"></el-input>
              </el-form-item>
              <el-form-item size="large">
                <el-button class="fl btn_login">登陆</el-button>
              </el-form-item>
            </el-form>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
</script>

<style scope>
  .middle{
    width:1000px;
    height:630px;
    margin:0 auto;
  }
  .box{
    margin:100px auto;
    width: 480px;
    height:480px;
  }
  .box_top{
    width: 100%;
    height: 70px;
    box-shadow: rgba(0,0,0,0.0784314) 0px 1px 4px;
    background: linear-gradient(rgb(255,255,255),rgb(245,245,245));
    border-bottom: 1px solid rgb(220,220,220) !important;
  }
  .box_top h3{
    font-size: 20px !important;
    height: 69px;
    line-height: 69px;
    color: rgb(102,102,102);
  }
  .box_bottom{
    padding-top: 50px;
    width: 100%;
    height: 390px;
    box-shadow: rgba(0,0,0,0.0784314) 0px 1px 4px;
    background: linear-gradient(rgb(255,255,255),rgb(245,245,245));
    border-bottom: 1px solid rgb(220,220,220) !important;
  }
  .form{
    margin:0 auto;
    width: 350px;
  }
  .btn_login{
    width: 220px;
    height: 45px;
    color: white;
    font-size: 20px;
    font-weight: 600;
    background-color: #EB0028;
    border-radius: 8px;
  }
</style>
