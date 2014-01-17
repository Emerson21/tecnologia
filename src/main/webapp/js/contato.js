$(document).ready(function() {

	$(".alert-success").hide();
	$(".alert-danger").hide();
	$("#telefone").mask("(99) 9999?9-9999").focusout(function(event) {
		var tamanho = $(this).val().replace("_", "").length;
		if ( tamanho == 14) {
			$(this).mask("(99) 9999-9999");
		} else if ( tamanho == 15 ) {
			$(this).mask("(99) 99999-9999");
		} else {
			$(this).val('');	
		}
		
	}); 
	
	$('#form-contato').validate({
		rules : {
			'contato.nome' : { required: true },
			'contato.sobrenome' : { required: true },
			'contato.email.to' : { required : true, email : true },
			'contato.telefone' : { required : true },
			'contato.email.subject' : { required: true },
			'contato.email.message' : { required: true }
		},
		 highlight: function(element) {
			    $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
		},
		unhighlight: function(element) {
				$(element).addClass('has-success').closest('.form-group').removeClass('has-error').addClass('has-success');
		},
		messages: {
			'contato.nome': { required: "Teste nome required" },
			'contato.sobrenome': { required: "Teste nome required" },
			'contato.email.to': { required: "Teste email to required" },
			'contato.telefone': { required: "Telefone obrigatorio" },
			'contato.email.subject': { required: "Assunto obrigatorio" },
			'contato.email.message': { required: "Mensagem obrigatorio" }
		},
        errorElement: 'span',
        errorClass: 'help-block',
        errorPlacement: function(error, element) {
            if(element.parent('.input-group').length) {
                error.insertAfter(element.parent());
            } else {
                error.insertAfter(element);
            }
        }
	});
});