<template>
  <div>
    <!-- 以列表形式放置四个导航键 -->
    <ul class="links">
      <li><a id="info">Info</a></li>
      <li><a id="lib">Lib</a></li>
      <li><a id="learn">Learn</a></li>
      <li><a id="mail">Mail</a></li>
    </ul>
  </div>
</template>

<script>
import { defineComponent } from "vue";

export default defineComponent({
  name: "NavFooter",
  components: {},
  setup() {},
});
</script>

<style scoped>
/*设置列表显示格式*/
.links li {
  width: 80px;
  list-style: none;
  float: left;
  color: #ad3b23;
}
.links li a {
  padding: 14px 0 0 26px;
}
/*info键*/
#info {
  background: url("../../assets/info.gif") no-repeat;
}
/*lib键*/
#lib {
  background: url("../../assets/lib.gif") no-repeat;
}
/*learn键*/
#learn {
  background: url("../../assets/learn.gif") no-repeat;
}
/*mail键*/
#mail {
  background: url("../../assets/mail.gif") no-repeat;
}
</style>
