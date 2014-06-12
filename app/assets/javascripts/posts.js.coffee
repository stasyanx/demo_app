$(document).on "page:change", (e) ->
  e.preventDefault
  $("#comment").prop "disabled", true

  $("#comment_text").change ->
    $("#comment").attr "disabled", false
  return


$(document).on "page:change", (e) ->
  e.preventDefault
  $("#coment-well").hide()
  $('.btn-info').click ->
    $(".well").fadeIn(2000)
    $('.btn-info').fadeOut(1000)
  return