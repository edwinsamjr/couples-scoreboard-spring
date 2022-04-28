<template>
    <div>
        <head>
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600;900&display=swap" rel="stylesheet">
        </head>
        <div id="single-game-container">
            <div id="scoreboard-header-container">
                <h3>Scoreboard</h3>
            </div>
            <div id="record">
                <div class="wins-counters">
                    <span class="wins-text">Rachel Wins</span>
                    <span class="wins-num">{{recordObject.rachelWins}}</span>
                    <span class="scores">{{recordObject.rachelScore}}</span>
                </div>
                <div class="wins-counters" id="draws">
                    <span class="wins-text">Draws</span>
                    <span class="wins-num">{{recordObject.draws}}</span>
                </div>
                <div class="wins-counters" id="edwin-wins">
                    <span class="wins-text">Edwin Wins</span>
                    <span class="wins-num">{{recordObject.edwinWins}}</span>
                    <span class="scores">{{recordObject.edwinScore}}</span>
                </div>
            </div>
            <!-- <div id="scores">
                <div class="score-counters" id="rachel-score">{{recordObject.rachelScore}}</div>
                <div class="score-counters" id="edwin-score">{{recordObject.edwinScore}}</div>
            </div> -->


            <!-- <p>Rachel Wins: {{recordObject.rachelWins}}</p>
            <p>Edwin Wins: {{recordObject.edwinWins}}</p>
            <p>Draws: {{recordObject.draws}}</p>
            <p>Rachel Score: {{recordObject.rachelScore}}</p>
            <p>Edwin Score: {{recordObject.edwinScore}}</p> -->
        </div>
    </div>
</template>

<script>
export default {
    props: ['recordObject']
}
</script>

<style>
#single-game-container {
    font-family: 'Orbitron', sans-serif;
    font-weight: 600;
    padding: 2px;
    margin: 10px 0;
    width: 400px;
    display: flex;
    flex-direction: column;
    background-color: black;
    color: white;
    border-radius: 10px;
}

#record {
    display: flex;
    flex-direction: row;
    font-size: 2em;
    justify-content: space-around;
}

#scores {
    display: flex;
    flex-direction: row;
}

.wins-counters {
    padding: 2px;
    display: flex;
    flex-direction: column;
    width: 90px;
    text-align: center;
    background-color: black;
}

#scoreboard-header-container h3 {
    margin:5px auto;
    text-align: center;
    font-size: 24px;
}


.wins-text {
    font-size: .4em;
}

.scores {
    font-size: .5em;
}

@media screen and (max-width: 768px) {
    
}

</style>