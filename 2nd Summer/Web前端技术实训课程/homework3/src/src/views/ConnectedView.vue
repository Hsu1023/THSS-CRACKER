<template>
  <div class="connectedview">
    <!-- 画面主体对应的组件 -->
    <connected-main class="main" @sendReturnMsg="returnBack"></connected-main>
    <!-- 下端导航栏对应的组件 -->
    <connected-footer class="footer"></connected-footer>
    <!-- 底端流量统计组件 -->
    <connected-usage class="plot"></connected-usage>
  </div>
</template>

<script>
import ConnectedFooter from "@/components/connected/ConnectedFooter.vue";
import ConnectedMain from "@/components/connected/ConnectedMain.vue";
import ConnectedUsage from "@/components/connected/ConnectedUsage.vue";
import { defineComponent, ref } from "vue";
import { useRouter } from "vue-router";

export default defineComponent({
  name: "ConnectedView",
  /*导入画面主体、下端导航栏两个组件 */
  components: {
    ConnectedMain,
    ConnectedFooter,
    ConnectedUsage,
  },
  setup() {
    let router = useRouter();
    let returnBack = () => {
      router.push("/");
    };
    let returnmsg = ref("false");
    return { returnmsg, returnBack };
  },
});
</script>

<style scoped>
/* pc端样式，宽度大于900像素屏幕 */
@media screen and (min-width: 900px) {
  /*  设置背景总体颜色和布局 */
  .connectedview {
    position: fixed;
    background: #e6e6e6;
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
    top: 30px;
  }
  /*下端导航栏内容*/
  .footer {
    position: absolute;
    left: 500px;
    right: 0;
    margin: auto;
    width: 400px; /*very important */
    top: 440px;
  }
  /*底端流量统计*/
  .plot {
    position: absolute;
    left: 460px;
    top: 440px;
  }
}

/* 移动端样式，宽度小于900像素屏幕 */
@media screen and (max-width: 900px) {
  /*  设置背景总体颜色和布局 */
  .connectedview {
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
    top: 0%;
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
    top: 0%;
    transform: translate(-10%, 0);
  }
  /*底端流量统计*/
  .plot {
    position: absolute;
    left: -310px;
    top: 140px;
    transform: scale(0.4, 0.5);
  }
}
</style>
