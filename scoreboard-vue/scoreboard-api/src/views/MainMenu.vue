<template>
  <div class="body">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Couples Scoreboard App</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Archivo+Black&display=swap"
            rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600;900&display=swap" rel="stylesheet">
    </head>
            <title-banner />

        <menu-buttons />

  </div>
</template>

<script>
import MenuButtons from '../components/Home/MenuButtons.vue'
import TitleBanner from '../components/Home/TitleBanner.vue'
export default {
  name: 'main-menu',
  components: { TitleBanner, MenuButtons },
  created() {
    this.$store.commit('UPDATE_GAME_LOG');
  }
    
}
</script>

<style>
:root {
    --colgate-maroon: rgb(130, 16, 25);
}

.body {
    background-color: rgb(210, 212, 214);
    display: flex;
    flex-direction: column;
    height: 100vh;
}



</style>