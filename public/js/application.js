$(document).ready(function() {
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
});
