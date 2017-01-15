/*$( function(id) {
	$(".widget").resizable();
	$(".widget").draggable();
} );*/

$.fn.EnableWidgtViewSettings = function(id){ 
  if(!$("#"+id).data('ui-draggable') && !$("#"+id).data('ui-reizable'))
    {
    	$("#"+id).draggable();
  		$("#"+id).resizable();
  		$("#"+id).find("span").removeClass("glyphicon glyphicon-move");
  		$("#"+id).find("span").addClass("glyphicon glyphicon-ok");
  		$("#"+id).find("span").attr("style", "color:green");
    } 
  else
  	{
  		$("#"+id).draggable('destroy');
    	$("#"+id).resizable('destroy');
    	$("#"+id).find("span").removeClass("glyphicon glyphicon-ok");
    	$("#"+id).find("span").addClass("glyphicon glyphicon-move")
    	$("#"+id).find("span").removeAttr("style");
  	}     
	}
