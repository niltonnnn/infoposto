<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri= "http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>  

<!DOCTYPE html>
<html>
<head>
<title>Atualizar Aluno</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<c:import url="cabecalho.jsp"/>
<main class = "main_content">



<table>

<form method="post" action="alunos">
 <input type="hidden" name="action" value="AtualizarAlunoAction">
 <input type="hidden" name="id" value="${aluno.id}">
 <tr>
  <td><label>Nome</label></td>
  <td> <input type="text" style="width: 300px; height: 25px" 
              name="nome" 
              id="nome" 
              value="${aluno.nome}"
              >
              </td>
</tr>
  <tr>
    <td><label>Email</label></td>
   <td><input type="email" style="width: 300px; height: 25px" 
              name="email" 
              id="email"
              value="${aluno.email}"
              ></td>
  </tr>
 <tr>
   <td> <label>cpf</label></td>
     <td><input type="text" style="width:200px; height:25px" 
                name="cpf" 
                id="cpf"
                value="${aluno.cpf}"
                ></td>
 </tr>
    <tr>
   <td> <label>Data de Nascimento</label></td>
     <td><input type= "date" style="width:200px; height:25px" 
                name="data_nascimento" 
                id="data_nascimento"
                value="<fmt:formatDate pattern="yyyy-MM-dd" value="${aluno.getDataNascimento().getTime()}" />"
                ></td>
               
 </tr>
   <tr>
     <td> <label>Sexo</label></td>
    <c:if test="${aluno.sexo eq 'Feminino'}">
   <td> F:<input type="radio" name="sexo" value="Feminino" checked>
       M:<input type="radio" name="sexo" value="Masculino">
   </td>
   </c:if>
      <c:if test="${aluno.sexo eq 'Masculino'}">
   <td> F:<input type="radio" name="sexo" value="Feminino" >
       M:<input type="radio" name="sexo" value="Masculino" checked>
   </td>
   </c:if>
   
      <c:if test="${aluno.sexo eq null}">
   <td> F:<input type="radio" name="sexo" value="Feminino">
       M:<input type="radio" name="sexo" value="Masculino">
   </td>
   </c:if>
   </tr>
   
    <tr>
    <td><label>Situação</label></td>
    <td>
    <select name="situacao" style="width:200px;height:25px">
     <c:if test="${aluno.situacao eq 'Aprovado'}">
        <option value="${aluno.situacao}">${aluno.situacao}(a)</option>
        <option value="Reprovado">Reprovado(a)</option>
    </c:if>
      <c:if test="${aluno.situacao eq 'Reprovado'}">
        <option value="${aluno.situacao}">${aluno.situacao}(a)</option>
        <option value="Aprovado">Aprovado(a)</option>
    </c:if>
         <c:if test="${aluno.situacao eq null}">
        <option value="Aprovado">Aprovado(a)</option>
        <option value="Reprovado">Reprovado(a)</option>
    </c:if>
    </select>
    </td>
  </tr>
   
   <tr>
   <td><label></label></td>
      <td><input type="submit" style="width: 300px; height: 40px" value="Atualizar"></td>
   </tr>   
</form>
</table>
</main>
<c:import url="rodape.jsp"/>
</body>
</html>