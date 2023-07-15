<template>
  <div class="main">
    <div class="background">
      <div class="rectangular"></div>
      <div class="triangular"></div>
      <div class="corner"></div>
    </div>
    <div class="contents">
      <h1 class="username">{{ username }}</h1>
      <div class="info">
        <div class="duration1">
          <p>已连接</p>
          <p>Duration</p>
        </div>
        <div class="duration2">
          <p>02:52:54</p>
        </div>
        <div class="usage1">
          <p>已用流量</p>
          <p>Usage</p>
        </div>
        <div class="scale">
          <ul>
            <li>50</li>
            <li>75</li>
            <li>100</li>
            <li>125</li>
          </ul>
        </div>
        <div class="usage2">
          <div class="used" :style="{ '--width': barWidth }"></div>
          <div class="number">
            <p>{{ usage }}</p>
          </div>
          <div class="stripe1"></div>
          <div class="stripe2"></div>
        </div>
      </div>
    </div>

    <div class="bar">
      <button class="disconnect" @click="sendReturnMsg"></button>
    </div>
  </div>
</template>

<script>
import axios from "axios";
import { defineComponent } from "vue";

export default defineComponent({
  name: "ConnectedMain",
  data() {
    return {
      username: "",
      usage: "",
      barWidth: "0px",
    };
  },
  methods: {
    sendReturnMsg() {
      this.$router.push({ path: "/" });
    },
  },
  created() {
    this.username = this.$route.query.username;
    let url = "http://localhost:5000/";
    axios.get(url, { params: { username: this.username } }).then((res) => {
      this.usage = "" + res.data.usage + "G";
      this.barWidth = "" + res.data.usage * 2.1 + "px";
      console.log(this.barWidth);
    });
  },
});
</script>

<style scoped>
.main {
  position: relative;
  margin: auto;
  width: 600px;
  height: 350px;
}

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
.username {
  color: #e64e2e;
  margin-bottom: 20px;
  margin-left: 20px;
  font-family: Helvetica, Arial, sans-serif;
  font-weight: 300;
  text-align: left;
}
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
  width: var(--width);
  margin: 0;
  left: 0px;
  background: #fbb03b;
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
