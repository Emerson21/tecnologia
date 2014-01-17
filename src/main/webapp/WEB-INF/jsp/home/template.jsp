<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../includes/header.jsp" %>
<%@include file="../includes/navbar.jsp" %>

    <!-- Carousel ================================================== -->
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



    <!-- Marketing messaging and featurettes ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="col-lg-4">
          <img  src="<c:url value="/images/missao.png"/>" class="missao"  alt="Missão">
          <h2>Missão</h2>
          <p>Desenvolver sistemas com alto padrão de qualidade e tecnologia para que possamos fazer parte da história de sucesso de cada cliente.</p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img src="<c:url value="/images/visao.png"/>" class="visao" alt="Visão">
          <h2>Visão</h2>
          <p>Ser uma empresa reconhecida pela sua capacidade de realização, comprometimento com clientes e colaboradores.</p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img src="<c:url value="/images/valores.png"/>" class="valores" alt="Valores">
          <h2>Valores</h2>
          <p>Comprometimento, Dedicação, Capacidade, Respeito, Comunicação, Ética, Qualidade.</p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->

      <!-- FOOTER -->
      <footer>
        <p>&copy; 2013 EA Sistemas, Inc.</p>
      </footer>

    </div><!-- /.container -->

<%@include file="../includes/footer.jsp"  %>