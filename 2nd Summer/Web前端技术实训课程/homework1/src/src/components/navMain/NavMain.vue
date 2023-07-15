<template>
  <div class="main">
    <!-- 橘色的“欢迎，welcome”背景 -->
    <div class="background">
      <!-- 矩形边框 -->
      <div class="rectangular"></div>
      <!-- 矩形边框下的三角 -->
      <div class="triangular"></div>
      <!-- “断开连接”上侧的三角 -->
      <div class="corner"></div>
    </div>

    <!-- 白色的主界面内容 -->
    <div class="contents">
      <!-- 显示用户名 -->
      <h1 class="username">xuhb20</h1>
      <!-- 显示具体内容，内部用grid -->
      <div class="info">
        <!-- duration1、2分别对应Duration文字和具体数字 -->
        <div class="duration1">
          <p>已连接</p>
          <p>Duration</p>
        </div>
        <div class="duration2">
          <p>02:52:54</p>
        </div>
        <!-- usage1、2分别对应Usage文字和图片 -->
        <div class="usage1">
          <p>已用流量</p>
          <p>Usage</p>
        </div>
        <!-- scale是进度条图片上方的标注 -->
        <div class="scale">
          <ul>
            <li>50</li>
            <li>75</li>
            <li>100</li>
            <li>125</li>
          </ul>
        </div>
        <div class="usage2">
          <!-- used是进度条填充 -->
          <div class="used"></div>
          <!-- number是进度条显示的数字 -->
          <div class="number">
            <p>8.45G</p>
          </div>
          <!-- stripe是进度条图片的两个白色条纹 -->
          <div class="stripe1"></div>
          <div class="stripe2"></div>
        </div>
      </div>
    </div>

    <!-- “断开连接”按钮 -->
    <div class="bar">
      <button class="disconnect"></button>
    </div>
  </div>
</template>

<script>
import { defineComponent } from "vue";

export default defineComponent({
  name: "NavMain",
  components: {},
  setup() {},
});
</script>

<style scoped>
/* 主体布局 */
.main {
  position: relative;
  margin: auto;
  width: 600px;
  height: 350px;
}
/* 矩形边框 */
.rectangular {
  margin: auto;
  position: absolute;
  top: 50px;
  left: 50px;
  width: 500px;
  height: 250px;
  background-repeat: no-repeat;
  background-color: #e64e2e;
  background-image: url("../../assets/background.png");
  background-position: 5% 50%;
}
/* 矩形边框下的三角  */
.triangular {
  width: 0;
  height: 0;
  position: absolute;
  border-style: solid;

  left: 75px;
  top: 300px;

  border-width: 48px 48px 0 0;
  border-color: #e64e2e transparent transparent transparent;
}
/* “断开连接”上侧的三角 */
.corner {
  width: 0;
  height: 0;
  position: absolute;
  border-style: solid;

  left: 635px;
  top: 290px;

  border-width: 30px 0 0 30px;
  border-color: transparent transparent transparent #cccccc;
}
/* 白色的主界面内容 */
.contents {
  position: absolute;
  box-shadow: 0 0 8px rgb(0 0 0 / 10%);
  left: 160px;
  top: 80px;
  width: 400px;
  height: 220px;
  padding: 40px;
  background-color: #f2f2f2;
}
/* 用户名显示 */
.username {
  color: #e64e2e;
  margin-bottom: 20px;
  margin-left: 20px;
  font-family: Helvetica, Arial, sans-serif;
  font-weight: 300;
  text-align: left;
}
/* 主要信息显示，内部用grid布局规划 */
.info {
  display: grid;
  font-size: 0.9em;
  line-height: 1px;
  height: 100px;
  width: 400px;

  grid-template-columns: 80px 280px;
  grid-template-rows: 40px 25px 40px;
  grid-template-areas: "duration1 duration2" "blank scale" "usage1 usage2";
  justify-content: space-around;
  align-content: space-around;
}

/* duration1、2分别对应Duration文字和具体数字 */
.duration1 {
  text-align: right;
  grid-area: duration1;
}
.duration2 {
  text-align: left;
  grid-area: duration2;
  align-self: center;
}
.duration2 p {
  color: #e64e2e;
  font-size: 2em;
}

/* scale是进度条标尺 */
.scale {
  grid-area: scale;
}
.scale ul {
  text-align: right;
  list-style: none;
  color: #969696;
}
.scale ul li {
  float: left;
  width: 60px;
}

/* usage1、2分别对应Usage文字和图片 */
.usage1 {
  text-align: right;
  grid-area: usage1;
}
.usage2 {
  background: url("../../assets/usage.gif") repeat-y;
  position: relative;
  width: 400px;
  height: 30px;
  grid-area: usage2;
}
.used {
  position: absolute;
  margin: 0;
  left: 0px;
  background: #fbb03b;
  width: 20px;
  height: 30px;
  right: 10px;
}
.number {
  position: absolute;
  margin: 0;
  left: 10px;
  top: -5px;
  width: 40px;
  height: 30px;
  right: 10px;
  color: #666666;
  font-size: 1.5em;
}
/* stripe是进度条图片的两个白色条纹 */
.stripe1 {
  position: absolute;
  margin: 0;
  left: 265px;
  background: #ffffff;
  width: 4px;
  height: 30px;
  right: 10px;
}
.stripe2 {
  position: absolute;
  margin: 0;
  left: 273px;
  background: #ffffff;
  width: 4px;
  height: 30px;
  right: 10px;
}
/* 断开连接框 */
.bar {
  position: absolute;
  box-shadow: 0 0 8px rgb(0 0 0 / 10%);
  left: 450px;
  top: 320px;
  width: 174px;
  height: 46px;
  padding: 20px 20px 20px 20px;
  background-color: #ffffff;
}
/* 断开连接按钮及其动画 */
.disconnect {
  position: relative;
  width: 174px;
  height: 46px;
  border: #b2aabe solid 1px;
  background: #c0bdcc url("../../assets/disconnect.png") no-repeat center 0;
  overflow: hidden;
}
.disconnect:hover {
  background-color: #d6d2e0;
  background-position: center -47px;
}
</style>
