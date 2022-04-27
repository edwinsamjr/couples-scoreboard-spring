import * as Vue from 'vue'
import * as VueRouter from 'vue-router'
import EnterScore from '@/views/EnterScore.vue';
import MainMenu from '@/views/MainMenu.vue';

Vue.use(VueRouter)

const router = new VueRouter({
    mode: 'history',
    routes: [
        {
            path: '/',
            name: 'main-menu',
            component: MainMenu
        },
        {
            path: '/enter-score',
            name: 'enter-score',
            component: EnterScore,
          }
    ]


})

export default router;