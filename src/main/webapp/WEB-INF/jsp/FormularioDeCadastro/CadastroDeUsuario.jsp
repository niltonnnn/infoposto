<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>InfoPosto-cadastro</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="IMG/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="css-formulariocadastro/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css-formulariocadastro/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css-formulariocadastro/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="css-formulariocadastro/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="css-formulariocadastro/css/util.css">
	<link rel="stylesheet" type="text/css" href="css-formulariocadastro/css/main.css">
	</head>
	
<body>


<!DOCTYPE html>
<html lang="en">

<div id="area-cabecalho">
		<div id="area-logo">
			<h1 href="file:///C:/Users/npalmeira/TCCFIEB/TCC/home/home.html">Info<span class="branco">Posto</span></h1>
		</div>
		<div id="area-menu">
			<a href="file:///Z:/TCCFIEB/InfoPosto/TCC/home/home.html">Home</a>
			<a href="file:///C:/Users/npalmeira/TCCFIEB/TCC/blog/Tec_Blog-main/blog.html">Blog</a>
			<a href="file:///C:/Users/npalmeira/TCCFIEB/TCC/Login/login.html">Login</a>
			<a href="file:///C:/Users/npalmeira/TCCFIEB/TCC/formulario/formulario.html">Cadastre-se</a>
			<a href="file:///Z:/TCCFIEB/InfoPosto/TCC/Faleconosco/ajuda.html">Fale Conosco</a>
		</div>
</div>

<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="https://cdn-icons-png.flaticon.com/512/753/753399.png" alt="IMG">
				</div>
				<form class="login100-form validate-form">
					<span class="login100-form-title">
						Cadastre-se!
					</span>
					<div class="wrap-input100 validate-input" data-validate = "Digite seu nome">
						<input class="input100" type="text" name="nome" placeholder="Nome">
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Digite um email válido: ex:fulano@hotmail.com">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Senha obrigadoria">
						<input class="input100" type="password" name="pass" placeholder="Senha">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Senha diferente da de cima">
							<input class="input100" type="password" name="pass" placeholder="Confirme sua senha">
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
						<a class="txt2" href="file:///Z:/TCCFIEB/InfoPosto/TCC/Tela%20de%20login/index.html#">
							Já possue cadastro? Faça login!
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
	<script src="js/main.js"></script>


	<footer>
			<div class="container-footer">
				<div class="row-footer">
					<!-- footer col-->
					<div class="footer-col">
						<h4>Empresa</h4>
						<ul>
							<li><a href=""> Quem somos </a></li>
							<li><a href=""> Nossos serviços </a></li>
							<li><a href=""> política de privacidade </a></li>
							<li><a href=""> Nossos Parceiros</a></li>
						</ul>
					</div>
					<!--end footer col-->
					<!-- footer col-->
					<div class="footer-col">
						<h4>Obter ajuda</h4>
						<ul>
							<li><a href="#">Fale Conosco</a></li>
							<li><a href="https://petrobras.com.br/pt/nossas-atividades/composicao-de-precos-de-venda-ao-consumidor/">Entenda a politica de preço da Petrobrás</a></li>
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
							<a href="https://www.linkedin.com/login/pt"><img src="img/linkedin.png.png" alt=""> </a>
							<a href="https://www.facebook.com/"><img src="img/face.png.png"></a>
						</div>
	
					</div>
				</div>
			</div>
		</footer>

</body>
</html>
	

</body>

</html>