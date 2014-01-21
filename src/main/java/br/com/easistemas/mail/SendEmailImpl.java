package br.com.easistemas.mail;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
import org.apache.log4j.Logger;

import br.com.caelum.vraptor.ioc.Component;
import br.com.easistemas.canonico.Email;

@Component
public class SendEmailImpl implements SendEmail {
	
	private static final Logger LOGGER = Logger.getLogger(SendEmailImpl.class);
	
	private static final String PASSWORD = System.getenv().get("EMAIL_PASS");
	private static final String HOST_NAME = "smtp-mail.outlook.com";
	private static final int SMTP_PORT = 587;
	private static final String USER_NAME = "eaharaguchi@easistemas.com.br";
	
	@Override
	public void sendEmail(Email email) throws EmailException {
		SimpleEmail simpleEmail = emailConnect();
		simpleEmail.setFrom(email.getFrom());
		simpleEmail.setSubject(email.getSubject());
		simpleEmail.setMsg(email.getMessage());
		simpleEmail.addTo(USER_NAME);
		simpleEmail.send();
	}

	@Override
	public void sendEmailReceived(Email email) throws EmailException {
		SimpleEmail simpleEmail = emailConnect();;
		simpleEmail.setFrom(USER_NAME);
		simpleEmail.setSubject(email.getSubject());
		simpleEmail.setMsg(email.getMessage());
		simpleEmail.addTo(email.getFrom());
		simpleEmail.send();
	}
	
	private SimpleEmail emailConnect() throws EmailException {
		SimpleEmail simpleEmail = new SimpleEmail();
		simpleEmail.setDebug(true);
		simpleEmail.setHostName(HOST_NAME);
		simpleEmail.setSmtpPort(SMTP_PORT);
		simpleEmail.setAuthenticator(new DefaultAuthenticator(USER_NAME, PASSWORD));
		simpleEmail.setStartTLSEnabled(true);
		return simpleEmail;
	}
	
}
