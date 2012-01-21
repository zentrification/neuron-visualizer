# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $('#new_postsynaptic_terminal').bind 'ajax:beforeSend', ->
    console.log 'beforesend'
  .bind 'ajax:success', (xhr, status, error) ->
    console.log 'success'
  .bind 'ajax:error', (xhr, status, error) ->
    console.log 'error'
