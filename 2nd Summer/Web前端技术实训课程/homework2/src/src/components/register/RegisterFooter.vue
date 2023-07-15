<template>
  <div class="footer">
    <div class="download"></div>
    <div class="os">
      <ul class="icons">
        <li><a id="Windows">Windows</a></li>
        <li><a id="macOS">macOS</a></li>
        <li><a id="Linux">Linux</a></li>
        <li><a id="Android">Android</a></li>
        <li><a id="iOS">iOS</a></li>
      </ul>
      <div class="rectangular"></div>
    </div>
    <div class="widgets">
      <ul>
        <li>
          <a id="mark">
            <p>收藏</p>
            <p>Bookmark This Page</p>
          </a>
        </li>
        <li>
          <a id="help">
            <p>帮助</p>
            <p>Help</p>
          </a>
        </li>
        <li>
          <a id="contact">
            <p>联系</p>
            <p>Contact</p>
          </a>
        </li>
        <li>
          <a id="tel">
            <p>+86-10-62784859</p>
            <p>its@tsinghua.edu.cn</p>
          </a>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
import { defineComponent } from "vue";

export default defineComponent({
  name: "ConnectedFooter",

  setup() {},
});
</script>

<style scoped>
.footer {
  position: relative;
  width: 800px;
}
.download {
  height: 30px;
  width: 236px;
  position: absolute;
  top: 40px;
  left: 0px;
  background-image: url("../../assets/download.png");
  background-size: contain;
  background-repeat: no-repeat;
}
.icons {
  position: absolute;
  top: 65px;
  left: -40px;
}
.icons li {
  width: 70px;
  /* height: 20px; */
  list-style: none;
  float: left;
}
.icons li a {
  bottom: 16px;
  display: block;
  padding-top: 36px;
  text-align: left;
  color: #fff;
  font-size: 14px;
  font-family: Helvetica, Arial, sans-serif;
}
#Windows {
  background: url("../../assets/windows.gif") no-repeat;
}
#macOS {
  background: url("../../assets/mac.gif") no-repeat;
}
#Linux {
  background: url("../../assets/linux.gif") no-repeat;
}
#Android {
  background: url("../../assets/android.gif") no-repeat;
}
#iOS {
  background: url("../../assets/ios.gif") no-repeat;
}
.rectangular {
  position: absolute;
  top: 102px;
  left: -20px;
  width: 350px;
  height: 48px;
  z-index: -1;
  background: #808080;
}
.widgets {
  position: absolute;
  width: 600px;
  left: 350px;
  top: 100px;
}
.widgets li {
  list-style: none;
  float: left;
}
.widgets li a {
  display: block;
  text-decoration: none;
  padding: 0 0 0 40px;
  margin: 0;
  height: 30px;
  font-size: 12px;
  line-height: 5px;
  text-align: left;
}
#mark {
  width: 130px;
  background: url("../../assets/mark.gif") no-repeat 0px 0px;
}
#help {
  width: 60px;
  background: url("../../assets/help.gif") no-repeat 0px 0px;
}
#contact {
  width: 50px;
  background: url("../../assets/contact.gif") no-repeat 0px 0px;
}
#tel {
  padding: 0;
}
</style>
