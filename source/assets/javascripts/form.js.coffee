$('form button').on 'click', (e) ->
  e.preventDefault()
  thisform = $(this).closest('form')
  $(this).attr('disabled', 'disabled').text 'Submitting'
  d = thisform.serialize()
  $.ajax
    url: 'https://pixel-club-contact.herokuapp.com/'
    type: 'POST'
    data: d
    dataType: 'jsonp'
    complete: (d) ->
      $(".contact__form-container").html("<h2>Thank you. We'll be in touch shortly and welcome to the club.</h2>")
