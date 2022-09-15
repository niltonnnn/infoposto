
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/css-blog/home.css">
    <title>TecBlog - Seu Blog de Tecnologia</title>
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

    <div id="area-principal">
        <!-- abertura de postagem -->
        <div class="area-postagens">
            <div class="postagem">
                <h2>Gasolina</h2>
                <span class="data-postagem">postado em 22 de  de 2022</span>
                <img width="620px" src="https://s2.glbimg.com/dy4yJcDtgKOkIHGKJwgMZL831xY=/0x0:1284x721/1000x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2022/v/S/BIC9gdTKGg0XCt0gqYIQ/combustivel4.jpg" alt="">
                <p>
                    Preço do etanol tem alta de quase 5% nos postos; litro do diesel também avança, segundo ANP     
                </p>
                <a href="https://g1.globo.com/economia/noticia/2022/04/26/preco-do-etanol-tem-forte-alta-nos-postos-litro-do-diesel-tambem-avanca-segundo-anp.ghtml">Leia mais</a>
            </div> 
        </div>
        <!-- fechamento de postagem -->

        <div id="area-lateral">
            <div class="conteudo-lateral">
                <h3>Postagens recentes</h3>
                <div class="texto-lateral">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <a href="">Leia mais</a>
                </div>
                <hr>
                <div class="texto-lateral">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <a href="">Leia mais</a>
                </div>
            </div>

            <div class="conteudo-lateral">
                <h3>Categorias</h3>
                <div class="categorias">
                    
                    <a href="">Jogos</a><br>
                    <a href="">Celulares</a><br>
                    <a href="">Informática</a><br>
                    <a href="">Eletrônicos</a><br>

                </div>                
            </div>
        </div>

        <!-- abertura de postagem -->
        <div class="area-postagens">
            <div class="postagem">
                <h2>Título da Postagem 2</h2>
                <span class="data-postagem">postado em 01 de março de 2022</span>
                <img width="620px" src="IMG/imagens/imagem5.jpg" alt="">
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br>
                </p>
                <a href="">Leia mais</a>
            </div> 
        </div>
        <!-- fechamento de postagem -->

    </div>

    <div id="rodape">
        Todos os Direitos Reservados
    </div>
    
</body>

</html>