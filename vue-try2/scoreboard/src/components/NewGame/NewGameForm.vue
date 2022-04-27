<template>
  <div id="new-game-form-container">
    <form>
        <h2 id="new-game-form-title">Enter New Game</h2>
            <label for="game-options">Game:</label>
            <select class="game-inputs" name="game-options" v-model="newGame.name">
                <option></option>
                <option v-for="(game, index) in this.$store.state.gameOptions" :key="index">{{game}}</option>
            </select>

            <label for="date-input">Date:</label>
            <input type="date" class="game-inputs" name="date-input" v-model="newGame.date" />

            <label for="rachel-score">Rachel Score: </label>
            <input type="number" class="game-inputs" name="rachel-score" v-model="newGame.rachelScore" />

            <label for="edwin-score">Edwin Score: </label>
            <input type="number" class="game-inputs" name="edwin-score" v-model="newGame.edwinScore" />

            <button id="new-game-submit">Submit</button>
    </form>
  </div>
</template>

<script>
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

#new-game-form-container {
    width: 80%;
    margin: auto;
    font-family: 'Abril Fatface', cursive;
}

#new-game-form-title {
    font-size: 1.75em;
}

.game-inputs {
    border-radius: 5px;
    border-width: thin;
    border-style: solid;
    height: 40px;
    width: 200px;
    line-height: 30px;
    margin: 0px 0px 15px 0px;
    text-align: center;
}

option {
    font-family: 'Abril Fatface', cursive;
    text-align: center;
}

#new-game-submit {
    margin-top: 5%;
    background-color: var(--colgate-maroon);
    border-radius: 5px;
    height: 40px;
    width: 100px;
    margin: 0px auto 15px auto;
    border: none;
    color: white;
    font-size: 16px;
    cursor: pointer;
}
</style>