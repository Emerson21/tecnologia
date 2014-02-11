<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../includes/header.jsp" %>
<%@include file="../includes/navbar.jsp" %>
    
    <!-- Carousel ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
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
      </div>
    </div><!-- /.carousel -->

    
<!--     //tumbnails para cada serviço com imagem adequada  -->
    
    <div class="container">
	  	<h1>Nossos serviços</h1>
	  	<p>Mobile</p>
		<p>Desenvolvimento de sistemas web</p>
		<p>TDD</p>
		<p>Metodologias ágeis</p>
	</div>
<%@include file="../includes/footer.jsp"  %>