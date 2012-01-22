$(document).ready ->
  $('a[data-remote=true]').live 'ajax:beforeSend', ->
    $(this).fadeTo 'fast', 0.5
    $('#ajax .content, #ajax .title').hide()
    $('#ajax .loader').show()
  .live 'ajax:complete', (xhr, status) ->
    $(this).fadeTo 0, 1
    $('#ajax .loader').hide()
    $('#ajax .content, #ajax .title').show()

  $('form[data-remote=true]').live 'ajax:beforeSend', ->
    $(this).children('.actions').children('input').fadeTo 'fast', 0.5
  .live 'ajax:complete', (xhr, status) ->
    $(this).children('.actions').children('input').fadeTo 0, 1
