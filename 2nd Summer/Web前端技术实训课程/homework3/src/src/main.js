import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";

import * as echarts from "echarts";
const app = createApp(App);

// 将$echarts设置为全局变量
app.config.globalProperties.$echarts = echarts;
app.use(store).use(router).mount("#app");
