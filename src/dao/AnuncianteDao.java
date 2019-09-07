package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.spi.DirStateFactory.Result;

import beans.AnuncianteBean;
import conexao.Conexao;

public class AnuncianteDao {

	//Obter dados do anunciante
	
	public AnuncianteBean obterDados(String nomeAnunciante, String senhaAnunciante) {
		
		//Obj
		AnuncianteBean anuncianteBean = new AnuncianteBean();
		
		//Conexão
		Connection conexao = Conexao.obterConexao();
		
		try {
			
			String sql = "SELECT * FROM clientes WHERE nomeAnunciante=? AND senhaAnunciante=?";
			
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			pstmt.setString(1, nomeAnunciante);
			pstmt.setString(2, senhaAnunciante);
			
			ResultSet rs = pstmt.executeQuery();
			
			rs.last();
			
			anuncianteBean.setIdAnunciante(rs.getInt(1));
			anuncianteBean.setNomeAnunciante(rs.getString(2));
			anuncianteBean.setSenhaAnunciante(rs.getString(3));
			
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
		
}