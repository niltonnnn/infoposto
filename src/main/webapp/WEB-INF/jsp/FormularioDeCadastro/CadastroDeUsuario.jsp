<%@ page language="java" contentType="text/html;  charset=UTF-8;"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>InfoPosto - Cadastro</title>
		
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="IMG/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="CSS/css-formulariocadastro/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="CSS/css-formulariocadastro/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="CSS/css-formulariocadastro/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="CSS/css-formulariocadastro/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="CSS/css-formulariocadastro/css/util.css">
	<link rel="stylesheet" type="text/css" href="CSS/css-formulariocadastro/css/main.css">
	</head>
	
<body>


<!DOCTYPE html>
<html lang="en">

<%@ include file="../menu.jsp" %>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="https://cdn-icons-png.flaticon.com/512/753/753399.png" alt="IMG">
				</div>
				<form class="login100-form validate-form" method = "post" action="${pageContext.request.contextPath}/CadastrarUsuarioAction">
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
						<input class="input100" type="password" name="senha" placeholder="Senha">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Cadastrar
						</button>
					</div>
<!-- 					<div class="text-center p-t-12"> -->
<!-- 						<span class="txt1"> -->
<!-- 							Esqueceu seu -->
<!-- 						</span> -->
<!-- 						<a class="txt2" href="#"> -->
<!-- 							Email / Senha? -->
<!-- 						</a> -->
<!-- 					</div> -->
					<div class="text-center p-t-136">
						<a class="txt2" href="/infoposto/web?action=FrmLoginAction">
							Já possue cadastro? Faça login!
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>

	
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
	<script src="js/main.js"></script>


	<%@ include file="../footer.jsp" %>
</html>
	

</body>

</html>