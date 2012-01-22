$('#ajax .postsynaptic_terminal .title h2').html("Edit Postsynaptic Terminal")
$('#ajax .postsynaptic_terminal .content').html("<%= escape_javascript(render :partial => 'form') %>")
