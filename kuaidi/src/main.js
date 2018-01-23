// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './utils/App'
import router from './router'
import Element from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import Myheader from './components/header/header'

Vue.config.productionTip = false
/* eslint-disable no-new */
Vue.use(Element)
Vue.component('my-header', {
  components: { Myheader },
  template: '<Myheader/>'
})
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
