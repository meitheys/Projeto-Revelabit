package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.spi.DirStateFactory.Result;

import beans.UsuarioBean;
import conexao.Conexao;

public class UsuarioDao {

	//New Login
	
	public int validarLoginU(String nomeCliente, String senhaCliente) {

		//Contador
			
			int contador = 0;	
			
			Connection conexao = Conexao.obterConexao();
			
			try {
				String sql = "SELECT COUNT(*) FROM clientes WHERE nomeCliente=? AND senhaCliente=?";
				
				PreparedStatement pstmt = conexao.prepareStatement(sql);
				
				pstmt.setString(1, nomeCliente);
				pstmt.setString(2, senhaCliente);
				
				ResultSet rs = pstmt.executeQuery();
									
				rs.last(); 
			
				contador = rs.getInt(1);
				
				System.out.println(contador+"Esse é o contador de Cliente");				
				
				System.out.println(nomeCliente+"...Nome");
				System.out.println(senhaCliente+"...Senha");
				
			}catch(Exception erro) {
				System.out.println("Falha ao validar o usuário "+erro.getMessage());
			}
			
			return contador;

			}
	
	
	
	//Obter dados do usuário
	
	public UsuarioBean obterDados(String nomeCliente, String senhaCliente) {
		
		//Obj UsuBean
		UsuarioBean usuarioBean = new UsuarioBean();
		
		//Conexão
		Connection conexao = Conexao.obterConexao();
		
		//Tentativa
		try {
			
			String sql = "SELECT * FROM clientes WHERE nomeCliente=? AND senhaCliente=? ";
			
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			pstmt.setString(1, nomeCliente);
			pstmt.setString(2, senhaCliente);
			
			ResultSet rs = pstmt.executeQuery();
			
			rs.last();
			
			usuarioBean.setIdCliente(rs.getInt(1));
			usuarioBean.setNomeCliente(rs.getString(2));
			usuarioBean.setSenhaCliente(rs.getString(3));
			usuarioBean.setCpfCliente(rs.getString(4));
			usuarioBean.setContatoCliente(rs.getString(5));
			usuarioBean.setEnderecoCliente(rs.getString(6));
			usuarioBean.setEmailCliente(rs.getString(7));
			
		}catch(Exception erro) {
			System.out.println("Falha ao obter222 os dados"+erro.getMessage());
		}
		
		//Retorno
		return usuarioBean;
		
	}
	
		//Add ao SQL
	
		public boolean cadastrar(String nomeCliente, String senhaCliente, String enderecoCliente, String emailCliente, String cpfCliente, String contatoCliente) {
			
			Connection conexao = Conexao.obterConexao();
			
			boolean valida = false;
			
			try {
				
				String sql = "INSERT INTO clientes (nomeCliente, senhaCliente, cpfCliente, contatoCliente, enderecoCliente, emailCliente) VALUES (?,?,?,?,?,?)";
				
				PreparedStatement pstmt = conexao.prepareStatement(sql);
				
				pstmt.setString(1, nomeCliente);
				pstmt.setString(2, senhaCliente);
				pstmt.setString(3, cpfCliente);
				pstmt.setString(4, contatoCliente);
				pstmt.setString(5, enderecoCliente);
				pstmt.setString(6, emailCliente);
				pstmt.execute();
				
				pstmt.close();
				conexao.close();
				
				valida = true;
				
			}catch(Exception erro) {
				System.out.println("Falha ao validar o usuário"+erro.getMessage());
			}
			
			return valida;
			
		}
		
		//Excluir
		public boolean excluir(int idCliente) {
		
			Connection conexao = Conexao.obterConexao();
			
			boolean valida = false;
			
		try {
			
			String sql = "DELETE FROM clientes WHERE idCliente=?";
			
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			pstmt.setInt(1, idCliente);			
			pstmt.execute();			
			pstmt.close();
			conexao.close();
			
			valida = true;
			
		}catch(Exception erro){
			System.out.println("Falha ao excluir o usuário"+erro.getMessage());
		}
			return valida;
			
			
		}
		
		public UsuarioBean obterDados2(int idCliente) {
			
			//Obj UsuBean
			UsuarioBean usuarioBean = new UsuarioBean();
			
			//Conexão
			Connection conexao = Conexao.obterConexao();
			
			//Tentativa
			try {
				
				String sql = "SELECT * FROM clientes WHERE idCliente=?";
				
				PreparedStatement pstmt = conexao.prepareStatement(sql);
				
				pstmt.setInt(1, idCliente);
			
				
				ResultSet rs = pstmt.executeQuery();
				
				rs.last();
				
				usuarioBean.setIdCliente(rs.getInt(1));
				usuarioBean.setNomeCliente(rs.getString(2));
				usuarioBean.setSenhaCliente(rs.getString(3));
				usuarioBean.setCpfCliente(rs.getString(4));
				usuarioBean.setContatoCliente(rs.getString(5));
				usuarioBean.setEnderecoCliente(rs.getString(6));
				usuarioBean.setEmailCliente(rs.getString(7));
				
			}catch(Exception erro) {
				System.out.println("Falha ao obter ESSE RAFAEL os dados"+erro.getMessage());
			}
			
			//Retorno
			return usuarioBean;
				
		}
		
		//Alterar
		public boolean alterar(UsuarioBean obj) {
			
			//valida
			boolean valida = false;
			
			//Conexão
			Connection conexao = Conexao.obterConexao();	
		
			//Tentativa
			try {
				String sql = "UPDATE clientes SET nomeCliente = ?, senhaCliente = ?, cpfCliente = ?, contatoCliente = ?, enderecoCliente = ?, emailCliente = ? WHERE idCliente = ?";
				
				PreparedStatement pstmt = conexao.prepareStatement(sql);
				pstmt.setString(1, obj.getNomeCliente());
				pstmt.setString(2, obj.getSenhaCliente());
				pstmt.setString(3, obj.getCpfCliente());
				pstmt.setString(4, obj.getContatoCliente());
				pstmt.setString(5, obj.getEnderecoCliente());
				pstmt.setString(6, obj.getEmailCliente());
				pstmt.setInt(7, obj.getIdCliente());
				pstmt.execute();
			
				pstmt.close();
				conexao.close();
				
				valida= true;
			}catch(Exception erro) {
				System.out.println(erro);
			}
			
			
			//Retorno
			return valida;
		}
		
		
		
}	
		
		
		
		
		
		
		
		
	
		

