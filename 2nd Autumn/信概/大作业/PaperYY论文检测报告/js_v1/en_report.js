/*报表相关*/
var barXs = barData.map(function (item, i) { return i + 1; });
barData = barData.map(function (item, i) {
    if (item < 40) { c = "#86c281"; } else if (item < 70) { c = "#e4b55e"; } else { c = "#f16d86" }
    return { value: 1, itemStyle: { normal: { color: c, borderWidth: 0 }, emphasis: { color: c} }, silent: true, animation: false };
});
barOption = {
    color: ['#3398DB'],
    legend: { show: false },
    silent: false,
    animation: false,
    grid: { left: 0, right: 10, containLabel: false },
    tooltip: { show: false },
    axisPointer: { show: false },
    xAxis: [{ type: 'category', data: barXs, axisLine: { show: false }, splitLine: { show: false}}],
    yAxis: [
                {
                    type: 'value',
                    show: false
                }
            ],
    series: [
                {
                    name: '',
                    type: 'bar',
                    data: barData,
                    legendHoverLink: false,
                    barGap: 0,
                    barCategoryGap: 0
                }
            ]
};
barChart.setOption(barOption);
var scatterChart = echarts.init(document.getElementById('scatterChart'));

var scatterXs = scatterData.map(function (item, i) {
    return i + 1;
});
scatterData = scatterData.map(function (item, i) {
    c = "#e4b55e";
    if (item >= 70) {
        c = "#f16d86";
    }
    return { value: item, symbolSize: 4, itemStyle: { normal: { color: c, opacity: 1 }, emphasis: { color: c} }, silent: true, animation: false };
});


scatterOption = {
    color: ['#3398DB'],
    legend: { show: false },
    silent: false,
    animation: false,
    grid: {
        right: 10,
        y: 10,
        x: 40,
        show: true,
        backgroundColor: "#f6f6f6",
        containLabel: false
    },
    tooltip: {
        show: false
    },
    axisPointer: { show: false },
    xAxis: [
                {
                    type: 'category',
                    data: scatterXs,
                    axisTick: {
                        alignWithLabel: true
                    },
                    name: 'X-句子',
                    nameLocation: 'middle',
                    nameGap: 25
                }
            ],
    yAxis: [
                {
                    type: 'value',
                    show: true,
                    min: 35,
                    max: 100,
                    name: 'Y-相似度%',
                    nameLocation: 'middle',
                    nameGap: 25
                }
            ],
    series: [
                {

                    type: 'scatter',
                    symbol: "circle",
                    data: scatterData,
                    legendHoverLink: false
                }
            ]
};

scatterChart.setOption(scatterOption);
$(window).resize(function () {
    barChart.resize();
    scatterChart.resize();
});


$(function () {
    /*导航点击事件*/
    $(".menu a").click(function () {
        $(this).addClass("on").siblings().removeClass("on");
        $("#tabcontent" + $(this).index()).show().siblings().hide();
        if ($(this).index() == 2) {
            $(".artical2").html($(".artical").html());
        }
        barChart.resize();
        scatterChart.resize();
    });
    /*鼠标移动追加样式*/
    $(".artical .c-red,.artical .c-orange").mouseover(function () {
        $(this).addClass("bold").show("slow");
    }).mouseout(function () { if ($(this).data("type") != "lock") { $(this).removeClass("bold").show("slow"); } });
    /*鼠标点击添加选中样式*/
    $(".artical .c-red,.artical .c-orange").click(function () {
        $(".artical em").data("type", "");
        $(this).data("type", "lock");
        $(".artical em").removeClass("bold")
        $(this).addClass("bold").siblings();
        $("#inner_" + $(this).data("id")).show().siblings().hide();
        $("#defaultleft").hide();
    });
    /*右侧框高度自动适应*/
    var WinH = $(window).height();
    var H = WinH - $('.header').height();
    $('.overflow-auto').height(H);
    $(window).resize(function () {
        WinH = $(window).height();
        H = WinH - $('.header').height();
        $('.overflow-auto').height(H)
    });
    $('.nav span').click(function () {
        $('.nav span').toggleClass('active');
        $('.content .cont-li').toggleClass('active');
    });

    var assessList = $('.assessList');
    assessList.each(function () {
        var obj = $(this).find('li');
        var count = 0;
        obj.each(function () {
            var index = $(this).find('.index');
            var num = $(this).find('.num');
            var val = parseInt(num.text());
            var recBox_p = $(this).find('.recBox p');
            recBox_p.css('width', val + '%');

            index.html(++count);
            if (val >= 70) {
                recBox_p.addClass('rec-red');
                num.addClass('c-red');
            } else if (val >= 30) {
                recBox_p.addClass('rec-orange');
                num.addClass('c-orange');
            } else {
                recBox_p.addClass('rec-green');
                num.addClass('c-green');
            }
        })
    })
});