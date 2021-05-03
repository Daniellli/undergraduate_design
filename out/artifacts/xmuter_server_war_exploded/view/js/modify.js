$(function(){
	$("main li a").bind("mouseover click",function(){
		$(this).addClass("cli");
	}).mouseout(function(){
		$(this).removeClass("cli");
	});

	$("main .csub").bind("mouseover click",function(){
		$(this).addClass("cbtnt");
	}).mouseout(function(){
		$(this).removeClass("cbtnt");
	});
});