<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- NAVBAR ================================================== -->
    <div class="navbar-wrapper">
      <div class="container">

        <div class="navbar navbar-inverse navbar-static-top" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="<c:url value="/"/>">EA Sistemas</a>
            </div>
            <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li><a href='<c:url value="/"/>'>Home</a></li>
      			<li class="dropdown">
      				<a href="#" class="dropdown-toggle" data-toggle="dropdown">Conheça a EA Sistemas</a>
      				<ul class="dropdown-menu">
      					<li><a href='<c:url value="/historia"/>'>Nossa história</a></li>
        				<li class="divider"></li>
        				<li><a href='<c:url value="/owner"/>'>Conheça o Diretor/Fundador</a></li>
      				</ul>
    				</li>
      			<li><a href="<c:url value="/servicos"/>">Nossos Serviços</a></li>
      			<li><a href="<c:url value="/contato"/>">Contato</a></li>
              </ul>
            </div>
          </div>
        </div>

      </div>
    </div>
