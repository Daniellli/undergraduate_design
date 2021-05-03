$(function(){
	var n_flag = 0;

/*搜索选项*/
	$("header .mid .ca").click(function(){
		$("header .mid .ca").css("background","none");
		$("header .mid .ca").css("color","black");
		$(this).css("background","#9A2424");
		$(this).css("color","white");
		if($(this).is($(".ca1"))){
			$("#txtSearch").attr("placeholder","搜模块一");
		}else{
			$("#txtSearch").attr("placeholder","搜模块二");
		}
	});

/*搜索提交*/
	$("header .mid #btnSearch").bind("mouseover click",function(){
		$(this).addClass("cbtn1");
	}).mouseout(function(){
		$(this).removeClass("cbtn1");
	});

/*注册登录*/
	$("header .right a").bind("mouseover click",function(){
		$(this).addClass("cli");
	}).mouseout(function(){
		$(this).removeClass("cli");
	});

/*导航*/
	$("nav a").mouseover(function(){
		if(!$(this).hasClass("ca")){
			$(this).addClass("ca");
			n_flag = 1;
		}else{
			n_flag = 0;
		}
	}).mouseout(function(){
		if(n_flag == 1){
			$(this).removeClass("ca");
		}
	}).click(function(){
		$("nav a").removeClass("ca");
		$(this).addClass("ca");
		n_flag = 0;
	});
});