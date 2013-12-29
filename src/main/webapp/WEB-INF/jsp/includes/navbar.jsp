<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-inverse" role="navigation">
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    	<ul class="nav navbar-nav">
      		<li><a href='<c:url value="/"/>'>EA Sistemas</a></li>
      		<li class="dropdown">
      				<a href="#" class="dropdown-toggle" data-toggle="dropdown">A Empresa <b class="caret"></b></a>
      				<ul class="dropdown-menu">
        					<li><a href='<c:url value="/missao"/>'>Missão</a></li>
        					<li><a href='<c:url value="/visao"/>'>Visão</a></li>
        					<li><a href='<c:url value="/valores"/>'>Valores</a></li>
        					<li class="divider"></li>
        					<li class="disabled"><a href="#">Diretor/Fundador</a></li>
      				</ul>
    				</li>
      		<li class="disabled"><a href="#">Nossos Serviços</a></li>
      		<li class="disabled"><a href="#">Contato</a></li>
    	</ul>
  	</div>
</nav>
<%@include file="../includes/footer.jsp" %>