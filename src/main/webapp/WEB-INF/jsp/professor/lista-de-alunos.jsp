<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri= "http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
    <%@ page import="br.edu.itb.academico.model.Aluno" %>
<!DOCTYPE html>
<html>
<head>
<title>Lista de alunos</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<c:import url="cabecalho.jsp"/>
<main class = "main_content">
  <table border="1">
 <tr>
   <th>Matrícula</th>
   <th>Nome</th>
   <th>Data de Nascimento</th>
   <th colspan="2">Ações</th>
   
   <c:forEach var="aluno" items="${listaDeAlunos}">
   <tr>
    <td>${aluno.matricula}</td>
    <td>${aluno.getNome()}</td>
    <td><fmt:formatDate pattern="dd/MM/yyyy" value="${aluno.getDataNascimento().getTime()}" /></td>
    <td><a href="?action=FrmAtualizarAlunoAction&id=${aluno.getId()}">Editar</a></td>
    <td><a href="?action=ExcluirAlunoAction&id=${aluno.getId()}" 
           onclick="return confirm('Confirma a exclusão?')">Excluir</a></td>
   </tr>
   </c:forEach>
 </tr>
</table>
</main>
<c:import url="rodape.jsp"/>
</body>
</html>