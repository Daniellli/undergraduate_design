$(function(){
	$("main li a").bind("mouseover click",function(){
		$(this).addClass("cli");
	}).mouseout(function(){
		$(this).removeClass("cli");
	});

	$("main .letter-tit_li").click(function(){
		var titArr = $("main .letter-tit_li");
		var conArr = $("main .letter-con_li");
		titArr.removeClass("letter-tit_cli");
		$(this).addClass("letter-tit_cli");
		conArr.removeClass("display");
		for(var i=0;i<titArr.length;i++){
			if($(this).is(titArr.eq(i))){
				$(conArr.eq(i)).addClass("display");
				break;
			}
		}
	});

	$("main .letter-con_li ul li").click(function(){
		var titArr = $("main .letter-con_li ul li")
		var conArr = $("main .letter-con-box");
		titArr.removeClass("letter-con_li_span");
		$(this).addClass("letter-con_li_span");
		conArr.removeClass("display");
		for(var i=0;i<titArr.length;i++){
			if($(this).is(titArr.eq(i))){
				$(conArr.eq(i)).addClass("display");
				break;
			}
		}
	});
});