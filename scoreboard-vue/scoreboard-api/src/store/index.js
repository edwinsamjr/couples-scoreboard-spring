import Vue from 'vue'
import Vuex from 'vuex'
import gameService from '@/services/gameService.js'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    gameOptions: ['Wordle', 'Quordle', 'Scrabble', 'Cup Pong'],
    allGames: [],
    gameFilter: {
      gameChoice: "",
      timeFrameChoice: "",
    }
  },
  getters: {
  },
  mutations: {
    UPDATE_GAME_LOG(state) { 
      gameService.getAllGamesAllTime().then(response => {
        state.allGames = response.data;
      });
    }

  },
  actions: {
  },
  modules: {
  }
})
