<%@ page import="br.edu.itb.academico.actions.FrmInserirFaleConoscoAction,java.util.*"%>
<% 
	String nome = request.getParameter("name");
	String email =  request.getParameter("email");
	String mensagem = request.getParameter("message");
	FrmInserirFaleConoscoAction f = new FrmInserirFaleConoscoAction();
	f.CadastrarContato(nome, email, mensagem);
	response.sendRedirect("../cadastradoSucesso.jsp");
%>