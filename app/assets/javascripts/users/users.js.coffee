$(document).on "page:change", (e) ->
  e.preventDefault
  $("#users a").click (e) ->
    $(this).tab "show"
    return

  return

