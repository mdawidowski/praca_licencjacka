# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  value = $('#bid').val()
  $(document).on 'click', '#bidbutton', ->
    if value >= $('#bid').val()
      alert("Za mało!")
      return false
