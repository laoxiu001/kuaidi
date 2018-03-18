<template xmlns="http://www.w3.org/1999/html">
  <div id="login">
    <div class="middle">
      <div class="box">
        <div class="box_top"><h3>注册 Comsenz Inc. 论坛</h3></div>
        <div class="box_bottom">
          <div class="form">
            <el-form ref="form" label-width="80px" label-position="left">
              <el-form-item label="用户名">
                <el-input v-model="username" placeholder="请输入用户名"></el-input>
              </el-form-item>
              <el-form-item label="密码">
                <el-input type="password" v-model="password" placeholder="请输入密码"></el-input>
              </el-form-item>
              <el-form-item label="确认密码">
                <el-input type="password" v-model="password_conf" placeholder="请输入确认密码"></el-input>
              </el-form-item>
              <el-form-item label="邮箱">
                <el-input v-model="email" placeholder="请输入邮箱"></el-input>
              </el-form-item>
              <el-form-item label="验证码">
                <el-input style="width: 160px;float: left" v-model="code" placeholder="请输入验证码"></el-input>
                <input type="button" @click="createCode" v-model="checkCode" style="width: 80px;height: 35px;font-size: 17px;background-color:transparent;border:0px;"/>
              </el-form-item>
              <el-form-item size="large">
                <el-button class="fl btn_login" @click="addUser">注册</el-button>
              </el-form-item>
            </el-form>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    data () {
      return {
        username: '',
        password: '',
        password_conf: '',
        email: '',
        code: '',
        checkCode: '',
      }
    },
    /* 自动调用函数ss */
    mounted() {
      this.createCode();
    },
    methods: {
      addUser() {
        var username = this.username;
        var password = this.password;
        var password_conf = this.password_conf
        var email = this.email;
        var code = this.code;
        var checkCode = this.checkCode;

        if (username==''){
          this.$message.error('请输入用户名');
          return;
        }else if(password==''){
          this.$message.error('请输入密码');
          return;
        }else if(password_conf==''){
          this.$message.error('请输入确认密码');
          return;
        }else if(email==''){
          this.$message.error('请输入邮箱');
          return;
        }else if(code==''){
          this.$message.error('请输入验证码');
          return;
        }else if(code.toUpperCase()!=checkCode){
          this.$message.error('请输入正确的验证码');
          return;
        }else if(password!=password_conf){
          this.$message.error('请确保两次输入的密码一致');
          return;
        }else {
          /* 执行注册 */
          this.$http.post('/api/user/addUser', {
            username: username,
            password: password,
            email: email
          },{}).then((response) => {
            console.log(response);
            /* userApi接口传值-1，该用户存在 */
            if(response.data == -1){
              this.$message.error('对不起，该账号已存在');
            }else if(response.data == 'ok'){
              this.$message('恭喜您，注册成功，现在进入登陆前页面');
              /*注册成功之后再跳回登录页*/
              this.clear();//清空文本
              this.createCode();//更新验证码
              this.$router.push({ path: '/' })
            }else{
              this.$message.error('对不起，注册失败，请联系管理员');
            }
          })
        }
      },
      /* 清空注册文本框数据 */
      clear(){
        this.username = ''
        this.password = ''
        this.password_conf = ''
        this.email = ''
        this.code = ''
        this.checkCode = ''
      },

      // 图片验证码
      createCode(){
        var code = "";
        var codeLength = 4;//验证码的长度
        var random = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R',
          'S','T','U','V','W','X','Y','Z');//随机数
        for(var i = 0; i < codeLength; i++) {
          //循环操作
          var index = Math.floor(Math.random()*36);//取得随机数的索引（0~35）
          code += random[index];//根据索引取得随机数加到code上
        }
        this.checkCode = code;//把code值赋给验证码
      },
    }
  }
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
