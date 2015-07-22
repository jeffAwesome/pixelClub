$('form button').on 'click', (e) ->
  e.preventDefault()
  thisform = $(this).closest('form')
  $(this).attr('disabled', 'disabled').text 'Submitting'
  d = thisform.serialize()
  $.ajax
    url: 'http://now.eloqua.com/e/f2'
    type: 'POST'
    data: d
    dataType: 'jsonp'
    complete: (d) ->
      $(".contact__form-container").html("<h2>Thank you. We'll be in touch shortly and welcome to the club.</h2>")
