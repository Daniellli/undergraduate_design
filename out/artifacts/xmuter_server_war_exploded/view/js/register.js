$(function(){
	$("#register_box .cbtn").bind("mouseover click",function(){
		$(this).addClass("cbtnt");
	}).mouseout(function(){
		$(this).removeClass("cbtnt");
	});
});