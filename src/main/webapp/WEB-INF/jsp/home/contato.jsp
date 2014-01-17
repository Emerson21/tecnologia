<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../includes/header.jsp" %>
<%@include file="../includes/navbar.jsp" %>
 <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="item active">
          <img data-src="holder.js/900x500/auto/#666:#6a6a6a/text:Serviços" alt="Serviços">
          <div class="container">
            <div class="carousel-caption">
              <h1>Nossos serviços</h1>
              <p>Desenvolvimento de softwares, desenvolvimento de sistemas web, desenvolvimento utilizando testes, metodologia ágil em Scrum.</p>
              <p><a class="btn btn-lg btn-primary" href="<c:url value="/contato"/>" role="button">Entre em contato</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img data-src="holder.js/900x500/auto/#777:#7a7a7a/text:Missão" alt="Nossa Missão">
          <div class="container">
            <div class="carousel-caption">
              <h1>Nossa missão</h1>
              <p>Desenvolver sistemas com alto padrão de qualidade e tecnologia para que possamos fazer parte da história de sucesso de cada cliente.</p>
              <p><a class="btn btn-lg btn-primary" href="<c:url value="/missao"/>" role="button">Leia mais</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img data-src="holder.js/900x500/auto/#555:#5a5a5a/text:História" alt="História">
          <div class="container">
            <div class="carousel-caption">
              <h1>Conheça a história da EA Sistemas</h1>
              <p>Conheça a trajetória da EA Sistemas e o que ela oferece para seus cliente/parceiros.</p>
              <p><a class="btn btn-lg btn-primary disabled" href="<c:url value="/historia"/>" role="button">Leia Mais</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div><!-- /.carousel -->
    
    <div class="container">
	  	<h1>Entre em contato</h1>
		<form id="form-contato" action="" class="form-horizontal" role="search">
			<div class="form-group input-group">
		  		<span class="input-group-addon">Nome</span>
		  		<input id="nome" type="text" class="form-control" name="contato.nome" placeholder="Digite seu Nome" />
			</div>

			<div class="form-group input-group">
		  		<span class="input-group-addon">Sobrenome</span>
		  		<input id="sobrenome" type="text" class="form-control" name="contato.sobrenome" placeholder="Digite seu Sobrenome" />
			</div>

			<div class="form-group input-group">
		  		<span class="input-group-addon">Telefone</span>
		  		<input id="telefone" type="text" class="form-control" name="contato.telefone" placeholder="Digite seu telefone" />
			</div>
			
			<div class="form-group input-group">
		  		<span class="input-group-addon">@</span>
		  		<input id="from" type="text" class="form-control" name="contato.email.from" placeholder="Digite seu e-mail" />
			</div>
			<div class="form-group input-group">
		  		<span class="input-group-addon">Assunto</span>
		  		<input id="subject" type="text" class="form-control" name="contato.email.subject" placeholder="Orçamento, Contratação de serviços"  />
			</div>
			<div class="form-group">
				<textarea id="message" placeholder="Digite sua mensagem aqui" class="form-control" name="contato.email.message" rows="3" ></textarea>
			</div>
		  	<button id="buttonSubmitContato" type="button" class="btn btn-primary form-group ">Enviar</button>
		</form>
	</div>
	
	<div id="loading" class="hide">
		<img alt="Enviando" src="<c:url value="/images/gif/loading.gif"/>"/>
	</div>
	
	<div class="alert alert-success">Sua mensagem foi enviada com sucesso!</div>
	
	<div class="alert alert-danger">Ocorreu um erro ao enviar sua mensagem, já fomos notificados e estaremos analisando o problema ocorrido!</div>
	
<%@include file="../includes/footer.jsp"  %>