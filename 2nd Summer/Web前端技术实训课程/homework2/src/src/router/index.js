import { createRouter, createWebHistory } from "vue-router";
import ConnectedView from "../views/ConnectedView.vue";
import RegisterView from "../views/RegisterView.vue";

const routes = [
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
