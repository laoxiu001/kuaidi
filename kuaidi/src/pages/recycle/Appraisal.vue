<template>
  <div id="appraisal">
    <div class="step">
      <el-steps :active="1" simple>
        <el-step title="填写资料" icon="el-icon-edit"></el-step>
        <el-step title="联系取件" icon="el-icon-phone"></el-step>
        <el-step title="上门取件" icon="el-icon-time"></el-step>
        <el-step title="线上取钱" icon="el-icon-mobile-phone"></el-step>
      </el-steps>
    </div>
    <div class="infomation">
      <el-form label-width="80px" label-position="left">

        <el-form-item label="包装材料">
          <el-radio-group v-model="resource">
            <el-radio border label="瓦楞纸"></el-radio>
            <el-radio border label="包装袋"></el-radio>
            <el-radio border label="泡沫箱"></el-radio>
          </el-radio-group>
        </el-form-item>

        <el-form-item label="包装面积">
          <el-radio-group v-model="area">
            <el-radio border label="1~10cm²"></el-radio>
            <el-radio border label="10~100cm²"></el-radio>
            <el-radio border label="100~1000cm²"></el-radio>
            <el-radio border label="大于1000cm²"></el-radio>
          </el-radio-group>
        </el-form-item>

        <el-form-item label="破损程度">
          <el-radio-group v-model="damage">
            <el-radio label="全新包装，外壳无破损"></el-radio>
            <el-radio label="较新包装，外壳轻微破损"></el-radio>
            <el-radio label="破损包装，外壳破损较为严重"></el-radio>
          </el-radio-group>
        </el-form-item>

        <el-form-item label="取件方式">
          <el-radio-group v-model="manner">
            <el-radio border label="客服联系上门取件"></el-radio>
            <el-radio border label="自行联系快递"></el-radio>
          </el-radio-group>
        </el-form-item>

        <el-form-item label="姓名">
          <el-input v-model="name" style="width: 320px"></el-input>
        </el-form-item>

        <el-form-item label="手机">
          <el-input v-model="tel" style="width: 320px"></el-input>
        </el-form-item>

        <el-form-item v-model="address" label="地址">
        </el-form-item>

        <el-form-item label="">
          <el-checkbox-group v-model="check">
          <el-checkbox label="我已查看并接受" name="type"></el-checkbox>&nbsp;&nbsp;&nbsp;<a href="/agreement" target="_blank" class="agreement">回购协议 ></a>
          </el-checkbox-group>
        </el-form-item>

        <el-form-item>
          <el-button type="primary">立即回收</el-button>
          <el-button @click="resetForm">重置</el-button>
        </el-form-item>

      </el-form>
    </div>
  </div>
</template>

<script>
  export default {
    data() {
      return {
          resource: '',
          area: '',
          damage: '',
          manner: '',
          name: '',
          tel: '',
          address: '',
          check: '',
      }
    },
    methods: {
      resetForm() {
        this.resource = '';
        this.area = '';
        this.damage = '';
        this.manner = '';
        this.name = '';
        this.tel = '';
        this.location = '';
        this.check = '';
      }
    }
  }
</script>

<style>
  #appraisal {
  }
  .step{
    margin: 20px auto;
    padding: 30px 100px;
    width: 800px;
    height: 50px;
    background-color: white;
  }
  .infomation{
    text-align: left;
    margin: 20px auto;
    padding: 50px 100px;
    width: 800px;
    height: 550px;
    background-color: white;
  }
  .agreement{
    text-decoration: none;
    color: #00c3f5;
  }
</style>
