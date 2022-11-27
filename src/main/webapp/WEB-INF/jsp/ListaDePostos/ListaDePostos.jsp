<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <div id="area-cabecalho">
        <div id="area-logo">
            <h1 href="http://localhost:8080/infoposto/web?action=HomeAction">Info<span class="branco">Posto</span></h1>
        </div>
        <div id="area-menu">
            <a href="">Cadastrar posto</a>
            <a href="">Cadastrar serviço</a>
            <a href="">Cadastrar bandeira</a>
            <a href="">Mensagens</a>
            <a href="">Sair</a>
<!--             <a href="/infoposto/web?action=FrmFaleConosco">Fale Conosco</a> -->
        </div>
    </div>

    <div>
        	<div>
		<p class="titulo">
			<b>Lista de Postos</b>
		</p>
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
					<ul class="avaliacao">
						<li class="star-icon ativo" data-avaliacao="1"></li>
						<li class="star-icon ativo" data-avaliacao="2"></li>
						<li class="star-icon ativo" data-avaliacao="3"></li>
						<li class="star-icon ativo" data-avaliacao="4"></li>
						<li class="star-icon" data-avaliacao="5"></li>
					</ul>
					<div class="texto">
						<b class="ze">${posto.getNomePosto()}</b>
						<h2 class="ze1">${posto.getEndereco()}</h2>
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