$(function(){
	var l_flag = 0;
	var m_flag = 0;
/*问题选项*/
	$("#left span").mouseover(function(){
		if(!$(this).hasClass("cs")){
			$(this).addClass("cs");
			l_flag = 1;
		}else{
			l_flag = 0;
		}
	}).mouseout(function(){
		if(l_flag == 1){
			$(this).removeClass("cs");
		}
	}).click(function(){
		$("#left span").removeClass("cs");
		$(this).addClass("cs");
		l_flag = 0;
	});
/*问答选项卡*/
	$("#middle span").mouseover(function(){
		if(!$(this).hasClass("cs")){
			$(this).addClass("cs");
			m_flag = 1;
		}else{
			m_flag = 0;
		}
	}).mouseout(function(){
		if(m_flag == 1){
			$(this).removeClass("cs");
		}
	}).click(function(){
		$("#middle li").removeClass("cli");
		$("#middle span").removeClass("cs");
		$(this).addClass("cs");
		$(this).parent().parent().addClass("cli");
		$(".cbox").css("display","none");
		for(var i=0;i<=$("#middle span").length-1;i++){
			if($("#middle span").eq(i).is($(this))){
				$(".cbox"+i).css("display","block");
			}
		}
		m_flag = 0;
	});
/*排行榜*/
	$("#right .rbottom a").mouseover(function(){
		$(this).addClass("ca");
	}).mouseout(function(){
		$(this).removeClass("ca");
	}).click(function(){
		$(this).addClass("ca");
	});
});