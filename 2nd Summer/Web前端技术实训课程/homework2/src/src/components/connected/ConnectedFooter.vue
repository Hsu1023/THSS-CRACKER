<template>
  <div>
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
  name: "ConnectedFooter",

  setup() {},
});
</script>

<style scoped>
.links {
  color: #ad3b23;
}
.links li {
  width: 80px;
  list-style: none;
  float: left;
}
.links li a {
  padding: 14px 0 0 26px;
}
#info {
  background: url("../../assets/info.gif") no-repeat;
}
#lib {
  background: url("../../assets/lib.gif") no-repeat;
}
#learn {
  background: url("../../assets/learn.gif") no-repeat;
}
#mail {
  background: url("../../assets/mail.gif") no-repeat;
}
</style>
