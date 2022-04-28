<template>
  <div id="title-container">
      <h1 id="title">Rachel and Edwin's Scoreboard App!</h1>
  </div>
</template>

<script>
export default {

}
</script>

<style>
#title-container {
  text-align: center;
  flex-grow: 0;
}


#title{
    width: 80%;
    border-radius: 10px;
    background-color: rgba(255, 255, 255, .8);
    border: 3px solid var(--colgate-maroon);
    color: var(--colgate-maroon);
    display: inline-block;
    padding: 10px;
    font-family: 'Abril Fatface', cursive;
}
</style>