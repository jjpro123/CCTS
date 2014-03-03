// JavaScript Document

$(document).ready(function() {
	
	function megaHoverOver(){
		$(this).find(".SecondLevelWrapper").stop().fadeTo('fast', 1).show();
//		$(this).find(".NotSelected span").addClass('spanHoverAction');
/*		$(this).find(".NotSelected span").css({'background':'url(/_commonImages/PageBuilder/globalNavigation_h4_span_hover.png) left top no-repeat'}); 

		$(this).find(".NotSelected span").css({'color':'#7a0711'}); 
		$(this).find("h4").css({'background':'url(/_commonImages/PageBuilder/globalNavigation_h4_hover.png) right top no-repeat'}); 
		$(this).find(".SecondLevelWrapper .NotSelected span").css({'background':'none'}); 
		$(this).find(".SecondLevelWrapper .NotSelected span").css({'color':'inherit'}); 
		$(this).find(".SecondLevelWrapper h4").css({'background':'none'});  */
		$(this).find(".topLevelLink").addClass('hoverAction');

	}
	
	function megaHoverOut(){ 
	  $(this).find(".SecondLevelWrapper").stop().fadeTo('fast', 0, function() {
		  $(this).hide(); 
	  });
/*		$(this).find(".NotSelected span").css({'background':'none'});
		$(this).find(".NotSelected span").css({'color':'inherit'});
		$(this).find("h4").css({'background':'inherit'});*/
		//$(this).find(".NotSelected span").removeClass('spanHoverAction');
		$(this).find(".topLevelLink").removeClass('hoverAction');
	}

	var config = {    
		sensitivity: 2, // number = sensitivity threshold (must be 1 or higher)    
		interval: 100, // number = milliseconds for onMouseOver polling interval    
		over: megaHoverOver, // function = onMouseOver callback (REQUIRED)    
		timeout: 500, // number = milliseconds delay before onMouseOut    
		out: megaHoverOut // function = onMouseOut callback (REQUIRED)    
	};

	$("ul#topLevel li .SecondLevelWrapper").css({'opacity':'0'});
	$("ul#topLevel li .SecondLevelWrapper").css({'filter':'alpha(opacity=0)'});
	$("ul#topLevel li").hoverIntent(config);
/*
#headerWrapper #globalNavigation #topLevel li h4:hover {
	background:url(/_commonImages/PageBuilder/globalNavigation_h4_hover.png) right top no-repeat;
	color:#7a0711;
	cursor:pointer;
}
#headerWrapper #globalNavigation #topLevel li h4 span {
	display:block;
	height:12px;
	padding:4px 5px 4px 5px;
}
#headerWrapper #globalNavigation #topLevel li h4 span:hover {
	background: url(/_commonImages/PageBuilder/globalNavigation_h4_span_hover.png) left top no-repeat;
	color:#7a0711;
	cursor:pointer;
}


*/
});
