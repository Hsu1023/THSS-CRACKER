<template>
  <div class="registerview">
    <register-nav class="nav"></register-nav>
    <!-- 画面主体对应的组件 -->
    <register-main class="main"></register-main>
    <!-- 下端导航栏对应的组件 -->
    <register-footer class="footer"></register-footer>
  </div>
</template>

<script>
import RegisterNav from "@/components/register/RegisterNav.vue";
import RegisterFooter from "@/components/register/RegisterFooter.vue";
import RegisterMain from "@/components/register/RegisterMain.vue";
import { defineComponent, ref } from "vue";

export default defineComponent({
  name: "RigesterView",
  /*导入画面主体、下端导航栏两个组件 */
  components: {
    RegisterNav,
    RegisterMain,
    RegisterFooter,
  },
});
</script>

<style scoped>
/* pc端样式，宽度大于900像素屏幕 */
@media screen and (min-width: 900px) {
  .registerview {
    position: fixed;
    background: #dadbdc url("../assets/bg.png") repeat-x top;
    height: 100%;
    width: 100%;
    left: 0;
    top: 0;
  }
  .nav {
    position: absolute;
    left: 0;
    right: 0;
    margin: auto;
    top: 10px;
  }
  /*画面主体内容*/
  .main {
    position: absolute;
    left: 0;
    right: 0;
    margin: auto;
    top: 120px;
  }
  .footer {
    position: absolute;
    left: 0;
    right: 0;
    margin: auto;
    top: 530px;
  }
}
/* 移动端样式，宽度小于900像素屏幕 */
@media screen and (max-width: 900px) {
  .registerview {
    position: fixed;
    background: #dadbdc url("../assets/bg.png") repeat-x top;
    height: 100%;
    width: 100%;
    left: 0;
    top: 0;
  }
  .nav {
    position: absolute;
    left: 0;
    right: 0;
    margin: auto;
    top: 10px;
    transform: scale(0.35) translate(-75%, -20%);
  }
  /*画面主体内容*/
  .main {
    position: absolute;
    left: 0;
    right: 0;
    margin: auto;
    top: 100px;

    transform: scale(0.4) translate(-65%, -80%);
  }
  .footer {
    position: absolute;
    left: 0;
    right: 0;
    margin: auto;
    top: 250px;
    transform: scale(0.35) translate(-75%, -200%);
  }
}
</style>
