package br.com.easistemas.mail;

import org.apache.commons.mail.EmailException;
import br.com.easistemas.canonico.Contato;

public interface SendEmail {
	
	void sendEmail(Contato  contato) throws EmailException;

	void sendEmailReceived(Contato  contato) throws EmailException;
	
}
