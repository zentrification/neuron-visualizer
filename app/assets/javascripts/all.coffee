fade_opacity = .3

$(document).ready ->
  $('table.sortable').tablesorter()

  # remote links show/hide ajax loader and content
  $('a[data-remote=true]').live 'ajax:beforeSend', ->
    $(this).fadeTo 'fast', fade_opacity
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
    $(this).children('.actions').children('input').fadeTo 'fast', fade_opacity
  .live 'ajax:complete', (xhr, status) ->
    $('.chzn-select').chosen()
    $(this).children('.actions').children('input').fadeTo 0, 1
