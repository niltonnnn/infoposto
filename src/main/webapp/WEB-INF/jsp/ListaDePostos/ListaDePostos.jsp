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
        	<div>
			<h1 style= "margin:auto; width:20%">Lista de postos</h1>
			<br>
			<br>
			<br>
			<br>
		  <a href="/infoposto/web?action=FrmCadastroDePosto" style="padding-left:20vw ;font-weight:bold;">Cadastrar posto</a>
	<%
		List<Posto> p = ListaAction.getAll();
		request.setAttribute("postos", p);
		%>

		<h1>${posto.getNomeDono()}</h1>
		

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

   </div>




      <script>
         var stars = document.querySelectorAll('.star-icon');       
         document.addEventListener('click', function(e){
          var classStar = e.target.classList;
          if(!classStar.contains('ativo')){
          stars.forEach(function(star){
          star.classList.remove('ativo');
       });
          classStar.add('ativo');
          console.log(e.target.getAttribute('data-avaliacao'));
          }
		});
        
        function iniciaModal(modalId) {
            const modal = document.getElementById(modalId);
            modal.classList.add('mostrar');
            modal.addEventListener('click', (e) => {
                if(e.target.id == modalId || e.target.className ==  'fechar') {
                    modal.classList.remove('mostrar');
                }
            })
        }
        const Posto1 = document.querySelector('.Posto1');
        Posto1.addEventListener('click', () => iniciaModal('modal-Posto1'));
        const Posto2 = document.querySelector('.Posto2');
        Posto2.addEventListener('click', () => iniciaModal('modal-Posto2'));
        const Posto3 = document.querySelector('.Posto3');
        Posto3.addEventListener('click', () => iniciaModal('modal-Posto3'));
        const Posto4 = document.querySelector('.Posto4');
        Posto4.addEventListener('click', () => iniciaModal('modal-Posto4'));
        const Posto5 = document.querySelector('.Posto5');
        Posto5.addEventListener('click', () => iniciaModal('modal-Posto5'));
      </script>


	<%@ include file="../footer.jsp"%>
  </body>

</html>