<template>
  <div class="main">
    <!-- 橘色背景 -->
    <div class="background">
      <!-- 背景方框 -->
      <div class="rectangular"></div>
      <!-- 公告栏 -->
      <div class="notification"></div>
      <!-- 装饰三角 -->
      <div class="triangular1"></div>
      <!-- 装饰三角 -->
      <div class="corner"></div>
    </div>
    <!-- 主体显示 -->
    <div class="contents">
      <div class="info">
        <!-- 用户名和英文 -->
        <div class="userID1">
          <p>用户名</p>
          <p class="en">User ID</p>
        </div>
        <!-- 输入用户名 -->
        <div class="userID2">
          <input type="text" v-model="username" />
        </div>
        <!-- 密码和英文 -->
        <div class="password1">
          <p>密码</p>
          <p class="en">Password</p>
        </div>
        <!-- 输入密码 -->
        <div class="password2">
          <input type="password" />
        </div>
        <!-- 断开连接图标 -->
        <div class="bar">
          <button class="button" @click="sendConnectedMsg"></button>
        </div>
        <!-- 装饰三角 -->
        <div class="triangular2"></div>
      </div>
    </div>
  </div>
</template>

<script>
import { defineComponent, ref } from "vue";
import axios from "axios";

export default defineComponent({
  name: "ConnectedMain",
  data() {
    return {
      username: "",
    };
  },
  methods: {
    // 后端更新数据之后跳转到连接页面
    sendConnectedMsg() {
      let url = "http://localhost:5000/";
      axios.put(url, { params: { username: this.username } });
      this.$router.push({
        path: "/connected",
        query: { username: this.username },
      });
    },
  },
});
</script>

<style scoped>
.main {
  position: relative;
  margin: auto;
  width: 720px;
  height: 300px;
}
/* 提示框 */
.notification {
  margin: auto;
  position: absolute;
  top: 200px;
  left: -16px;
  width: 320px;
  height: 160px;
  background-repeat: no-repeat;
  background-color: #e6562e;
  background-image: url("../../assets/notice.png");
  background-position: 10% 10%;
}
/* 背景方框 */
.rectangular {
  margin: auto;
  position: absolute;
  top: 50px;
  left: 0px;
  width: 720px;
  height: 250px;
  background-repeat: no-repeat;
  background-color: #e64e2e;
  background-image: url("../../assets/greeting.png");
  background-position: 5% 20%;
}
/* 装饰三角 */
.triangular1 {
  width: 0;
  height: 0;
  position: absolute;
  border-style: solid;

  left: 40px;
  top: 360px;

  border-width: 48px 48px 0 0;
  border-color: #e64e2e transparent transparent transparent;
}
/* 装饰三角 */
.corner {
  width: 0;
  height: 0;
  position: absolute;
  border-style: solid;

  left: -16px;
  top: 184px;

  border-width: 16px 16px 0 0;
  border-color: transparent #ad3b23 transparent transparent;
}
/* 主体背景 */
.contents {
  position: absolute;
  box-shadow: 0 0 8px rgb(0 0 0 / 10%);
  left: 300px;
  top: 80px;
  width: 460px;
  height: 200px;
  padding: 60px 20px;
  background-color: #f2f2f2;
}
/* 进行grid分割 */
.info {
  display: grid;
  line-height: 1px;
  height: 200px;
  width: 400px;

  grid-template-columns: 80px 250px;
  grid-template-rows: 40px 40px 40px;
  grid-template-areas: "userID1 userID2" "password1 password2" "bar bar";
  justify-content: space-around;
  align-content: space-around;
}
.info p {
  font-size: 1.3em;
}
.info .en {
  font-size: 1em;
}
.info input {
  border: 0;
  height: 40px;
  width: 275px;
}
/* 用户名 */
.userID1 {
  text-align: left;
  grid-area: userID1;
  align-self: center;
}
.userID2 {
  text-align: left;
  grid-area: userID2;
  align-self: center;
}
/* 密码 */
.password1 {
  text-align: left;
  grid-area: password1;
  align-self: center;
}
.password2 {
  text-align: left;
  grid-area: password2;
  align-self: center;
}
/* 断开连接框 */
.bar {
  width: 398px;
  height: 46px;
  grid-area: bar;
}
/* 断开连接按钮和动画 */
.button {
  margin-top: 16px;
  width: 398px;
  height: 46px;
  border: #9cb22e solid 1px;
  background: #c0ce55 url("../../assets/connect.png") no-repeat center 0;
  overflow: hidden;
}
.button:hover {
  background-color: #d2e042;
  background-position: center -47px;
}
/* 装饰三角 */
.triangular2 {
  width: 0;
  height: 0;
  position: absolute;
  border-style: solid;

  left: 400px;
  top: 310px;

  border-width: 64px 64px 0 0;
  border-color: #f2f2f2 transparent transparent transparent;
}
</style>
