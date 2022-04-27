import { createRouter, createWebHistory } from 'vue-router'
import MainMenu from '@/views/MainMenu.vue'
import EnterScore from '@/views/EnterScore.vue'

const routes = [
  {
    path: '/',
    name: 'main-menu',
    component: MainMenu
  },
  {
    path:'/enter-score',
    name: 'enter-score',
    component:EnterScore
  }

]

const router = createRouter({
  history: createWebHistory(),
  routes
})

export default router
