<%@ page language="java" contentType="text/html;  charset=UTF-8;"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri= "http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
    <%@page import="br.edu.itb.academico.model.Posto,java.util.*"%>
<%@page import="br.edu.itb.academico.actions.*"%>

<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="CSS/CSS-ListaPosto/CadastroDePosto.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>InfoPosto</title>
  </head>

  <!--conteudo-->
  <body>
    <%@ include file="../menu-admin.jsp" %>
		  
		<%
		List<Posto> p = ListaAction.getAll();
		request.setAttribute("postos", p);
		%>

	<div class="container">
	<div class="row">
		<div class="cold-md-15">
			<hr>
			<h3>Postos Cadastrados</h3>
			<hr>
			<table class="table" style="text-align:center;">
				<thead>
					<tr style="background-color:#A9A9A9; font-size:14px;">
						<th>Nome do Dono:</th>
						<th>Nome do Posto:</th>
						<th>Endereço:</th>
						<th>Bairro:</th>
						<th>Telefone:</th>
						<th>Email:</th>
						<th>Valor do Combustivel(R$):</th>
						<th>Senha:</th>
						<th>Bandeira:</th>
						<th>Serviços:</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${postos}" var="posto">
							<tr>
								<td>${posto.getNomeDono()}</td>
								<td>${posto.getNomePosto()}</td>
								<td>${posto.getEndereco()}</td>
								<td>${posto.getBairro()}</td>
								<td>${posto.getNumero()}</td>
								<td>${posto.getEmail()}</td>
								<td>${posto.getValorCombustivel()}</td>
								<td>${posto.getSenhaUsuario()}</td>
								<td>${posto.getBandeira()}</td>
								<td>${posto.getServicos()}</td>
							</tr>
						</c:forEach>
				</tbody>
			</table>
			
		</div>
	</div>
</div>

<a href="/infoposto/web?action=FrmCadastroDePosto" style="font-weight:bold;background:#00FFFF;color:black;border-radius: 20px;position:absolute;widht:80px;height:25px;left:60%;margin-left:-200px; padding-bottom:30px;border-style:solid;border-width:1px;">
	Cadastrar posto
</a>

<br>
<br>
	<%@ include file="../footer.jsp"%>
  </body>

</html>