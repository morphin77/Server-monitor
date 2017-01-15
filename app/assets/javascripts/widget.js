/*$( function(id) {
	$(".widget").resizable();
	$(".widget").draggable();
} );*/

$.fn.EnableWidgtViewSettings = function(id){ 
  if(!$("#"+id).data('ui-draggable') && !$("#"+id).data('ui-reizable'))
    {
    	$("#"+id).draggable();
  		$("#"+id).resizable();
    } 
  else
  	{
  		$("#"+id).draggable('destroy');
    	$("#"+id).resizable('destroy');
  	}     
	}
