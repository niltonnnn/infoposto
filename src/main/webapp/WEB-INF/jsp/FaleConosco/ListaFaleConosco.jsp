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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<title>InfoPosto - Admin</title>
</head>
<body>
    <%@ include file="../menu-admin.jsp" %>

		<%
		List<FaleConosco> f = ListaAction.getAllMessages();
		request.setAttribute("mensagens", f);
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
						<td><a href="/infoposto/web?action=ExcluirMensagemAction&codigo=${contato.getCodigo()}" >Excluir</a></td>
						<td><a href ="/infoposto/web?action=FrmResponderMensagem&codigo=${contato.getCodigo()}">Responder</a></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			
		</div>
	</div>
 <%@ include file="../footer.jsp" %>	


</body>
</html>