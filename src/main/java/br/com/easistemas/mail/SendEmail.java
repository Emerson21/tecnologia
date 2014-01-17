package br.com.easistemas.mail;

import org.apache.commons.mail.EmailException;

import br.com.easistemas.canonico.Email;

public interface SendEmail {
	
	void sendEmail(Email email) throws EmailException;

	void sendEmailReceived(Email email) throws EmailException;
	
}
