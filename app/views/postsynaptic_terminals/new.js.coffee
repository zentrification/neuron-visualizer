$('#ajax .postsynaptic_terminal .title h2').html("New Postsynaptic Terminal")
$('#ajax .content').html("<%= escape_javascript(render :partial => 'form') %>")
