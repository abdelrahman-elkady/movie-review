/*
 * Fixing focus not working on flat-ui input groups
 */
$(document).ready(function(){
  $('.input-group').focusin(function(){
    $('.input-group').addClass('focus');
  });

  $('.input-group').focusout(function(){
    $('.input-group').removeClass('focus');
  });
});
