$('#page-link a[href*="#"]').click(function () {
  var elmHash = $(this).attr('href'); 
  var pos = $(elmHash).offset().top;
  $('body,html').animate({ scrollTop: pos }, 5000); 
  return false;
});