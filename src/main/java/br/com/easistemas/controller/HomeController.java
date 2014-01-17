package br.com.easistemas.controller;

import org.apache.commons.mail.EmailException;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.view.Results;
import br.com.easistemas.canonico.Contato;
import br.com.easistemas.mail.SendEmail;

@Resource
public class HomeController {
	
	private SendEmail sendEmail;
	private Result result;
	
	public HomeController(SendEmail sendEmail, Result result) {
		this.sendEmail = sendEmail;
		this.result = result;
	}
	
	@Get("/")
	public void template() {}
	
	public void index() {}
	
	@Get("/missao")
	public void missao() {}
	
	@Get("/owner")
	public void owner() {}

	@Get("/contato")
	public void contato() {}

	@Get("/servicos")
	public void servicos() {}

	@Get("/historia")
	public void historia() {}
	
	@Post("/contato")
	public void enviarEmail(Contato contato) throws EmailException {
		sendEmail.sendEmail(contato.getEmail());
		sendEmail.sendEmailReceived(contato.getEmail());
		result.use(Results.status()).ok();
	}

}
