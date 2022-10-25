<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@page import="br.edu.itb.academico.model.Posto,java.util.*"%>
<%@page import="br.edu.itb.academico.actions.*"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/CSS-ListaPosto/CadastroDePosto.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<title>InfoPosto</title>
</head>

<!--conteudo-->
<body>
	<div id="area-cabecalho">
		<div id="area-logo">
			<h1 href="/infoposto/web?action=HomeAction">
				Info<span class="branco">Posto</span>
			</h1>
		</div>
		<div id="area-menu">
			<a href="/infoposto/web?action=HomeAction">Home</a> <a
				href="/infoposto/web?action=FrmBlogAction">Blog</a> <a
				href="/infoposto/web?action=FrmLoginAction">Login</a> <a
				href="/infoposto/web?action=FrmCadastroUsuario">Cadastre-se</a> <a
				href="/infoposto/web?action=FrmFaleConosco">Fale Conosco</a>
		</div>
	</div>

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


         <div class="Posto2"> 
          <div class="imagem1"><img class="imagem" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIhtRmaQ6q4SFZ_Aw8sZf7W7k7GZp9OQbJ90yXi9aQKe1HdVv9ZROKMazNCj4BhOkBC7Y&usqp=CAU" height="75px" width="90px" ></div>
           <ul class="avaliacao"> 
            <li class="star-icon ativo" data-avaliacao="1"></li> 
             <li class="star-icon" data-avaliacao="2"></li> 
            <li class="star-icon" data-avaliacao="3"></li> 
             <li class="star-icon" data-avaliacao="4"></li> 
             <li class="star-icon" data-avaliacao="5"></li> 
           </ul>   
           <div class="texto" > 
              <b class="ze">Posto do seu zé</b> 
               <h2 class="ze1">Rua jardim belval</h2> 
             </div> 
         </div> 
         <hr> 
         <div class="Posto3"> 
             <div class="imagem1"><img class="imagem" src="https://1.bp.blogspot.com/-9Wfse3pzmGs/W8VWT6uIQ0I/AAAAAAABsjY/mMncLwwI4sQs2jLKvVqcIiMNN3hFVPlawCLcBGAs/s1600/ale%2B1.jpg" height="75px" width="90px" ></div>
             <ul class="avaliacao"> 
                 <li class="star-icon ativo" data-avaliacao="1"></li> 
                 <li class="star-icon" data-avaliacao="2"></li> 
                 <li class="star-icon" data-avaliacao="3"></li> 
                 <li class="star-icon" data-avaliacao="4"></li> 
                 <li class="star-icon" data-avaliacao="5"></li> 
             </ul>   
             <div class="texto" > 
                 <b class="ze">Posto do seu zé</b> 
                 <h2 class="ze1">Rua jardim belval</h2> 
             </div> 
         </div> 
         <hr> 
         <div class="Posto4"> 
             <div class="imagem1"><img class="imagem" src="https://sbvc.com.br/wp-content/uploads/2022/04/R.jpg" height="75px" width="90px" ></div> 
             <ul class="avaliacao"> 
                 <li class="star-icon ativo" data-avaliacao="1"></li>
                <li class="star-icon" data-avaliacao="2"></li> 
                 <li class="star-icon" data-avaliacao="3"></li> 
                 <li class="star-icon" data-avaliacao="4"></li> 
                 <li class="star-icon" data-avaliacao="5"></li> 
             </ul>   
             <div class="texto" > 
                 <b class="ze">Posto do seu zé</b> 
                 <h2 class="ze1">Rua jardim belval</h2> 
             </div> 
         </div> 
         <hr> 
         <div class="Posto5"> 
             <div class="imagem1"><img class="imagem" src="https://site.zuldigital.com.br/blog/wp-content/uploads/2020/09/shutterstock_339529217_Easy-Resize.com_.jpg" height="75px" width="90px" ></div> 
             <ul class="avaliacao"> 
                 <li class="star-icon ativo" data-avaliacao="1"></li> 
                 <li class="star-icon ativo" data-avaliacao="2"></li> 
                 <li class="star-icon ativo" data-avaliacao="3"></li> 
                 <li class="star-icon ativo" data-avaliacao="4"></li> 
                <li class="star-icon" data-avaliacao="5"></li> 
             </ul> 
         <div class="texto" > 
           <b class="ze">Posto do seu zé</b> 
           <h2 class="ze1">Rua jardim belval</h2> 
         </div> 
         </div> 
       </div> 

		<!-- Butao de cadastro -->
		<div>
			<a class="butaoo" href="/infoposto/web?action=FrmCadastroDePosto">
				<button class="butao">Cadastre seu posto</button>
			</a>
		</div>
	</div>
	<!-- POPUP -->

	

	<div id="modal-Posto2" class="modal-container">
		<div class="modal">
			<button class="fechar">X</button>
			<div class="imagem1">
				<img class="imagem"
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIhtRmaQ6q4SFZ_Aw8sZf7W7k7GZp9OQbJ90yXi9aQKe1HdVv9ZROKMazNCj4BhOkBC7Y&usqp=CAU"
					height="90px" width="130px">
			</div>
			<ul class="avaliacao">
				<li class="star-icon ativo" data-avaliacao="1"></li>
				<li class="star-icon" data-avaliacao="2"></li>
				<li class="star-icon" data-avaliacao="3"></li>
				<li class="star-icon" data-avaliacao="4"></li>
				<li class="star-icon" data-avaliacao="5"></li>

			</ul>
			<button class="valor">Gasolina R$ 5.50</button>
			<button class="valor1">Etanol R$ 5.00</button>
			<div class="texto">
				<b class="ze">Posto do seu zé</b> <a
					href="https://petrobras.com.br/pt/"><img class="Marca"
					src="https://marca.petrobras.com.br/data/files/BB/D0/E8/6D/1B86F3102F333DE3FAA2D9A8/Principal_v_cor_RGB.gif"
					width="40px" height="30px"></a>
				<h2 class="ze1">Rua jardim belval</h2>

			</div>
			<hr>
			<ul class="">
				<iframe class="mapa"
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58528.344946130026!2d-46.94597482681276!3d-23.531726982886298!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cf010a298f663b%3A0x73313192e984e8cc!2sPosto%20Petrobras!5e0!3m2!1spt-BR!2sbr!4v1664378900224!5m2!1spt-BR!2sbr"
					width="50%" height="180" frameborder="0" style="border: 2px;"
					allowfullscreen=""></iframe>
				<li><p>
						<i class="material-icons">shopping_cart_checkout</i> Mercado
					</p></li>
				<li><p>
						<i class="material-icons">sanitizer</i> Lava Rápido
					</p></li>
				<li><p>
						<i class="material-icons">car_repair</i> Mecânica
					</p></li>

			</ul>
		</div>
	</div>

	<div id="modal-Posto3" class="modal-container">
		<div class="modal">
			<button class="fechar">X</button>
			<div class="imagem1">
				<img class="imagem"
					src="https://1.bp.blogspot.com/-9Wfse3pzmGs/W8VWT6uIQ0I/AAAAAAABsjY/mMncLwwI4sQs2jLKvVqcIiMNN3hFVPlawCLcBGAs/s1600/ale%2B1.jpg"
					height="90px" width="130px">
			</div>
			<ul class="avaliacao">
				<li class="star-icon ativo" data-avaliacao="1"></li>
				<li class="star-icon" data-avaliacao="2"></li>
				<li class="star-icon" data-avaliacao="3"></li>
				<li class="star-icon" data-avaliacao="4"></li>
				<li class="star-icon" data-avaliacao="5"></li>

			</ul>
			<button class="valor">Gasolina R$ 5.50</button>
			<button class="valor1">Etanol R$ 5.00</button>
			<div class="texto">
				<b class="ze">Posto do seu zé</b> <a href="https://www2.ale.com.br/"><img
					class="Marca"
					src="https://seeklogo.com/images/P/Postos_ALE-logo-B95C5CA66B-seeklogo.com.png"
					width="25px" height="25px"></a>
				<h2 class="ze1">Rua jardim belval</h2>

			</div>
			<hr>
			<ul class="">
				<iframe class="mapa"
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58528.344946130026!2d-46.94597482681276!3d-23.531726982886298!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cf010a298f663b%3A0x73313192e984e8cc!2sPosto%20Petrobras!5e0!3m2!1spt-BR!2sbr!4v1664378900224!5m2!1spt-BR!2sbr"
					width="50%" height="180" frameborder="0" style="border: 2px;"
					allowfullscreen=""></iframe>
				<li><p>
						<i class="material-icons">shopping_cart_checkout</i> Mercado
					</p></li>
				<li><p>
						<i class="material-icons">sanitizer</i> Lava Rápido
					</p></li>
				<li><p>
						<i class="material-icons">car_repair</i> Mecânica
					</p></li>

			</ul>
		</div>
	</div>

	<div id="modal-Posto4" class="modal-container">
		<div class="modal">
			<button class="fechar">X</button>
			<div class="imagem1">
				<img class="imagem"
					src="https://sbvc.com.br/wp-content/uploads/2022/04/R.jpg"
					height="80px" width="130px">
			</div>
			<ul class="avaliacao">
				<li class="star-icon ativo" data-avaliacao="1"></li>
				<li class="star-icon" data-avaliacao="2"></li>
				<li class="star-icon" data-avaliacao="3"></li>
				<li class="star-icon" data-avaliacao="4"></li>
				<li class="star-icon" data-avaliacao="5"></li>

			</ul>
			<button class="valor">Gasolina R$ 5.50</button>
			<button class="valor1">Etanol R$ 5.00</button>
			<div class="texto">
				<b class="ze">Posto do seu zé</b> <a
					href="https://www.shell.com.br/shellenergy.html?gclid=CjwKCAjw4c-ZBhAEEiwAZ105RaQZQtPN6dIr8yhWRYplKOX0fhJECagJbap57r9cma0edLNKYlHgDxoCyq4QAvD_BwE"><img
					class="Marca"
					src="https://d2d22nphq0yz8t.cloudfront.net/cd4f1ae6-7584-401d-8bd2-53ae0f9d6d8c/https://portal.ipiranga/wps/contenthandler/dav/fs-type1/themes/ipiranga.ipirangaV32.theme/assets/img/logo_ipiranga.png/mxw_1440,f_auto"
					width="60px" height="20px"></a>
				<h2 class="ze1">Rua jardim belval</h2>

			</div>
			<hr>
			<ul class="">
				<iframe class="mapa"
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58528.344946130026!2d-46.94597482681276!3d-23.531726982886298!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cf010a298f663b%3A0x73313192e984e8cc!2sPosto%20Petrobras!5e0!3m2!1spt-BR!2sbr!4v1664378900224!5m2!1spt-BR!2sbr"
					width="50%" height="180" frameborder="0" style="border: 2px;"
					allowfullscreen=""></iframe>
				<li><p>
						<i class="material-icons">shopping_cart_checkout</i> Mercado
					</p></li>
				<li><p>
						<i class="material-icons">sanitizer</i> Lava Rápido
					</p></li>
				<li><p>
						<i class="material-icons">car_repair</i> Mecânica
					</p></li>

			</ul>
		</div>
	</div>

	<div id="modal-Posto5" class="modal-container">
		<div class="modal">
			<button class="fechar">X</button>
			<div class="imagem1">
				<img class="imagem"
					src="https://site.zuldigital.com.br/blog/wp-content/uploads/2020/09/shutterstock_339529217_Easy-Resize.com_.jpg"
					height="90px" width="130px">
			</div>
			<ul class="avaliacao">
				<li class="star-icon ativo" data-avaliacao="1"></li>
				<li class="star-icon" data-avaliacao="2"></li>
				<li class="star-icon" data-avaliacao="3"></li>
				<li class="star-icon" data-avaliacao="4"></li>
				<li class="star-icon" data-avaliacao="5"></li>

			</ul>
			<button class="valor">Gasolina R$ 5.50</button>
			<button class="valor1">Etanol R$ 5.00</button>
			<div class="texto">
				<b class="ze">Posto do seu zé</b> <a
					href="https://www.shell.com.br/shellenergy.html?gclid=CjwKCAjw4c-ZBhAEEiwAZ105RaQZQtPN6dIr8yhWRYplKOX0fhJECagJbap57r9cma0edLNKYlHgDxoCyq4QAvD_BwE"><img
					class="Marca"
					src="https://logodownload.org/wp-content/uploads/2014/07/shell-logo-0.png"
					width="25px" height="25px"></a>
				<h2 class="ze1">Rua jardim belval</h2>

			</div>
			<hr>
			<ul class="">
				<iframe class="mapa"
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58528.344946130026!2d-46.94597482681276!3d-23.531726982886298!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cf010a298f663b%3A0x73313192e984e8cc!2sPosto%20Petrobras!5e0!3m2!1spt-BR!2sbr!4v1664378900224!5m2!1spt-BR!2sbr"
					width="50%" height="180" frameborder="0" style="border: 2px;"
					allowfullscreen=""></iframe>
				<li><p>
						<i class="material-icons">shopping_cart_checkout</i> Mercado
					</p></li>
				<li><p>
						<i class="material-icons">sanitizer</i> Lava Rápido
					</p></li>
				<li><p>
						<i class="material-icons">car_repair</i> Mecânica
					</p></li>
				<li><p>
						<i class="material-icons">electric_car</i> Carregador para carro
						elêtrico
					</p></li>

			</ul>
		</div>
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