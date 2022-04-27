import Vue from 'vue'
import VueRouter from 'vue-router'
import MainMenu from '@/views/MainMenu.vue'
import EnterScore from '@/views/EnterScore.vue'
import SearchScores from '@/views/SearchScores.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'main-menu',
    component: MainMenu
  },
  {
    path: '/enter-score',
    name: 'enter-score',
    component: EnterScore
  },
  {
    path: '/search',
    name: 'search-scores',
    component: SearchScores
  }


]

const router = new VueRouter({
  routes
})

export default router
