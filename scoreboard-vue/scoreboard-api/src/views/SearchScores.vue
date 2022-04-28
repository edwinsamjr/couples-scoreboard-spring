<template>
  <div id="scores-container">
      <search-scores />
  </div>
</template>

<script>
import SearchScores from '@/components/Search/SearchScores.vue'

export default {
    components: {SearchScores},
    created() {
        this.$store.commit('UPDATE_GAME_LOG');
    }
}
</script>

<style>
#scores-container {
    display: flex;
    flex-direction: row;
    justify-content: center;
}
</style>