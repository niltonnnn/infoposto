<%@ page language="java" contentType="text/html;  charset=UTF-8;"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri= "http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="CSS/css-Posto/css/CadastroDePosto.css">    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <title>InfoPosto</title>
  </head>

    <body>
         <%@ include file="../menu-admin.jsp" %>
        <div class="container">
            <div class="form-image">
                <img src="https://cdn-icons-png.flaticon.com/512/753/753399.png" alt="IMG">
            </div>
            <div class="form">
            <form method = "post" action="${pageContext.request.contextPath}/FrmAlteraPosto">
               
                    <div class="form-header">
                        <div class="title">
                            <h1 style="color: black;font-weight: bold;margin-bottom: -15px;margin-top:25px;">Atualizar Posto!</h1>
                        </div>
                    </div>
    
                    <div class="input-group">
                        <div class="input-box">
                            <label for="nomeposto">Nome do posto</label>
                            <input id="nomeposto" value="${posto.getNomePosto()}" type="text" name="nomeposto" placeholder="Digite o nome" required>
                        </div>
                        <div class="input-box">
                            <label for="NomeDono">Nome do dono do Posto</label>
                            <input id="nomedono" type="text" value="${posto.getNomeDono()}" name="nomedono" placeholder="Digite seu nome e sobrenome" required>
                        </div>
                        <div class="input-box">
                            <label for="Endereço">Endereço</label>
                            <input id="Endereço" type="text"value="${posto.getEndereco()}" name="endereco" placeholder="Digite seu endereço" required>
                        </div>
                        <div class="input-box">
                            <label for="bairro">Bairro</label>
                            <input id="bairro" type="text" value="${posto.getBairro()}" name="bairro" placeholder="Digite o bairro" required>
                        </div>
                        <div class="input-box">
                            <label for="email">E-mail</label>
                            <input id="email" type="email" value="${posto.getEmail()}" name="email" placeholder="Digite seu e-mail" required>
                        </div>
                   
                        <div class="input-box">
                            <label for="cnpj">CNPJ</label>
                            <input id="cnpj" readonly type="text" name="cnpj" value="${posto.getCnpj()}" placeholder="Digite seu CNPJ" maxlength="18" autocomplete="off" required>
                        </div>
                        <div class="input-box">
                            <label for="combustivel">Valor do combústivel</label>
                            <input id="combustivel" value="${posto.getValorCombustivel()}" type="text" name="valorcombustivel" placeholder="R$ 5,50" maxlength="4" required>
                        </div>
    
                    </div>
    
                    <div class="gender-inputs">
                        <div class="gender-title">
                            <h6>Bandeira do posto</h6>
                        </div>
                        <div class="gender-group" id="bandeira" disabled>
                            <select class="form-control selectpicker" name="bandeira">
                                <option value="Ipiranga">Ipiranga</option>
                                <option value="Shell">Shell</option>
                                <option value="Petrobras">Petrobras</option>
                                <option value="Ale">Ale</option>
                                <option value="Boxter">Boxter</option>
                                <option value="Rede Graal">Rede Graal</option>
                                <option value="Sim">Sim Rede de Postos</option>
                                <option value="Setee">Setee</option>
                                <option value="Setta">Setta</option>
                                <option value="larco">Larco</option>
                                <option value="Outro">Outro</option>
                              </select>
                              <div class="gender-title">
                                <h6>Serviços</h6>
                            </div>
                              <select class="form-control selectpicker" multiple data-live-search="true" name= "servicos"> 
                                <option value="Mercado">Mercado</option> 
                                <option value="Mecanica">Mecânica</option> 
                                <option value="Autopecas">Autopeças</option> 
                                <option value="Carregador p/ carro eletrico">Carregador p/ carro eletrico</option> 
                                <option value="Estacionamento">Estacionamento</option> 
                                <option value="Lava-rapido">Lava-rápido</option> 
                            </select>

                        </div>
                        
                    </div>

                    <div class="container-login100" style="text-align: center; margin-top: 30px;">
               			 <button type="submit" style="height: 35px;width: 40%; color: black;font-weight: bold;margin-bottom: 25px; background: #00D3AD; border-radius: 10px;">Alterar</button>	
                	</div>

                        
                </form>
                
            </div>
        </div>

         <%@ include file="../footer.jsp" %>
    </body>

	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
</html>
	

</body>
</html>