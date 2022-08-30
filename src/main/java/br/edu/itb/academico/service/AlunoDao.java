package br.edu.itb.academico.service;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import br.edu.itb.academico.model.Aluno;

public class AlunoDao extends Dao  {
	
	private List<Aluno> alunos;
	private Aluno aluno;
	private int lastId;
	private int success;
	private Connection connection = null;
	
	String sqlListAll = "select * from usuarios where tipo_usuario='Aluno'";
	
	String sqlInsertAluno = "insert into usuarios "
			+ "(nome, matricula, tipo_usuario, email, senha, data_nascimento, sexo, cpf, situacao) values "
			+ "(?,?,?,?,?,?,?,?,?)";
	
	String sqlUpdateAluno = "update usuarios set "
			+ "usuarios.nome = ?,"
			+ "usuarios.email = ?,"
			+ "usuarios.cpf = ?,"
			+ "usuarios.data_nascimento = ?,"
			+ "usuarios.sexo = ?,"
			+ "usuarios.situacao = ? "
			+ "where usuarios.id = ?";
	
	String sqlDeleteAluno = "delete from usuarios where usuarios.id =?";
	
	String sqlListAlunoById = "select * from usuarios where usuarios.id =?";
	
	public AlunoDao(Connection connection) {
		this.connection = connection;
	}
	
	
	public List<Aluno> getAlunos() {
		
		alunos = new ArrayList<Aluno>();
		
		try {
			//connection = ConnectionFactory.getConnectionSqlServer();
			PreparedStatement stmt = connection.prepareStatement(sqlListAll);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				Aluno aluno = new Aluno();
				aluno.setId(rs.getLong("id"));
				aluno.setMatricula(rs.getString("matricula"));
				aluno.setNome(rs.getString("nome"));
				Calendar data_nascimento = Calendar.getInstance();
				data_nascimento.setTime(rs.getDate("data_nascimento"));
				aluno.setDataNascimento(data_nascimento);
				alunos.add(aluno);	
			}
		} catch (Exception e) {
			//e.printStackTrace();
			throw new RuntimeException(e);
		}
		
		return alunos;	
	}
	
	public int insertAluno(Aluno aluno) {
		try {
			//connection = ConnectionFactory.getConnectionSqlServer();
			PreparedStatement stmt = connection.prepareStatement(sqlInsertAluno, Statement.RETURN_GENERATED_KEYS);
			stmt.setString(1, aluno.getNome());
			stmt.setString(2, aluno.getMatricula());
			stmt.setString(3, aluno.getTipoUsuario());
			stmt.setString(4, aluno.getEmail());
			stmt.setString(5, aluno.getSenha());
			stmt.setDate(6, new Date(aluno.getDataNascimento().getTimeInMillis()));
			stmt.setString(7, aluno.getSexo());
			stmt.setString(8, aluno.getCpf());
			stmt.setString(9, aluno.getSituacao());
			stmt.executeUpdate();
			ResultSet rs = stmt.getGeneratedKeys();
		
			if(rs.next()) {
				lastId = rs.getInt(1);
			}	
			
		} catch(Exception e) {
			throw new RuntimeException(e);
		}
		return lastId;
	}
	
	public int updateAluno(Aluno aluno) {
	   try {
		  // connection = ConnectionFactory.getConnectionSqlServer();
		   PreparedStatement stmt = connection.prepareStatement(sqlUpdateAluno);
		   stmt.setString(1, aluno.getNome());
		   stmt.setString(2, aluno.getEmail());
		   stmt.setString(3, aluno.getCpf());
	       stmt.setDate(4, new Date(aluno.getDataNascimento().getTimeInMillis()));
	       stmt.setString(5, aluno.getSexo());
	       stmt.setString(6, aluno.getSituacao());
	       stmt.setLong(7, aluno.getId());
	       success = stmt.executeUpdate();	   
	   } catch(Exception e) {
		   throw new RuntimeException(e);
	   }
	    return success;
	   }
	
	public int deleteAluno(long id) {
		   
		try {
			  // connection = ConnectionFactory.getConnectionSqlServer();
			   PreparedStatement stmt = connection.prepareStatement(sqlDeleteAluno);
			   stmt.setLong(1, id);
		       success = stmt.executeUpdate();   
		     } catch(Exception e) {
			   throw new RuntimeException(e);
		   }
		  return success;
       }
	
	public Aluno getAlunoById(long id) {
		try {
			//connection = ConnectionFactory.getConnectionSqlServer();
			PreparedStatement stmt = connection.prepareStatement(sqlListAlunoById);
			stmt.setLong(1, id);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				Aluno aluno = new Aluno();
				aluno.setId(rs.getLong("id"));
				aluno.setNome(rs.getString("nome"));
				aluno.setMatricula(rs.getString("matricula"));
				aluno.setEmail(rs.getString("email"));
				aluno.setCpf(rs.getString("cpf"));
				aluno.setSexo(rs.getString("sexo"));
				aluno.setSituacao(rs.getString("situacao"));
				Calendar data_nascimento = Calendar.getInstance();
				data_nascimento.setTime(rs.getDate("data_nascimento"));
				aluno.setDataNascimento(data_nascimento);
				this.aluno = aluno;	
			}
		} catch (Exception e) {
			//e.printStackTrace();
			throw new RuntimeException(e);
		}
		return this.aluno;
			
	   }
	
	}




