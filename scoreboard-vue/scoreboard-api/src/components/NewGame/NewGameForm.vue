<template>
  <div id="new-game-form-container">
    <form>
        <h2 id="new-game-form-title">Enter New Game</h2>
        <label class="new-game-label" for="game-options">Game:</label>
        <select class="game-inputs" name="game-options" v-model="newGame.name" required>
            <option></option>
            <option v-for="(game, index) in this.$store.state.gameOptions" :key="index">{{game}}</option>
        </select>

        <label class="new-game-label" for="date-input">Date:</label>
        <input type="date" class="game-inputs" name="date-input" v-model="newGame.date" required />

        <label class="new-game-label" for="rachel-score">Rachel Score: </label>
        <input type="number" class="game-inputs" name="rachel-score" v-model.number="newGame.rachelScore" required />

        <label class="new-game-label" for="edwin-score">Edwin Score: </label>
        <input type="number" class="game-inputs" name="edwin-score" v-model.number="newGame.edwinScore" required />

        <button id="new-game-submit" @click.prevent="addGame()">Submit</button>
    </form>
  </div>
</template>

<script>
import gameService from '@/services/gameService.js';

export default {
    data() {
        return {
            newGame: {
                name: "",
                date: "",
                rachelScore: "",
                edwinScore: "",
                winner: ""
            }
        }
    },

    methods: {
        addGame() {
            this.newGame.winner = this.getWinnerName();

            confirm('Please confirm game scores.');

            gameService.addGame(this.newGame).then(response => {
                if (response.status === 201) {
                    alert('Successfully added game');
                    
                }

            }).catch( () => {
                alert('Error adding game. Please try again');
            });

            this.resetForm();

        },

        getWinnerName() {
            let isWordle = this.newGame.name == "Wordle";
            let isQuordle = this.newGame.name == "Quordle";
            let isScrabble = this.newGame.name == "Scrabble"; 


            let rachelScoreHigher = this.newGame.rachelScore > this.newGame.edwinScore;
            let edwinScoreHigher = this.newGame.edwinScore > this.newGame.rachelScore;


            if (isScrabble) {
                if (rachelScoreHigher) {
                    return "Rachel";
                } else if (edwinScoreHigher) {
                    return "Edwin";
                }
            }

            if (isWordle || isQuordle) {
                if (rachelScoreHigher) {
                    return "Edwin";
                } else if (edwinScoreHigher) {
                    return "Rachel";
                }
            }

            return "Draw";
        },

        resetForm() {
            this.newGame = {
                name: "",
                date: "",
                rachelScore: "",
                edwinScore: "",
                winner: ""
            }
        }
    }
        
}
</script>

<style>
form {
    background-color: white;
    border: 3px solid var(--colgate-maroon);
    border-radius: 10px;
    display: flex;
    flex-direction: column;
    align-items: center;
}

form h2 {
    margin: 5px 0;
}

#new-game-form-container {
    width: 80%;
    margin: auto;
    font-family: 'Abril Fatface', cursive;
}

#new-game-form-title {
    font-size: 1.25em;
}

.game-inputs {
    border-radius: 5px;
    border-width: thin;
    border-style: solid;
    height: 20px;
    width: 200px;
    line-height: 20px;
    margin: 0px 0px 5px 0px;
    text-align: center;
    background-color: white;
}

option {
    font-family: 'Abril Fatface', cursive;
    text-align: center;
}

#new-game-submit {
    background-color: var(--colgate-maroon);
    border-radius: 5px;
    height: 30px;
    width: 100px;
    margin: 15px auto 15px auto;
    border: none;
    color: white;
    font-size: 16px;
    cursor: pointer;
}
</style>