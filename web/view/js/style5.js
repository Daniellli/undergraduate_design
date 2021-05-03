$(function(){
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

	ellipsis("main .top li a",13);
	ellipsis("main .bottom li a",40);
});