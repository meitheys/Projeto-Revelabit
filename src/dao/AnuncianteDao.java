package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.spi.DirStateFactory.Result;

import beans.AnuncianteBean;
import beans.UsuarioBean;
import conexao.Conexao;

public class AnuncianteDao {

	//Validar Login de Anunciante
		public int validarLoginAnunciante(String nomeAnunciante, String senhaAnunciante) {
			
			//Contador
			int contador02 = 0;
			
			//Conexão
			Connection conexao = Conexao.obterConexao();
			
			//Try
			try {
				
				//SQL
				String sql = "SELECT COUNT(*) FROM anunciantes WHERE nomeAnunciante = ? AND senhaAnunciante = ?";
				
				//Querry
				PreparedStatement pstmt = conexao.prepareStatement(sql);
				
				//Parametros
				pstmt.setString(1, nomeAnunciante);
				pstmt.setString(2, senhaAnunciante);
				ResultSet rs = pstmt.executeQuery();
				
				rs.last();
								
				//Valor para validar
				contador02 = rs.getInt(1);
				
				System.out.println(contador02+"Esse é o contador de Anunciante");
				
				System.out.println(nomeAnunciante+"...Nome");
				System.out.println(senhaAnunciante+"...Senha");
			
			}catch(Exception erro) {
				System.out.println("Falha ao validar o Anunciante"+erro.getMessage());
			}
			
			//Retorno 
			return contador02;
			
		}
		
	
	
	
	//Obter dados do anunciante
	
	public AnuncianteBean obterDadosF(String nomeAnunciante, String senhaAnunciante) {
		
		//Obj
		AnuncianteBean anuncianteBean = new AnuncianteBean();
		
		//Conexão
		Connection conexao = Conexao.obterConexao();
		
		try {
			
			String sql = "SELECT * FROM anunciantes WHERE nomeAnunciante=? AND senhaAnunciante=?";
			
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			pstmt.setString(1, nomeAnunciante);
			pstmt.setString(2, senhaAnunciante);
			
			ResultSet rs = pstmt.executeQuery();
			
			rs.last();
			
			anuncianteBean.setIdAnunciante(rs.getInt(1));
			anuncianteBean.setNomeAnunciante(rs.getString(2));
			anuncianteBean.setNomeServicoAnunciante(rs.getString(3));
			anuncianteBean.setSenhaAnunciante(rs.getString(4));
			anuncianteBean.setEmailAnunciante(rs.getString(5));
			anuncianteBean.setTelefoneAnunciante(rs.getString(6));
			anuncianteBean.setCpfAnunciante(rs.getString(7));
			anuncianteBean.setEnderecoAnunciante(rs.getString(8));
			
			
		}catch(Exception erro) {
			System.out.println("Falha ao obter os dados"+erro.getMessage());
		}
		
		//Retorno
		return anuncianteBean;
		
	}
	
	//Adding to SQL
	
	public boolean cadastrar(String nomeAnunciante, String nomeServicoAnunciante, String senhaAnunciante, String emailAnunciante, String telefoneAnunciante, String cpfAnunciante, String enderecoAnunciante) {
		
		Connection conexao = Conexao.obterConexao();
		
		boolean valida = false;
		
		try {
			
			String sql = "INSERT INTO anunciantes (nomeAnunciante, nomeServicoAnunciante, senhaAnunciante, emailAnunciante, telefoneAnunciante, cpfAnunciante, enderecoAnunciante) VALUES (?,?,?,?,?,?,?)";
			
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			pstmt.setString(1, nomeAnunciante);
			pstmt.setString(2, nomeServicoAnunciante);
			pstmt.setString(3, senhaAnunciante);
			pstmt.setString(4, emailAnunciante);
			pstmt.setString(5, telefoneAnunciante);
			pstmt.setString(6, cpfAnunciante);
			pstmt.setString(7, enderecoAnunciante);
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
			public boolean excluirAnu(int idAnunciante) {
			
				Connection conexao = Conexao.obterConexao();
				
				boolean valida = false;
				
			try {
				
				String sql = "DELETE FROM anunciantes WHERE idAnunciante=?";
				
				PreparedStatement pstmt = conexao.prepareStatement(sql);
				
				pstmt.setInt(1, idAnunciante);			
				pstmt.execute();			
				pstmt.close();
				conexao.close();
				
				valida = true;
				
			}catch(Exception erro){
				System.out.println("Falha ao excluir o anunciante"+erro.getMessage());
			}
				return valida;
				
				
			}
	
	//Alterar
			public boolean alterarAnu(AnuncianteBean obj) {
				
				//valida
				boolean valida = false;
				
				//Conexão
				Connection conexao = Conexao.obterConexao();	
			
				//Tentativa
				try {
					String sql = "UPDATE anunciantes SET nomeAnunciante = ?, nomeServicoAnunciante = ?, senhaAnunciante = ?, emailAnunciante = ?, telefoneAnunciante = ?, cpfAnunciante = ?, enderecoAnunciante =? WHERE idAnunciante = ?";
					
					PreparedStatement pstmt = conexao.prepareStatement(sql);
					pstmt.setString(1, obj.getNomeAnunciante());
					pstmt.setString(2, obj.getNomeServicoAnunciante());
					pstmt.setString(3, obj.getSenhaAnunciante());
					pstmt.setString(4, obj.getEmailAnunciante());
					pstmt.setString(5, obj.getTelefoneAnunciante());
					pstmt.setString(6, obj.getCpfAnunciante());
					pstmt.setString(7, obj.getEnderecoAnunciante());
					pstmt.setInt(8, obj.getIdAnunciante());
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