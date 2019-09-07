package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.spi.DirStateFactory.Result;

import beans.UsuarioBean;
import conexao.Conexao;

public class UsuarioDao {

	//Obter dados do usuário
	
	public UsuarioBean obterDados(String nomeCliente, String senhaCliente) {
		
		//Obj UsuBean
		UsuarioBean usuarioBean = new UsuarioBean();
		
		//Conexão
		Connection conexao = Conexao.obterConexao();
		
		//Tentativa
		try {
			
			String sql = "SELECT * FROM clientes WHERE nomeCliente=? AND senhaUsuario=? ";
			
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			pstmt.setString(1, nomeCliente);
			pstmt.setString(2, senhaCliente);
			
			ResultSet rs = pstmt.executeQuery();
			
			rs.last();
			
			usuarioBean.setIdCliente(rs.getInt(1));
			usuarioBean.setNomeCliente(rs.getString(2));
			usuarioBean.setSenhaCliente(rs.getString(3));
			
		}catch(Exception erro) {
			System.out.println("Falha ao obter os dados"+erro.getMessage());
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
}
