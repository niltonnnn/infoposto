<%@ page language="java" contentType="text/html;  charset=UTF-8;"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>InfoPosto - Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
</head>
   <%@ include file="../menu.jsp" %>
 
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="https://cdn-icons-png.flaticon.com/512/5087/5087579.png" alt="IMG">
				</div>
				<form class="login100-form validate-form" method="post" action="${pageContext.request.contextPath}/LoginAction">
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
						<input class="input100" type="password" name="senha" placeholder="Senha">
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
						<a class="txt2" href="/infoposto/web?action=FrmCadastroUsuario">
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

<%@ include file="../footer.jsp" %>

</body>
</html>