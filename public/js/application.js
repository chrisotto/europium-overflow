$(document).ready(function() {

  // AJAX new answer form
  $('#new-answer-button').on('click', function(event) {
    event.preventDefault()

    var $path = $(this).attr('action')
    console.log($path)

    newAnswerRequest = $.ajax({
      method: 'GET',
      url: $path
    });

    newAnswerRequest.done(function(response) {
      $('.container').append(response)
      $('#new-answer-button').css('display', 'none')
    });
  });

  // AJAX logout
  $("a#logout").on("click", function(event) {
    event.preventDefault();
    $.post($(this).attr('href'), '_method=delete').done(function(responseHref) {
      window.location.replace(responseHref);
    })
  })
});
