$(document).ready ->
  $('table.sortable').tablesorter()
  $('.chzn-select').chosen()

  # remote links show/hide ajax loader and content
  $('a[data-remote=true]').live 'ajax:beforeSend', ->
    $(this).fadeTo 'fast', 0.5
    $('#ajax .content, #ajax .title').hide()
    $('#ajax .loader').show()
  .live 'ajax:complete', (xhr, status) ->
    $('.chzn-select').chosen()
    $(this).fadeTo 0, 1
    $('#ajax .loader').hide()
    $('#ajax .content, #ajax .title').show()

  # form submit disables button
  $('form[data-remote=true]').live 'ajax:beforeSend', ->
    $('.chzn-select').chosen()
    $(this).children('.actions').children('input').fadeTo 'fast', 0.5
  .live 'ajax:complete', (xhr, status) ->
    $(this).children('.actions').children('input').fadeTo 0, 1
