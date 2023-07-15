<template>
  <div>
    <!-- 使用echarts制作流量统计图标 -->
    <div id="plot"></div>
  </div>
</template>

<script>
import { defineComponent } from "vue";

export default defineComponent({
  name: "ConnectedUsage",

  methods: {
    drawPlot() {
      // echarts初始化
      var myChart = this.$echarts.init(document.getElementById("plot"));
      var option;
      // 2s更新是2000ms
      var twoSecond = 2 * 1000;
      var now = new Date();
      // 横坐标：时间
      const categories = (function () {
        let res = [];
        let len = 10;
        while (len--) {
          // 当前时间加两秒并且翻译成合适的显示格式
          now = new Date(+now + twoSecond);
          res.push(
            `${now.getHours() < 10 ? "0" : ""}${now.getHours()}:${
              now.getMinutes() < 10 ? "0" : ""
            }${now.getMinutes()}:${
              now.getSeconds() < 10 ? "0" : ""
            }${now.getSeconds()}`
          );
        }
        return res;
      })();
      // 纵坐标
      const data = (function () {
        let res = [];
        res.push(+(Math.random() * 10 + 5).toFixed(1));
        let len = 1;
        while (len < 10) {
          // 随机生成10个数据
          res.push(+(res[len - 1] + Math.random() * 10 + 5).toFixed(1));
          len++;
        }
        return res.sort(function (a, b) {
          return a - b;
        });
      })();
      // 设置图标基本格式
      option = {
        // 鼠标跟踪坐标显示
        tooltip: {
          trigger: "axis",
          axisPointer: {
            type: "line",
          },
        },
        // 显示数据动画
        dataZoom: {
          show: false,
          start: 0,
          end: 100,
        },
        // 横坐标
        xAxis: [
          {
            type: "category",
            data: categories,
            axisTick: {
              alignWithLabel: true,
            },
          },
        ],
        // 纵坐标
        yAxis: [
          {
            type: "value",
            scale: true,
            name: "流量使用",
            boundaryGap: [0, "50%"],
            // 单位
            axisLabel: {
              formatter: "{value} G",
            },
          },
        ],
        // 设置基础格式和颜色
        series: [
          {
            name: "流量使用",
            type: "line",
            data: data,
            lineStyle: {
              color: "#ff8f4f",
            },
            itemStyle: {
              normal: {
                color: "#e6562e",
              },
            },
          },
        ],
      };
      // 每隔2s更新数据
      setInterval(function () {
        // 更新y轴数据Array
        data.shift();
        data.push(+(data[data.length - 1] + Math.random() * 10 + 5).toFixed(1));
        // 更新x轴数据Array
        categories.shift();
        now = new Date(+now + twoSecond);
        categories.push(
          `${now.getHours() < 10 ? "0" : ""}${now.getHours()}:${
            now.getMinutes() < 10 ? "0" : ""
          }${now.getMinutes()}:${
            now.getSeconds() < 10 ? "0" : ""
          }${now.getSeconds()}`
        );
        // 更新图表数据
        myChart.setOption({
          xAxis: [
            {
              data: categories,
            },
          ],
          series: [
            {
              data: data,
            },
          ],
        });
      }, 1900);
      // 初始化设置时间
      myChart.setOption(option);
    },
  },
  mounted() {
    this.$nextTick(() => {
      this.drawPlot();
    });
  },
});
</script>
<style scoped>
/* 设置图表宽高 */
#plot {
  margin: auto;
  height: 350px;
  width: 1000px;
}
</style>
