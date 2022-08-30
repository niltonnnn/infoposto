<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   

<!DOCTYPE html>
<html>
<head>

<title>Inserir Aluno</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<c:import url="cabecalho.jsp"/>
<main class = "main_content">

<table>

<form method="post" action="alunos">
 <input type="hidden" name="action" value="InserirAlunoAction">
 <tr>
  <td><label>Nome</label></td>
  <td> <input type="text" style="width: 300px; height: 25px" name="nome" id="nome" size="40"></td>
</tr>
  <tr>
    <td><label>Email</label></td>
   <td><input type="email" style="width: 300px; height: 25px" name="email" id="email"></td>
  </tr>
 <tr>
   <td> <label>cpf</label></td>
     <td><input type="text" style="width:200px; height:25px" name="cpf" id="cpf"></td>
 </tr>
    <tr>
   <td> <label>Data de Nascimento</label></td>
     <td><input type= "date" style="width:200px; height:25px" name="data_nascimento" id="data_nascimento"></td>
 </tr>
   <tr>
     <td> <label>Sexo</label></td>
  <td> F:<input type="radio" name="sexo" value="Feminino">
   M:<input type="radio" name="sexo" value="Masculino"></td>
   </tr>
   
       <tr>
    <td><label>Situação</label></td>
    <td>
    <select name="situacao" style="width:200px; height:25px">
        <option value="Aprovado">Aprovado(a)</option>
        <option value="Reprovado">Reprovado(a)</option>
    </select>
    </td>
  </tr>
   
   <tr>
   <td><label></label></td>
      <td><input type="submit" style="width: 300px; height: 40px" value="Enviar"></td>
   </tr>   
</form>
</table>
</main>
<c:import url="rodape.jsp"/>
</body>
</html>