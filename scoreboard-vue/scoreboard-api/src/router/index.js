import Vue from 'vue'
import VueRouter from 'vue-router'
import SearchScores from '@/views/SearchScores.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'search-scores',
    component: SearchScores
  },


]

const router = new VueRouter({
  routes
})

export default router
