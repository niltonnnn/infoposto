<%@ page language="java" contentType="text/html;  charset=UTF-8;"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>InfoPosto - Alteração</title>
		
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

<%@ include file="../menu-admin.jsp" %>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="https://cdn-icons-png.flaticon.com/512/753/753399.png" alt="IMG">
				</div>
				<form class="login100-form validate-form" method = "post" action="${pageContext.request.contextPath}/AlteraUsuarioAction">
					<span class="login100-form-title">
						Alterar usuario
					</span>
					<input class="input100" type="text" value="${usuario.getId()}" name="id" placeholder="Nome" required style = "display:none;">
					<div class="wrap-input100 validate-input" data-validate = "Digite seu nome">
						<input class="input100" type="text" value="${usuario.getNome()}" name="nome" placeholder="Nome" required>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Digite um email válido: ex:fulano@hotmail.com">
						<input class="input100" type="text" value="${usuario.getEmail()}" name="email" placeholder="Email" required>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Senha obrigadoria">
						<input class="input100" type="text" value="${usuario.getSenha()}" name="senha" placeholder="Senha" required>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="gender-inputs">
                        <div class="gender-title" style="text-align:center;">
                           
                        </div>
                        <div class="gender-group" id="admin" disabled style="display:none;">
                            <select  class="form-control selectpicker" name="admin">
                                <option value="${usuario.getTipoUsuario()}">Sim</option>
                                <option value="${usuario.getTipoUsuario()}">Não</option>
                              </select>
                         </div>
                    </div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Alterar
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