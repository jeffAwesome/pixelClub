$(document).ready ->


  displayThankYou = ->
    buildThankYou()

  buildThankYou = ->
    $container = $(".contact__form-container")
    buildMessage($container)

  buildMessage = ($container) ->
    $message = "<h2 class='thank-you__main-title'>Thank you. We will get back to you shortly. </h2>"
    hideButton()
    $container.html($message)

  hideButton = ->
    $(".btn__contact").hide()

  if getParameterByName('mailed') == 'success'
    console.log "we've been mailed"

    displayThankYou()

