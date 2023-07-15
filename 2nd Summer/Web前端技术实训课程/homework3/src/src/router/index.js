import { createRouter, createWebHistory } from "vue-router";
import ConnectedView from "../views/ConnectedView.vue";
import RegisterView from "../views/RegisterView.vue";

const routes = [
  // 设置路由路径以进行跳转
  {
    path: "/connected",
    name: "connected",
    component: ConnectedView,
  },
  {
    path: "/",
    name: "register",
    component: RegisterView,
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

export default router;
