<template xmlns="http://www.w3.org/1999/html">
  <div id="login">
    <div class="middle">
      <div class="box">
        <div class="box_top"><h3>登录到 Comsenz Inc. 论坛</h3></div>
        <div class="box_bottom">
          <el-tabs value="first" type="card" v-model="activeName">
            <el-tab-pane label="账号密码登陆" name="first">
              <div class="form">
                <el-form label-width="80px" label-position="left" class="fl">
                  <el-form-item label="用户名">
                    <el-input v-model="username"></el-input>
                  </el-form-item>
                  <el-form-item label="密码">
                    <el-input type="password" v-model="password"></el-input>
                  </el-form-item>
                  <el-form-item label="安全问题">
                    <el-select v-model="question" placeholder="安全问题(未设置请忽略)">
                      <el-option label="安全问题(未设置请忽略)" value="none"></el-option>
                      <el-option label="母亲的名字" value="mother"></el-option>
                      <el-option label="爷爷的名字" value="grandfather"></el-option>
                      <el-option label="出生的城市" value="city"></el-option>
                      <el-option label="一位老师的名字" value="teacher"></el-option>
                    </el-select>
                  </el-form-item>
                  <el-form-item>
                    <el-checkbox-group v-model="autoLogin">
                      <el-checkbox label="下次自动登录" name="type" class="fl"></el-checkbox>
                    </el-checkbox-group>
                  </el-form-item>
                  <a style="cursor: pointer"><i class="fa fa-qq fa-2x"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <a style="cursor: pointer"><i class="fa fa-weibo fa-2x"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <a style="cursor: pointer"><i class="fa fa-weixin fa-2x"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <a style="cursor: pointer"><i class="fa fa-github fa-2x"></i></a>
                  <el-form-item size="large">
                    <el-button type="danger" class="fl btn_login" @click="login">登陆</el-button>
                  </el-form-item>
                </el-form>
              </div>
            </el-tab-pane>
            <el-tab-pane label="二维码登录" name="second">
              <img src="../../assets/code.png" alt="">
            </el-tab-pane>
          </el-tabs>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    data(){
      return {
        activeName: 'first',
        username: '',
        password: '',
        question: '',
        autoLogin :'',
      }
    },
    methods: {
      login() {
        var username = this.username;
        var password = this.password;

        if (username==''){
          this.$message.error('请输入用户名');
          return;
        }else if(password==''){
          this.$message.error('请输入密码');
          return;
        }else{
          this.$http.post('/api/user/selectUser', {
            username: username,
            password: password
          },{}).then((response) => {
            console.log(response);
            console.log(response.data)
            if(response.data == -1){
              /* userApi接口传值-1，该用户不存在 */
              this.$message.error('对不起，用户名不存在');
            }else if(response.data == 0){
              /* userApi接口传值0，该密码错误 */
              this.$message.error('对不起，用户密码错误');
            }else{
              this.$message('登陆成功，3秒后自动进入登陆前页面');


              /* 用户信息验证 */
              /*let expireDays = 1000 * 60 * 60 * 24 * 15;
              this.setCookie('session', response.data.session, expireDays);*/


              /*注册成功之后再跳回登录页*/
              this.clear();//清空文本
              setTimeout(() => {
                this.$router.push({ path: '/appraisal' })
              }, 3000);
            }
          })
        }
      },

      /* 清空注册文本框数据 */
      clear(){
        this.username = '',
        this.password = '',
        this.question = '',
        this.autoLogin = ''
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
    height: 420px;
    box-shadow: rgba(0,0,0,0.0784314) 0px 1px 4px;
    background: linear-gradient(rgb(255,255,255),rgb(245,245,245));
    border-bottom: 1px solid rgb(220,220,220) !important;
  }
  .form{
    margin:0 auto;
    width: 350px;
  }
  .btn_login{
    margin-top: 15px;
    width: 220px;
    height: 45px;
    font-size: 20px;
    font-weight: 600;
    background-color: #EB0028;
    border-radius: 8px;
  }
</style>
