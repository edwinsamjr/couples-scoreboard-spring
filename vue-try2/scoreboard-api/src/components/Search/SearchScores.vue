<template>
  <div id="scores-page">
      <form id="scores-form">
          <h2>Filter Games</h2>
          <label for="game-choice">Select Game</label>
          <select class="scores-form-input" name="game-choice" v-model="gameChoice">
              <option value="">All Games</option>
              <option v-for="(game, index) in this.$store.state.gameOptions" :key="index" :value="game">{{game}}</option>
          </select>

          <label for="time-frame-choice">Select Time Frame </label>
          <select class="scores-form-input">
              <option value="">Overall</option>
              <option value="This Month">This Month</option>
              <option value="Select Dates">Select Dates</option>
          </select>
      </form>
    
    <table class="scores-table">
        <thead>
            <tr>
                <th>Date</th>
                <th>Game</th>
                <th>Winner</th>
                <th>Rachel</th>
                <th>Edwin</th>
            </tr>
        </thead>
        <tbody>
            <tr v-for="(game, index) in filteredGames" :key="index">
                <td>{{game.date}}</td>
                <td>{{game.name}}</td>
                <td>{{game.winnerName}}</td>
                <td>{{game.rachelScore}}</td>
                <td>{{game.edwinScore}}</td>
            </tr>
        </tbody>
    </table>

  </div>
</template>

<script>

export default {
    data() {
        return {
            gameChoice: "",
            timeFrameChoice: "",

        }
    },
    computed: {
        filteredGames() {
            let fg = this.$store.state.allGames;

            if (this.gameChoice != "") {
                fg = fg.filter(curGame => {
                    return curGame.name === this.gameChoice;
                })
            }

            return fg;
        },

        singleGameChosen() {

            if (this.gameChoice != "") {
                return true;
            }

            return false;
        }
    }

}
</script>

<style>
#scores-page {
    font-family: 'Abril Fatface', cursive;
    display: flex;
    flex-direction: column;
    align-items: center;
}

#scores-form {
    width: 300px;
}

.scores-form-input{
    border-radius: 5px;
    border-width: thin;
    border-style: solid;
    height: 30px;
    width: 200px;
    line-height: 30px;
    margin: 0px 0px 15px 0px;
    text-align: center;
    background-color: white;
}

.scores-table {
    border-collapse: collapse;
    margin: 25px 0px;
    font-size: 0.9em;
    min-width: 400px;
    border-radius: 5px 5px 0 0;
    overflow: hidden;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.scores-table thead th {
    background-color: var(--colgate-maroon);
    color: white;
    text-align: left;
    font-weight: bold;
}

.scores-table th,
.scores-table td {
    padding: 5px 15px;
}

.scores-table tbody tr {
    border-bottom: 1px solid black;
    background-color: #f3f3f3;
}

.scores-table tbody tr:nth-of-type(even) {
    background-color: white;
}

.scores-table tbody tr:last-of-type {
    border-bottom: 2px solid var(--colgate-maroon);
}

</style>