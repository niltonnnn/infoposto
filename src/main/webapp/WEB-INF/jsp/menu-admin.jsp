<%@ page language="java" contentType="text/html;  charset=UTF-8;"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="CSS/CSS-ListaPosto/CadastroDePosto.css">
     <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>

 <div id="area-cabecalho">
        <div id="area-logo">
            <h1 href="/infoposto/web?action=HomeAction">Info<span class="branco">Posto</span></h1>
        </div>
        <div id="area-menu">
        
      		 <p style = "color: white; float:right; font-size:1.5vh">Bem vindo ${User} !!</p>
        	<a href="/infoposto/web?action=FrmListaPostos">Postos </a>
              <% 
              String Admin = (String)request.getSession().getAttribute("Admin"); 
                    //Remove '@' 
                    if (Admin == "S") 
                    { 
                %>
            <a href="/infoposto/web?action=FrmListaFaleConosco">Mensagens</a> 
            <a href="/infoposto/web?action=FrmCadastroDePosto">Cadastrar posto</a>
          	<a href="/infoposto/web?action=FrmListaUsuarios">Usuários</a>
           <% } 
                %>
               <a href="/infoposto/web?action=FrmLogoutAction">Sair</a>
<!--             <a href="/infoposto/web?action=FrmFaleConosco">Fale Conosco</a> -->
        </div>
    </div>

    <div>
</body>
</html>