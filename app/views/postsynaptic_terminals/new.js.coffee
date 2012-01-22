$('#ajax .postsynaptic_terminal .title h2').html("New Postsynaptic Terminal")
$('#ajax .content').html("<%= escape_javascript(render :partial => 'form') %>")
$('#postsynaptic_terminal_neuron_id').focus()
