$(document).ready(function() 
{
  $("#formroll").submit(function(event) 
  {
    event.preventDefault();
    $.post('/rolls', function(response) 
    {
      console.log(response);
      $("#die").html(response);
    }); 
  });
});
