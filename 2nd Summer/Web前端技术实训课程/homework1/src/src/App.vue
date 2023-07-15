<template>
  <!-- 显示连接上之后的画面 -->
  <home-page></home-page>
</template>

<script>
import HomePage from "./components/HomePage.vue";

export default {
  name: "App",
  // 导入连接上的画面
  components: {
    HomePage,
  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>
