<% if @postsynaptic_terminal.errors.count.eql? 0-%>
  $('.postsynaptic_terminal.ajax-title h2').html("Postsynaptic Terminal")
  $('.postsynaptic_terminal.ajax-form').empty().append("<%= escape_javascript(render :partial => 'show') %>")
  $('#synapse_postsynaptic_terminal_id').prepend("<option value='<%= escape_javascript(@postsynaptic_terminal.id.to_s) %>'><%= escape_javascript(@postsynaptic_terminal.label) %></option>")
  $('#synapse_postsynaptic_terminal_id').val("<%= escape_javascript(@postsynaptic_terminal.id.to_s) %>").attr('selected', 'selected')
<% else -%>
  $('.postsynaptic_terminal.ajax-form').empty().append("<%= escape_javascript(render :partial => 'form') %>")
<% end -%>
