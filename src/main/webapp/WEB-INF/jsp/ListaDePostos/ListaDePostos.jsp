<%@ page language="java" contentType="text/html;  charset=UTF-8;"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri= "http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
    <%@page import="br.edu.itb.academico.model.Posto,java.util.*"%>
<%@page import="br.edu.itb.academico.actions.*"%>

<!DOCTYPE html>
<html>
  <head>
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <title>InfoPosto</title>
  </head>

  <!--conteudo-->
  <body>
    <%@ include file="../menu-admin.jsp" %>
         
		<%
		List<Posto> p = ListaAction.getAll();
		request.setAttribute("postos", p);
		%>

	<div class="row">
		<div class="cold-md-15">
			<hr>
			<h3>Mensagens: Fale Conosco</h3>
			<hr>
			<table class="table" style="text-align:center;">
				<thead>
					<tr style="background-color:#A9A9A9; font-size:15px;">
						<tr>
						<th>Código</th>
						<th>Nome</th>
						<th>Email</th>
						<th>Mensagem</th>
					</tr>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${mensagens}" var="contato">
					<tr style="text-align:center;font-size:14px;">
						<td>${contato.getCodigo() }</td>
						<td>${contato.getNome()}</td>
						<td>${contato.getEmail()}</td>
						<td>${contato.getMensagem()}</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>

<a href="/infoposto/web?action=FrmCadastroDePosto" style="padding-left:20vw ;font-weight:bold;">Cadastrar posto</a>
	<%@ include file="../footer.jsp"%>
  </body>

</html>