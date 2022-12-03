<%@ page language="java" contentType="text/html;  charset=UTF-8;"
    pageEncoding="UTF-8"%>
     <%@page import="br.edu.itb.academico.model.FaleConosco,java.util.*"%>
    <%@page import="br.edu.itb.academico.actions.*"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="CSS/css-Posto/css/CadastroDePosto.css">    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>InfoPosto - Responder Mensagem</title>
</head>
<body>

    <%@ include file="../menu-admin.jsp" %>

    <div style ="width:50%; margin:auto;" >
 <form id="register-form" action="${pageContext.request.contextPath}/ResponderMensagem" method = "post">
 <input type = "hidden"   id ="Codigo" name ="codigo" value="${mensagemAtual.getCodigo()}" />
      <div class="input-box">
        <label for="email">E-mail</label>
        <input  readonly type="email" name="email" id="email" value="${mensagemAtual.getEmail()}" data-min-length="2" data-email-validate>
      </div>
      <div class="input-box">
          <label for="name">Nome</label>
          <input readonly type="text" name="nome" id="nome" value="${mensagemAtual.getNome()}" data-required data-min-length="3" data-max-length="16" readonly>
      </div>
      <br>
			<div class="input-box">
				<label for="mensagem">Mensagem</label> <input readonly  type="text" 
					name="mensagem" id="Mensagem" value="${mensagemAtual.getMensagem()}"  data-required >
			</div>

			<div class="input-box">
        <label for="resposta">Resposta</label>
        <br>
        <textarea  name="resposta"  name ="resposta" id="resposta" style="width: 85vh; height: 20vh; font-size:15px"> </textarea>
            <div class="input-box">
            <br>
        <b><input id="btn-submit" type="submit" value="Atualizar" ></b>
      </div>
     
      </div>
   
    </form>
    </div>
</body>
</html>