<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="CSS/css-Lista/css/styles.css">
    	<title>InfoPosto</title>
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
    </script>
	</head>
	
<body>

<div id="area-cabecalho">
  <div id="area-logo">
      <h1 href="http://localhost:8080/infoposto/web?action=HomeAction">Info<span class="branco">Posto</span></h1>
  </div>
  <div id="area-menu">
      <a href="/infoposto/web?action=HomeAction">Home</a>
      <a href="/infoposto/web?action=FrmBlogAction">Blog</a>
      <a href="/infoposto/web?action=FrmLoginAction">Login</a>
      <a href="/infoposto/web?action=FrmCadastroUsuario">Cadastre-se</a>
      <a href="/infoposto/web?action=FrmFaleConosco">Fale Conosco</a>
  </div>
</div>

<body>
  <div>
    <p class="titulo"><b>Lista de Postos</b></p>
  </div>

  <div class="div1">
    <div class="imagem1"><img class="imagem" src="https://th.bing.com/th/id/R.ec64b7320040023ec5958697d663b545?rik=5c9S7VvCae90eg&pid=ImgRaw&r=0" height="75px" width="90px" ></div>
    <ul class="avaliacao">
      <li class="star-icon ativo" data-avaliacao="1"></li>
      <li class="star-icon" data-avaliacao="2"></li>
      <li class="star-icon" data-avaliacao="3"></li>
      <li class="star-icon" data-avaliacao="4"></li>
      <li class="star-icon" data-avaliacao="5"></li>
    </ul>
    <div class="texto" >
      <b class="ze">Posto do seu zé</b>
      <p class="ze1">Rua jardim belval</p>
    </div>
   
    <hr>

    <div>
      <div class="imagem1"><img class="imagem" src="https://th.bing.com/th/id/R.ec64b7320040023ec5958697d663b545?rik=5c9S7VvCae90eg&pid=ImgRaw&r=0" height="75px" width="90px" ></div>
      <ul class="avaliacao">
        <li class="star-icon ativo" data-avaliacao="1"></li>
        <li class="star-icon" data-avaliacao="2"></li>
        <li class="star-icon" data-avaliacao="3"></li>
        <li class="star-icon" data-avaliacao="4"></li>
        <li class="star-icon" data-avaliacao="5"></li>
      </ul>  
      <div class="texto" >
          <b class="ze">Posto do seu zé</b>
          <p class="ze1">Rua jardim belval</p>
        </div>
    </div>
    
        <hr>

        <div>
          <div class="imagem1"><img class="imagem" src="https://th.bing.com/th/id/R.ec64b7320040023ec5958697d663b545?rik=5c9S7VvCae90eg&pid=ImgRaw&r=0" height="75px" width="90px" ></div>
          <ul class="avaliacao">
            <li class="star-icon ativo" data-avaliacao="1"></li>
            <li class="star-icon" data-avaliacao="2"></li>
            <li class="star-icon" data-avaliacao="3"></li>
            <li class="star-icon" data-avaliacao="4"></li>
            <li class="star-icon" data-avaliacao="5"></li>
          </ul>  
          <div class="texto" >
              <b class="ze">Posto do seu zé</b>
              <p class="ze1">Rua jardim belval</p>
            </div>
          </div>

  </div>

</body>

</html>
</body>
</html>