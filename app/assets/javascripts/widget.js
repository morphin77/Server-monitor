$.fn.EnableWidgtViewSettings = function(id){ 
  if(!$("#"+id).data('ui-draggable') && !$("#"+id).data('ui-reizable'))
    {
    	$("#"+id).draggable({ containment: $(this).parentNode });
  		$("#"+id).resizable();
  		$("#"+id).find("span").removeClass("glyphicon glyphicon-move");
  		$("#"+id).find("span").addClass("glyphicon glyphicon-ok");
  		$("#"+id).find("span").attr("style", "color:green");
      $("#"+id).addClass("draggable");
    } 
  else
  	{
  		$("#"+id).draggable('destroy');
    	$("#"+id).resizable('destroy');
    	$("#"+id).find("span").removeClass("glyphicon glyphicon-ok");
    	$("#"+id).find("span").addClass("glyphicon glyphicon-move")
    	$("#"+id).find("span").removeAttr("style");
      $("#"+id).removeClass("draggable");
  	}     
	}
  $( function() {
    $( ".dialog" ).dialog();
  } );