<template>
  <div>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Couples Scoreboard App</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Archivo+Black&display=swap"
            rel="stylesheet">
    </head>
    <body>
        <header>
            <div id="title-container">
                <h1>Rachel and Edwin's Scoreboard App!</h1>
            </div>

        </header>
        <main>
            <div id="menu-container">
                <div class="menu-buttons">Enter New Score</div>
                <div class="menu-buttons">Search Scores</div>
                <div class="menu-buttons">Search Points</div>
            </div>
        </main>
    </body>
  </div>
</template>

<script>
export default {

}
</script>

<style>
:root {
    --colgate-maroon: rgb(130, 16, 25);
}

body {
    background-color: rgb(210, 212, 214);
    display: flex;
    flex-direction: column;
    height: 100vh;
}

header {
    border: 0px solid red;
    flex-grow: 0;
}

#title-container {
    text-align: center;
}

h1{
    width: 80%;
    border-radius: 10px;
    background-color: rgba(255, 255, 255, .8);
    border: 3px solid var(--colgate-maroon);
    color: var(--colgate-maroon);
    display: inline-block;
    padding: 10px;
    font-family: 'Abril Fatface', cursive;
}

main {
    flex-grow: 1;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
}

.menu-buttons{
    background-color: var(--colgate-maroon);
    border: none;
    color: white;
    padding: 15px 10px;
    width: 300px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    font-family: 'Abril Fatface', cursive;
    margin: 5px 2px;
    cursor: pointer;
    border-radius: 7px;
}


#menu-container {
    display: flex;
    flex-direction: column;
}

.menu-buttons:hover {
  text-decoration: underline;
}


</style>