<template xmlns="http://www.w3.org/1999/html">
  <div id="login">
    <div class="middle">
      <div class="box">
        <div class="box_top"><h3>登录到 Comsenz Inc. 论坛</h3></div>
        <div class="box_bottom">
          <div class="form">
            <el-form ref="form" label-width="80px" label-position="left">
              <el-form-item label="用户名">
                <el-input></el-input>
              </el-form-item>
              <el-form-item label="密码">
                <el-input type="password"></el-input>
              </el-form-item>
              <el-form-item label="安全问题" class="fl">
                <el-select placeholder="安全问题(未设置请忽略)">
                  <el-option label="母亲的名字" value="mother"></el-option>
                  <el-option label="爷爷的名字" value="grandfather"></el-option>
                  <el-option label="出生的城市" value="city"></el-option>
                  <el-option label="一位老师的名字" value="teacher"></el-option>
                </el-select>
              </el-form-item>
              <el-form-item>
                <el-checkbox-group>
                  <el-checkbox label="下次自动登录" name="type" class="fl"></el-checkbox>
                </el-checkbox-group>
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
    height: 330px;
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
