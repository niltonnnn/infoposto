<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri= "http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="CSS/css-home/home.css">
    <link rel="stylesheet" type="text/css" href="CSS/css-home/slick.css" />
    <title>InfoPosto</title>
</head>

<body>
        <%@ include file="../menu.jsp" %>

    <div class="col-100">
        <div class="slider-principal">
            <!--<img src="./img/imagem-principal1.jpg" />
            <img src="./img/imagem-principal2.jpg" /> -->
            <img style="height:30vw" src="IMG/img-home/posto_home2.jpg" />
        </div>
    </div>

    <main>
    <div class="col-100">
        <div class="content texto-destaque">

            <main>
                <ul class="produtos">
                    <li style="height:30vw">
                        <h2><b>Desconto</b></h2>
                        <img src="IMG/img-home/desconto.png">
                        <p class="produto-descricao"><b>Ganhe Desconto</b></p>
                        <p class="produto-descricao1">Ao baixar e instalar o nosso app, avaliando o atendimento do posto tem direito a 5% de desconto</p>
                    </li>
                    <li style="height:30vw">
                        <h2>Noticias</h2>
                        <img src="https://cdn-icons-png.flaticon.com/512/2495/2495007.png" height="220px">
                        <p class="produto-descricao"><b>Noticias Diarias</b></p>
                        <p class="produto-descricao1">Aqui no InfoPosto você fica por dentro de tudo o que acontece no mercado de petroleo, desde a cotação do barril de petroleo, Noticias em gerais que possam te impactar no seu dia a dia.</p>
                    </li>
                    <li style="height:30vw">
                        <h2>Faça Parte!</h2>
                        <img src="https://cdn-icons-png.flaticon.com/512/1006/1006657.png" height="220px">
                        <p class="produto-descricao1"><b>Cadastre seu Posto</b></p>
                        <p class="produto-preco">Tem um posto de gasolina ou conhece alguém que possua? Cadastre e venha fazer parte da equipe de postos do InfoPosto.</p>
                    </li>
                </ul>
            </main>

        </div>
    </div>

        <section class="mapa">
				<h2 class="titulo-principal">Nossos Parceiros</h2>
				<p class="texto-mapa">Diversos postos proximo a vocï¿½!</p>

				<div class="mapa-conteudo">
				<iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d117075.80907475454!2d-46.952562912089455!3d-23.51022771514106!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1spostos%20de%20gasolina%20em%20barueri!5e0!3m2!1spt-BR!2sbr!4v1650071393908!5m2!1spt-BR!2sbr" width="100%" height="300" frameborder="0" style="border: 2px;" allowfullscreen=""></iframe>
		
        </section>
    </main>
        <section class="mapa">
        <h3 class="titulo-principal">.</h3>
    </section>
    
<%@ include file="../footer.jsp" %>
        
        
    <script type="text/javascript" src="./js/jquery.js"></script>
    <script type="text/javascript" src="./js/jquery-migrate.js"></script>
    <script type="text/javascript" src="./js/slick.min.js"></script>
    <script type="text/javascript" src="./js/main.js"></script>
</body>

</html>
