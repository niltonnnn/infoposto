<%@ page language="java" contentType="text/html;  charset=UTF-8;"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri= "http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
    <%@page import="br.edu.itb.academico.model.FaleConosco,java.util.*"%>
    <%@page import="br.edu.itb.academico.actions.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="./../css/home.css">
    <link rel="stylesheet" type="text/css" href="./../css/slick.css" />
    <link rel="stylesheet" type="text/css" href="./../css/slick-theme.css"/>

<title>InfoPosto - Admin</title>
</head>
<body>
    <%@ include file="../menu-admin.jsp" %>

		<%
		List<FaleConosco> f = ListaAction.getAllMessages();
		request.setAttribute("mensagens", f);
		%>
			<h1 style= "margin:auto; width:50%">Listagem de contatos</h1>
		<div style= "margin:auto; width:50%">

		<table>
			<tr>
				<th>Código</th>
				<th>Nome</th>
				<th>Email</th>
				<th>Mensagem</th>
				<th>Resposta</th>
				<th>Data</th>
				<th></th>
				<th></th>
			</tr>
			
		<c:forEach items="${mensagens}" var="contato">
			<tr>
				<td>${contato.getCodigo() }</td>
				<td>${contato.getNome()}</td>
				<td>${contato.getEmail()}</td>
				<td>${contato.getMensagem()}</td>
				<td>${contato.getResposta()}</td>
				<td>${contato.getDataResposta()}
				
		    </tr>
			</c:forEach>

		</table>
		<br>
		<br>
		</div>
	


</body>
</html>