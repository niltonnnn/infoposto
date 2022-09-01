<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>InfoPosto-login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="images-login/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="CSS/vendor-login/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="CSS/fonts-login/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="CSS/vendor-login/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="CSS/vendor-login/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="CSS/css-login/util.css">
	<link rel="stylesheet" type="text/css" href="CSS/css-login/main.css">
</head>

 <div id="area-cabecalho">
  		<div id="area-logo">
      		<h1 href="http://localhost:8080/infoposto/web?action=HomeAction">Info<span class="branco">Posto</span></h1>
  		</div>
  	<div id="area-menu">
      <a href="http://localhost:8080/infoposto/web?action=HomeAction">Home</a>
      <a href="http://localhost:8080/infoposto/web?action=FrmBlogAction">Blog</a>
      <a href="http://localhost:8080/infoposto/web?action=FrmLoginAction">Login</a>
      <a href="http://localhost:8080/infoposto/web?action=FrmCadastroUsuario">Cadastre-se</a>
      <a href="http://localhost:8080/infoposto/web?action=FrmFaleConosco">Fale Conosco</a>
  	</div>
	</div>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="https://cdn-icons-png.flaticon.com/512/5087/5087579.png" alt="IMG">
				</div>
				<form class="login100-form validate-form">
					<span class="login100-form-title">
						Faça seu login!
					</span>
					<div class="wrap-input100 validate-input" data-validate = "Digite um email valido: ex:fulano@hotmail.com">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Senha obrigatoria">
						<input class="input100" type="password" name="pass" placeholder="Senha">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>
					<div class="text-center p-t-12">
						<span class="txt1">
							Esqueceu seu
						</span>
						<a class="txt2" href="#">
							Email / Senha?
						</a>
					</div>
					<div class="text-center p-t-136">
						<a class="txt2" href="file:///Z:/TCCFIEB/InfoPosto/TCC/formulario/formulario.html">
							Não tem login? Faça seu cadastro!
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script src="vendor-login/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendor-login/bootstrap/js/popper.js"></script>
	<script src="vendor-login/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor-login/select2/select2.min.js"></script>
	<script src="vendor-login/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
	<script src="js-login/main.js"></script>


	<footer>
			<div class="container-footer">
				<div class="row-footer">
					<!-- footer col-->
					<div class="footer-col">
						<h4>Empresa</h4>
						<ul>
							<li><a href=""> Quem somos </a></li>
							<li><a href=""> Nossos serviços </a></li>
							<li><a href=""> Politica de privacidade </a></li>
							<li><a href=""> Nossos Parceiros</a></li>
						</ul>
					</div>
					<!--end footer col-->
					<!-- footer col-->
					<div class="footer-col">
						<h4>Obter ajuda</h4>
						<ul>
							<li><a href="#">Fale Conosco</a></li>
							<li><a href="https://precos.petrobras.com.br/">Entenda a politica de preços da Petrobras</a></li>
						</ul>
					</div>
					<div class="footer-col">
						<h4>Envie uma sugestão!</h4>
						<div class="form-sub">
							<form>
								<input type="email" placeholder="Digite aqui sua sugestão" required>
								<button>Enviar</button>
							</form>
						</div>
	
						<div class="medias-socias">
							<a href="https://www.linkedin.com/login/pt"><img src="img-home/linkedin.png.png" alt=""> </a>
							<a href="https://www.facebook.com/"><img src="img-home/face.png.png"></a>
						</div>
	
					</div>
				</div>
			</div>
		</footer>

</body>
</html>