<template>
  <div class="homeview">
    <!-- 画面主体对应的组件 -->
    <nav-main class="main"></nav-main>
    <!-- 下端导航栏对应的组件 -->
    <nav-footer class="footer"></nav-footer>
  </div>
</template>

<script>
import NavFooter from "@/components/navFooter/NavFooter.vue";
import NavMain from "@/components/navMain/NavMain.vue";
import { defineComponent } from "vue";

export default defineComponent({
  name: "HomePage",
  /*导入画面主体、下端导航栏两个组件 */
  components: {
    NavMain,
    NavFooter,
  },
  setup() {
    return {};
  },
});
</script>

<style scoped>
/* pc端样式，宽度大于900像素屏幕 */
@media screen and (min-width: 900px) {
  /*  设置背景总体颜色和布局 */
  .homeview {
    position: fixed;
    background-color: #e6e6e6;
    height: 100%;
    width: 100%;
    left: 0;
    top: 0;
  }
  /*画面主体内容*/
  .main {
    position: absolute;
    left: 0;
    right: 0;
    margin: auto;
    top: 100px;
  }
  /*下端导航栏内容*/
  .footer {
    position: absolute;
    left: 500px;
    right: 0;
    margin: auto;
    width: 400px; /*very important */
    top: 510px;
  }
}

/* 移动端样式，宽度小于900像素屏幕 */
@media screen and (max-width: 900px) {
  /*  设置背景总体颜色和布局 */
  .homeview {
    position: fixed;
    background-color: #e6e6e6;
    height: 100%;
    width: 100%;
    left: 0;
    top: 0;
  }

  /*画面主体内容*/
  .main {
    position: absolute;
    left: 0;
    right: 0;
    top: 20%;
    margin: 0;
    transform: scale(0.5) translate(-50%, -30%);
  }

  /*下端导航栏内容*/
  .footer {
    position: absolute;
    left: 0px;
    right: 0;
    margin: 0;
    width: 400px; /*very important */
    top: 10%;
    transform: translate(-10%, 0);
  }
}
</style>
