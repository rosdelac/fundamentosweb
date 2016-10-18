$(document).ready(function() 
{
	$("#form1").submit(function(event) 
  {
    event.preventDefault();
    var cadena = $(this).serialize();
    $.post('/abuelita', cadena, function(response) 
    {
      $("#grandma_says").html(response);
    }); 
  });
});

