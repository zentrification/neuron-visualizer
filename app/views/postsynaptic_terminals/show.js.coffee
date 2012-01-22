$('#ajax .<%= singular_table_name %> .title h2').html("Postsynaptic Terminal")
$('#ajax .postsynaptic_terminal .content').html("<%= escape_javascript(render :partial => 'show') %>")
