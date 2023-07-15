$(function () {
    var WinH = $(window).height();
    var H = WinH-$('.header').height();
    $('.overflow-auto').height(H);
    $(window).resize(function () {
        WinH = $(window).height();
        H = WinH-$('.header').height();
        $('.overflow-auto').height(H)
    });


    $('#nav span').click(function () {
        $('#nav span').toggleClass('active');
        $('#content .cont-li').toggleClass('active');
    })

    $('.s-r').click(function () {
        if(!$(this).hasClass('active')){
            return;
        }
        $('.s-r').toggleClass('active');
        $('.s-l').toggleClass('active');
        $('.cont-li ').toggleClass('active');

    })
    $('.s-l').click(function () {
        if(!$(this).hasClass('active')){
            return;
        }
        $('.s-r').toggleClass('active');
        $('.s-l').toggleClass('active');
        $('.cont-li ').toggleClass('active');

    })
})
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