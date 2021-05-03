$(function(){
/*问答选项卡*/
	$("main .tit li").mouseover(function(){
		$("main .tit li").removeClass("cli");
		$(this).addClass("cli");
		$("main .con .cbox2").css("display","none");
		for(var i=0;i<=$("main .tit li").length-1;i++){
			if($("main .tit li").eq(i).is($(this))){
				$("main .con .cbox2_"+i).css("display","block");
			}
		}
	});
});