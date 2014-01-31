package br.com.easistemas.mail;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

import br.com.caelum.vraptor.ioc.Component;
import br.com.easistemas.canonico.Contato;
import br.com.easistemas.canonico.Email;

@Component
public class SendEmailImpl implements SendEmail {
	
	private static final String PASSWORD; 
	private static final String HOST_NAME = "smtp.live.com";
	private static final int SMTP_PORT = 587;
	private static final String USER_NAME = "eaharaguchi@easistemas.com.br";
	
	static {
		PASSWORD = System.getProperty("EMAIL_PASS") != null ? System.getProperty("EMAIL_PASS") : System.getenv().get("EMAIL_PASS");
	}
	
	@Override
	public void sendEmail(Contato contato) throws EmailException {
		Email email = contato.getEmail();
		SimpleEmail simpleEmail = emailConnect();
		simpleEmail.setFrom(email.getFrom());
		simpleEmail.setSubject(email.getSubject());
		simpleEmail.setMsg(formatEmailMessage(contato));
		simpleEmail.addTo(USER_NAME);
		simpleEmail.send();
	}

	@Override
	public void sendEmailReceived(Contato contato) {
		Email email = contato.getEmail();
		SimpleEmail simpleEmail = emailConnect();;
		try {
			simpleEmail.setFrom(USER_NAME);
			simpleEmail.setSubject(email.getSubject());
			simpleEmail.setMsg(email.getMessage().concat(contato.getNome()).concat(contato.getSobreNome()).concat(contato.getTelefone()));
			simpleEmail.addTo(email.getFrom());
			simpleEmail.send();
		} catch (EmailException e) {
			e.printStackTrace();
		}
	}
	
	private SimpleEmail emailConnect() {
		SimpleEmail simpleEmail = new SimpleEmail();
		simpleEmail.setDebug(true);
		simpleEmail.setHostName(HOST_NAME);
		simpleEmail.setSmtpPort(SMTP_PORT);
		simpleEmail.setAuthenticator(new DefaultAuthenticator(USER_NAME, PASSWORD));
		simpleEmail.setStartTLSEnabled(true);
		return simpleEmail;
	}
	
	private String formatEmailMessage(Contato contato) {
		String message = "Nome: ".concat(contato.getNome()).concat(" ").concat(contato.getSobreNome());
		message.concat("Telefone: ").concat(contato.getTelefone());
		message.concat("Mensagem: ").concat(contato.getEmail().getMessage());
		return message;
	}
	
}
