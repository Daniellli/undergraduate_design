$(function(){
	$("main li a").bind("mouseover click",function(){
		$(this).addClass("cli");
	}).mouseout(function(){
		$(this).removeClass("cli");
	});
});