<template>
    <div id="scores-page">
        
        <single-game-scoreboard :recordObject="recordObject" v-if="singleGameChosen === true" />
        <all-game-scoreboard :recordObject="recordObject" v-if="singleGameChosen !== true" />
        
        <div id="btns-container">
            <button 
                v-if="showFilters === false && showNewGameForm == false" 
                @click="showFilters = !showFilters" 
                class="scoreboard-btns">
                Filter <i class="fas fa-filter"></i>
            </button>
            <button 
                v-if="showFilters === true || showNewGameForm == true" 
                @click="resetForms()" 
                class="scoreboard-btns">
                Close
            </button>
            <button 
                v-if="showFilters === false && showNewGameForm == false" 
                @click="showNewGameForm = true" 
                class="scoreboard-btns">
                Add Game
            </button>
        </div>

        <form id="scores-form" v-if="showFilters === true">
            <div id="input-container">
                <div class="filter-inputs">
                    <label cl for="game-choice">Select Game</label>
                    <select class="scores-form-input" name="game-choice" v-model="gameChoice">
                        <option value="">All Games</option>
                        <option v-for="(game, index) in this.$store.state.gameOptions" :key="index" :value="game">{{game}}</option>
                    </select>
                </div>

                <div class="filter-inputs">
                    <label for="time-frame-choice">Select Time Frame </label>
                    <select class="scores-form-input" v-model="timeFrameChoice">
                        <option value="">Overall</option>
                        <option value="This Month">This Month</option>
                    </select>
                </div>
            </div>
        </form>

        <new-game-form v-if="showNewGameForm === true" />

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
import SingleGameScoreboard from '@/components/Search/SingleGameScoreboard.vue';
import AllGameScoreboard from './AllGameScoreboard.vue';
import NewGameForm from '../NewGame/NewGameForm.vue';

export default {
    components: {SingleGameScoreboard, AllGameScoreboard, NewGameForm},
    data() {
        return {
            gameChoice: "",
            timeFrameChoice: "",
            recordObject: {
                rachelWins: 0,
                edwinWins: 0,
                draws: 0,
                rachelScore: 0,
                edwinScore: 0
            },
            showFilters: false,
            showNewGameForm: false

        }
    },
    computed: {
        filteredGames() {
            let fg = this.$store.state.allGames;

            if (this.gameChoice != '') {
                fg = fg.filter(curGame => {
                    return curGame.name === this.gameChoice;
                })
            }

            if (this.timeFrameChoice == 'This Month') {
                fg = fg.filter(curGame => {
                    let gameDate = new Date(curGame.date);
                    let curDate = new Date(Date.now());

                    gameDate.setDate(gameDate.getDate() + 1)


                    return gameDate.getMonth() === curDate.getMonth() &&
                           gameDate.getFullYear() ===curDate.getFullYear();
                    
                })
            }

            this.setTotalRecord(fg);

            return fg;
        },

        singleGameChosen() {

            if (this.gameChoice != "") {
                return true;
            }

            return false;
        },

    },

    methods: {
        setTotalWins(rachelWins, edwinWins, numDraws) {
            this.recordObject.rachelWins = rachelWins;
            this.recordObject.edwinWins = edwinWins;
            this.recordObject.draws = numDraws;
            
        },
        setTotalScore(rachelScore, edwinScore) {
            this.recordObject.rachelScore = rachelScore;
            this.recordObject.edwinScore = edwinScore;
        },

        setTotalRecord(array) {
            let rachelWins = 0;
            let edwinWins = 0;
            let draws = 0;
            let rachelScore = 0;
            let edwinScore = 0;

            array.forEach(curGame => {
                if(curGame.winnerName === 'Rachel') {
                    rachelWins++;
                } else if (curGame.winnerName === 'Edwin') {
                    edwinWins++;
                } else {
                    draws++;
                }

                rachelScore += curGame.rachelScore;
                edwinScore += curGame.edwinScore

            });

            this.setTotalWins(rachelWins, edwinWins, draws);
            this.setTotalScore(rachelScore, edwinScore);


        },
        resetForms() {
            this.showFilters = false;
            this.showNewGameForm = false;
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
    width: 425px;
    padding-top: 10px;
}

#scores-form h2 {
    margin: 5px auto;
}

.scores-form-input{
    border-radius: 5px;
    border-width: thin;
    border-style: solid;
    height: 30px;
    width: 175px;
    line-height: 30px;
    margin: 0px 0px 15px 0px;
    text-align: center;
    background-color: white;
}

.scores-table {
    border-collapse: collapse;
    margin: 10px 0px;
    font-size: 0.9em;
    min-width: 300px;
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

.scoreboard-btns {
    margin-top: 5%;
    background-color: var(--colgate-maroon);
    border-radius: 5px;
    height: 30px;
    width: 100px;
    margin: 15px auto 5px auto;
    border: none;
    color: white;
    font-size: 16px;
    cursor: pointer;
}


#input-container {
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    width: 375px;
}

.filter-inputs {
    display: flex;
    flex-direction: column;
    text-align: center;
}

#btns-container {
    width: 220px;
    display:flex;
    flex-direction: row;
    justify-content: space-between;
}

@media screen and (max-width: 768px) {
    #scores-table {
        width: 75vw;
    }

    .scores-table th,
    .scores-table td {
        padding: 5px 5px;
    }

    #input-container {
    flex-direction: column;
    width: 100%;
    align-items: center;

    }

    #scores-form {
        width: 200px;
    }
}

</style>