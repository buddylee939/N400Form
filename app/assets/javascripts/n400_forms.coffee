$(document).ready ->
  $('.eligible').click ->
    $('.eligible').not(this).prop 'checked', false
    return
  return