<template>
  <div id="app">
    <div class="field" >
      <label for="lesson_title">Title</label>
      <input type="text" name="lesson[title]" id="lesson_title">
    </div>
    <div class="field" >
      <label for="lesson_explanation">Explanation</label>
      <input type="text" name="lesson[explanation]" id="lesson_explanation">
    </div>
    <div class="field" >
      <label for="lesson_video_url">Video URL</label>
      <input type="text" name="lesson[video_url]" id="lesson_video_url">
    </div>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello Vue!"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
