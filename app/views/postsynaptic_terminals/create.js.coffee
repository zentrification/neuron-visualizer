<% if @postsynaptic_terminal.errors.count.eql? 0-%>
  $('#ajax .postsynaptic_terminal .title h2').html("Postsynaptic Terminal")
  $('#ajax .postsynaptic_terminal .content').html("<%= escape_javascript(render :partial => 'show') %>")
  $('table.sortable tbody').prepend("<%= escape_javascript(render @postsynaptic_terminal) %>")
  $('#postsynaptic_terminal_<%= @postsynaptic_terminal.id %>').effect 'highlight', {}, 1000
<% else -%>
  $('#ajax .postsynaptic_terminal .content').html("<%= escape_javascript(render :partial => 'form') %>")
  $('.chzn-select').chosen()
<% end -%>
