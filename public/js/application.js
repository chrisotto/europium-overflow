$(document).ready(function() {
  $("a#logout").on("click", function(event) {
    event.preventDefault();
    $.post($(this).attr('href'), '_method=delete').done(function(responseHref) {
      window.location.replace(responseHref);
    })
  })
});
