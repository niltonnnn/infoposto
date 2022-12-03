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
	<a href="/infoposto/web?action=FrmFaleConosco" style="font-weight:bold;background:#00FFFF;color:black;border-radius: 20px;position:absolute;widht:80px;height:25px;left:60%;margin-left:-200px; padding-bottom:30px;border-style:solid;border-width:1px;">
		Fale Conosco
	</a>
<br>
<br>
 <%@ include file="../footer.jsp" %>	


</body>
</html>

































<c:forEach items="${postos}" var="posto">
			<div class="div1">
				<div class="Posto1">
					<div class="imagem1">
						<img class="imagem"
							src="https://site.zuldigital.com.br/blog/wp-content/uploads/2020/09/shutterstock_339529217_Easy-Resize.com_.jpg"
							height="75px" width="90px">
					</div>
<!-- 					<ul class="avaliacao"> -->
<!-- 						<li class="star-icon ativo" data-avaliacao="1"></li> -->
<!-- 						<li class="star-icon ativo" data-avaliacao="2"></li> -->
<!-- 						<li class="star-icon ativo" data-avaliacao="3"></li> -->
<!-- 						<li class="star-icon ativo" data-avaliacao="4"></li> -->
<!-- 						<li class="star-icon" data-avaliacao="5"></li> -->
<!-- 					</ul> -->
					<div class="texto">
						<b class="ze">${posto.getNomePosto()}</b>
						<h2 class="ze1">Endereço: ${posto.getEndereco()}</h2>
					    <h2 class="ze1">Nome dono :${posto.getNomeDono()}</h2>
					    <h2 class="ze1">Email: ${posto.getEmail()}</h2>
					    <h2 class="ze1">Valor: ${posto.getValorCombustivel()}</h2>
					    <h2 class="ze1">Bandeira: ${posto.getBandeira()}</h2>
					     <h2 class="ze1">Serviços: ${posto.getServicos()}</h2>
					     <h2 class="ze1">CNPJ :${posto.getCnpj()}</h2>
					</div>
				</div>
			</div>
			<div id="modal-Posto1" class="modal-container">

	</div>
		</c:forEach>