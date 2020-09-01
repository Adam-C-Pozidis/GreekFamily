$(document).ready(function(){
  $('[data-toggle="popover"]').popover();

  $('.modal').on('shown.bs.modal', function() {
         $("[data-toggle=popover]").popover('hide')
    })
});
