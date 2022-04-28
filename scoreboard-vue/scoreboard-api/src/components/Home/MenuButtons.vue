<template>
      <div id="menu-container">
                <router-link :to="{name: 'enter-score'}"><div class="menu-buttons">Enter New Score</div></router-link>
                <router-link :to="{name: 'search-scores'}"> <div class="menu-buttons">Search Scores</div></router-link>
                <div class="menu-buttons">Search Points</div>
        </div>
</template>

<script>
export default {

}
</script>

<style>
  
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
    align-items: center;
    justify-content: center;
    flex-grow: 1;
}

.menu-buttons:hover {
  text-decoration: underline;
}

a {
  text-decoration: none;
  color: white;
}


</style>