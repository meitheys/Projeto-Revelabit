package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import beans.PublicacaoBean;
import conexao.Conexao;

public class PublicacaoDao {


	
	public boolean cadastrarPub(String nomePublicador, int idAnunciante, String tituloPub, String conteudoPub, String cbServico, String imagemPub, String preco) {
		
		Connection conexao = Conexao.obterConexao();
		
		boolean valida = false;
		
		try {
			
			String sql = "INSERT INTO publicacoes (nomePublicador, idAnunciante, tituloPub, conteudoPub, cbServico, imagemPub, preco) VALUES (?,?,?,?,?,?,?)";
			
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			pstmt.setString(1, nomePublicador);
			pstmt.setInt(2, idAnunciante);
			pstmt.setString(3, tituloPub);
			pstmt.setString(4, conteudoPub);
			pstmt.setString(5, cbServico);
			pstmt.setString(6, imagemPub);
			pstmt.setString(7, preco);
			pstmt.execute();
					
			pstmt.close();
			conexao.close();
			
			valida = true;
			
			
		}catch(Exception erro) {
			System.out.println("Falha ao validar o usuário"+erro.getMessage());
		}
			return valida;		
	}
	


	public boolean excluirPub(int idAnunciante, String tituloPub) {
		
		Connection conexao = Conexao.obterConexao();
		
		boolean valida = false;
		
		try {
		
			String sql = "DELETE FROM publicacoes WHERE idAnunciante=? AND tituloPub=? ";
			
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			pstmt.setInt(1, idAnunciante);
			
			pstmt.setString(2, tituloPub);	

			pstmt.execute();
					
			pstmt.close();
			conexao.close();
			
			valida = true;
			
		}catch(Exception erro) {
			System.out.println("Falha ao excluir os dados"+erro.getMessage());
		}

		//Retorno
		return valida;
		
	}
		
}