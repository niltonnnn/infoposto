<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri= "http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="CSS/css-teladecadastro/cadastro.css">
    <title>InfoPosto</title>
    <link href="css-teladecadastro/botstrapp.css" rel="stylesheet">
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
    <div>
        <p class="titulo"><b>Cadastre seu posto!</b></p>
      </div>

      <div class="butaoo">
        <button class="butao" type="submit"><b class="texto"><input type="file"></b></button>
      </div>

      <div class="formulario">
        <h4 class="mb-3">Endereço de cobrança</h4>
        <form class="needs-validation" novalidate>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="primeiroNome">Nome</label>
              <input type="text" class="form-control" id="primeiroNome" placeholder="" value="" required>
              <div class="invalid-feedback">
                É obrigatório inserir um nome válido.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="sobrenome">Sobrenome</label>
              <input type="text" class="form-control" id="sobrenome" placeholder="" value="" required>
              <div class="invalid-feedback">
                É obrigatório inserir um sobre nome válido.
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="nickname">Nickname</label>
            <div class="input-group">
              <div class="input-group-prepend">
                <span class="input-group-text">@</span>
              </div>
              <input type="text" class="form-control" id="nickname" placeholder="Nickname" required>
              <div class="invalid-feedback" style="width: 100%;">
                Seu nickname é obrigatório.
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="email">Email <span class="text-muted">(Opcional)</span></label>
            <input type="email" class="form-control" id="email" placeholder="fulano@exemplo.com">
            <div class="invalid-feedback">
              Por favor, insira um endereço de e-mail válido, para atualizações de entrega.
            </div>
          </div>

          <div class="mb-3">
            <label for="endereco">Endereço</label>
            <input type="text" class="form-control" id="endereco" placeholder="Rua dos bobos, nº 0" required>
            <div class="invalid-feedback">
              Por favor, insira seu endereço de entrega.
            </div>
          </div>

          <div class="mb-3">
            <label for="endereco2">Endereço 2 <span class="text-muted">(Opcional)</span></label>
            <input type="text" class="form-control" id="endereco2" placeholder="Apartamento ou casa">
          </div>

          <div class="row">
            <div class="col-md-5 mb-3">
              <label for="pais">País</label>
              <select class="custom-select d-block w-100" id="pais" required>
                <option value="">Escolha...</option>
                <option>Brasil</option>
  
              </select>
              <div class="invalid-feedback">
                Por favor, escolha um país válido.
              </div>
            </div>
            <div class="col-md-4 mb-3">
              <label for="estado">Estado</label>
              <select class="custom-select d-block w-100" id="estado" required>
                <option value="">Escolha...</option>
                <option>Acre</option>
              
              </select>
              <div class="invalid-feedback">
                Por favor, insira um estado válido.
              </div>
            </div>
            <div class="col-md-3 mb-3">
              <label for="cep">CEP</label>
              <input type="text" class="form-control" id="cep" placeholder="" required>
              <div class="invalid-feedback">
                É obrigatório inserir um CEP.
              </div>
            </div>
          </div>
          <hr class="mb-4">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="mesmo-endereco">
            <label class="custom-control-label" for="mesmo-endereco">Endereço de entrega é o mesmo que o de cobrança.</label>
          </div>
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="salvar-info">
            <label class="custom-control-label" for="salvar-info">Lembrar desta informação, na próxima vez.</label>
          </div>
          <hr class="mb-4">
          
        </form>
        <div class="butaoo">
          <form>
            <button type="submit" class="btn btn-primary">Enviar</button>
          </form>
        </div>
      </div>
      
      
</body>