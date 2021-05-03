$(function(){
	var slideTime = 2000;
	var nowIndex = 0;
	var length = $("#selBox li").length;
	var title = ["这是热点一的标题",
				"这是热点二的标题",
				"这是热点三的标题",
				"这是热点四的标题",
				"这是热点五的标题"];
//自动切换图片
	function slide(){
		++nowIndex;
		nowIndex %= length;
		$("#selBox li").removeClass("cli");
		$("#selBox li").eq(nowIndex).addClass("cli");
		$("#imgBox img").attr("src","images/2_0_"+nowIndex+".jpg");
		$("#imgBox p").text(title[nowIndex]);
	}

	var mov = setInterval(slide,slideTime);

//选择切换图片
	$("#selBox li").mouseover(function(){
		$("#selBox li").removeClass("cli");
		$(this).addClass("cli");
		for (var i = 0; i <= length-1; i++) {
			if($("#selBox li:eq("+i+")").is($(this))){
				$("#imgBox img").attr("src","images/2_0_"+i+".jpg");
				$("#imgBox p").text(title[i]);
				nowIndex = i;
				break;
			}
		}
		clearInterval(mov);
	});

//移开继续自动
	$("#selBox li").mouseout(function(){
		mov = setInterval(slide,slideTime);
	});

//公告栏标题效果
	var loc;
	$("main .cat img").bind("mouseover click", function(){
		loc = $(this).attr("src");
		$(this).attr("src",loc.replace("1.","2."));
	}).mouseout(function(){
		$(this).attr("src",loc);
	});

//公告栏链接效果
	$("main .content li a").bind("mouseover click", function(){
		$(this).toggleClass("ca");
	}).mouseout(function(){
		$(this).toggleClass("ca");
	});

//公告栏内容省略
	function ellipsis(obj,length){
		$(obj).each(function(){
			var linkTitle = $(this).html();
			if(linkTitle.length > length){ 
        		linkTitle = linkTitle.substring(0,length)+"...";
	        }
	        $(this).html(linkTitle);
		});
	}

	ellipsis("main .top li a",12);
	ellipsis("main .bottom li a",20);
});