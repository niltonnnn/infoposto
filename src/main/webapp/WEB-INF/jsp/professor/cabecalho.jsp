<nav class="main_nav">

	<%
	 String[] menuSecretaria =  {"Home","Cadastrar Aluno", "Matriculas Efetivadas", "Alunos Cadastrados", "Sair"};
	 String[] linksSecretaria =  {"/academico/alunos?action=Home",
			                      "/academico/alunos?action=FrmInserirAlunoAction", 
			                      "/academico/alunos?action=Matriculas", 
			                      "/academico/alunos?action=ListarAlunosAction", 
			                      "/academico/alunos?action=Logout"};
	 
	   for(int i = 0; i < menuSecretaria.length;i++){ %>
		 <a title="" href="<%= linksSecretaria[i] %>"><%= menuSecretaria[i] %></a>
	  
	  <% } %> 
	      
       
</nav>