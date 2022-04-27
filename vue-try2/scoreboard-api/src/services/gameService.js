import axios from 'axios'

const http = axios.create({
    baseURL: "http://localhost:8080"
  });

export default {
    addGame(game) {
        return http.post('/games', game);
    },

    getAllGamesAllTime() {
        return http.get('/games');
    }
}