$("#users a").click (e) ->
  e.preventDefault()
  $(this).tab "show"
  return