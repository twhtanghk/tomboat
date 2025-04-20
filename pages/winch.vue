<template>
  <div>
    <UInput size='xl' v-model='host'/>
    <UButton class='round' size='xl' icon='i-lucide-arrow-up' color='neutral' variant='outline' @touchstart='tap' @touchend='tap'/>
  </div>
</template>

<script setup>
const host = 'winch.local'
const tap = () => {
  fetch(`http://${host}/button/toggle/press`, {method: 'POST'})
    .catch((err) => console.error(err))
}
</script>

<style scoped>
div {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  gap: 10px;
}
.round {
  border-radius: 50%;
}
</style>
