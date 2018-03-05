import Vue from 'vue'
import Router from 'vue-router'
import Index from '@/pages/Index'
import Login from '@/pages/login/Login'
import Register from '@/pages/login/Register'
import Pinterest from '@/pages/Pinterest'
import Agreement from '@/pages/recycle/Agreement'
import Appraisal from '@/pages/recycle/Appraisal'
import Publish from '@/pages/publish'
import Thread from '@/pages/Thread'

Vue.use(Router)
export default new Router({
  mode: 'history',
  routes: [
    /* 论坛首页 */
    {
      path: '/',
      name: 'Index',
      component: Index
    },
    /* 用户登陆页面 */
    {
      path: '/login',
      name: 'Login',
      component: Login
    },
    /* 用户注册页面 */
    {
      path: '/register',
      name: 'Register',
      component: Register
    },
    /* 瀑布流展示页面 */
    {
      path: '/pinterest',
      name: 'Pinterest',
      component: Pinterest
    },
    /* 回收协议页面 */
    {
      path: '/agreement',
      name: 'Agreement',
      component: Agreement
    },
    /* 回收评估页面 */
    {
      path: '/appraisal',
      name: 'Appraisal',
      component: Appraisal
    },
    /* 发布帖子页面 */
    {
      path: '/publish',
      name: 'Publish',
      component: Publish
    },
    /* 帖子具体内容页面 */
    {
      path: '/thread',
      name: 'Thread',
      component: Thread
    },
  ]
})
