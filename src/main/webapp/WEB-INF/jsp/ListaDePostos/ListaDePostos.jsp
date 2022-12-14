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
    <title>InfoPosto</title>
  </head>

  <!--conteudo-->
  <body>
    <%@ include file="../menu-admin.jsp" %>
        	<div>
			<h1 style= "text-align: center; color: black;">Lista de postos</h1>
			<br>
			<br>
			<br>
			<br>
			
		 
	<%
		List<Posto> p = ListaAction.getAll();
		request.setAttribute("postos", p);
		%>

		<h1>${posto.getNomeDono()}</h1>
		

		<c:forEach items="${postos}" var="posto">
			<div class="div1" style="margin-top: -60px">
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
						<b class="ze" style="font-weight: bold; font-size:21px;">${posto.getNomePosto()}</b>
						<h2 class="ze1">Endereço: ${posto.getEndereco()}</h2>
					    <h2 class="ze1">Nome dono :${posto.getNomeDono()}</h2>
					    <h2 class="ze1" style="margin-left: 109px;">Email: ${posto.getEmail()}</h2>
					    <h2 class="ze1" style="margin-left: 109px;">Valor do Combustivel: R$${posto.getValorCombustivel()}</h2>
					    <h2 class="ze1" style="margin-left: 109px;">Bandeira: ${posto.getBandeira()}</h2>
					    <h2 class="ze1" style="margin-left: 109px;">Serviços: ${posto.getServicos()}</h2>
					    <h2 class="ze1" style="margin-left: 109px;">CNPJ :${posto.getCnpj()}</h2>
					    <% 
					    Admin = (String)request.getSession().getAttribute("Admin"); 
	                    //Remove '@' 
	                    if (Admin == "S") 
	                    {  
                		%> 
                		<a href="/infoposto/web?action=ExcluirPostoWEB&codigo=${posto.getCnpj()}"><button style="height: 25px;width: 10%; color: black;font-weight: bold;margin-bottom: 25px; background: #00D3AD; border-radius: 10px;cursor: pointer;">Excluir</button></a>
					    <a href="/infoposto/web?action=AlterarPosto&codigo=${posto.getCnpj()}"><button style="height: 25px;width: 10%; color: black;font-weight: bold;margin-bottom: 25px; background: #00D3AD; border-radius: 10px;float:right;cursor: pointer;">Alterar</button></a>
                		<% } 
                			%>
					 </div>
				</div>
			</div>
			<div id="modal-Posto1" class="modal-container">

	</div>
		</c:forEach>
   </div>

	<%@ include file="../footer.jsp"%>
  </body>

</html>