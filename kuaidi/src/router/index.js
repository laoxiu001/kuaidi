import Vue from 'vue'
import Router from 'vue-router'
import Index from '@/pages/Index'
import Login from '@/pages/login/Login'
import Register from '@/pages/login/Register'
import Pinterest from '@/pages/Pinterest'
import Agreement from '@/pages/recycle/Agreement'
import Appraisal from '@/pages/recycle/Appraisal'

Vue.use(Router)
export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: 'Index',
      component: Index
    },
    {
      path: '/login',
      name: 'Login',
      component: Login
    },
    {
      path: '/register',
      name: 'Register',
      component: Register
    },
    {
      path: '/pinterest',
      name: 'Pinterest',
      component: Pinterest
    },
    {
      path: '/agreement',
      name: 'Agreement',
      component: Agreement
    },
    {
      path: '/appraisal',
      name: 'Appraisal',
      component: Appraisal
    },
  ]
})
