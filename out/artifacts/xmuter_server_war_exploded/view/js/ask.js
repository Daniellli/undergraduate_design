$(function () {
    $("main .asktable-getscore").click(function () {
        $(this).next().removeClass("hidden");
    });

    $("main .asktable_li").click(function () {
        var txt = $(this).find("span").html();
        $("main .asktable_usescore").html(txt);
        $(this).parent().addClass("hidden");
    }).mouseover(function () {
        $(this).addClass("bgcolor");
    }).mouseout(function () {
        $(this).removeClass("bgcolor");
    });
});

