<template>
  <div class="nav">
    <!-- 左上角wifi图标 -->
    <div class="logo1"></div>
    <!-- 左上角logo -->
    <div class="logo2"></div>
    <!-- 中间二维码和文字 -->
    <div class="qrcode">
      <div class="codepic"></div>
      <p>欢迎关注“清华大学信息服务”</p>
    </div>
    <!-- 右上角logo -->
    <div class="newlogo"></div>
  </div>
</template>

<script>
import { defineComponent } from "vue";

export default defineComponent({
  name: "ConnectedFooter",
  data() {
    return {};
  },
  methods: {},
});
</script>

<style scoped>
.nav {
  position: relative;
  width: 800px;
  height: 120px;
  background: #e6e6e6;
}
/* 左上角wifi图标 */
.logo1 {
  position: absolute;
  top: 10px;
  width: 128px;
  height: 90px;
  background: url("../../assets/logo1.gif") no-repeat;
  background-size: contain;
}
/* 左上角logo */
.logo2 {
  position: absolute;
  top: 10px;
  left: 90px;
  width: 480px;
  height: 108px;
  background: url("../../assets/logo2.png") no-repeat;
  background-size: contain;
}
/* 中间二维码和文字 */
.qrcode {
  position: absolute;
  left: 400px;
  height: 120px;
  width: 200px;
}
.qrcode p {
  left: 0px;

  font-size: 0.8em;
}
.codepic {
  margin: auto;
  height: 120px;
  width: 120px;
  background-image: url("../../assets/qrcode.jpg");
  background-size: contain;
  background-repeat: no-repeat;
}
/* 右上角logo */
.newlogo {
  height: 160px;
  width: 280px;
  position: absolute;
  left: 600px;
  background-image: url("../../assets/newlogo.png");
  background-size: contain;
  background-repeat: no-repeat;
}
</style>
