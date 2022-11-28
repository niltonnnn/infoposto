
<%@ page language="java" contentType="text/html;  charset=UTF-8;"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>InfoPosto - Fale conosco</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="icon" type="image/png" href="CSS/css-faleConosco/images/icons/favicon.ico"/>
		<link rel="stylesheet" type="text/css" href="CSS/css-faleConosco/css/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="CSS/css-faleConosco/css/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="CSS/css-faleConosco/css/vendor/animate/animate.css">
		<link rel="stylesheet" type="text/css" href="CSS/css-faleConosco/css/vendor/select2/select2.min.css">
		<link rel="stylesheet" type="text/css" href="CSS/css-faleConosco/css/util.css">
		<link rel="stylesheet" type="text/css" href="CSS/css-faleConosco/css/main.css">
	</head>
   <%@ include file="../menu.jsp" %>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="http://facewemarket.com.br/images/icon-central-07.png" alt="IMG">
				</div>
				<form action = "${pageContext.request.contextPath}/CadastrarFaleConoscoAction" method ="post" class="login100-form validate-form">
					<span class="login100-form-title">
						Fale conosco!
                    </span>
                    <div class="wrap-input100 validate-input" data-validate = "Preencha o campo com o seu nome">
						<input class="input100" type="nome" name="name" placeholder="Digite seu nome">
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Digite um email válido: ex:fulano@hotmail.com">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					<div class="">
						<input class="input1001" name="message"type="text">
						</span>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Enviar
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
	<script src="css-faleConosco/js/main.js"></script>


	<%@ include file="../footer.jsp" %>


</body>
</html>