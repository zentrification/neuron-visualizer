$('.ajax.postsynaptic_terminal .title h2').html("Postsynaptic Terminal")
$('.ajax .content').html("<%= escape_javascript(render :partial => 'show') %>")