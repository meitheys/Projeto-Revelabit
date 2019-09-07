package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import beans.PublicacaoBean;
import conexao.Conexao;

public class PublicacaoDao {


	
	public boolean cadastrarPub(String nomePublicador, String tituloPub, String conteudoPub, String cbServico, String imagemPub, String preco) {
		
		Connection conexao = Conexao.obterConexao();
		
		boolean valida = false;
		
		try {
			
			String sql = "INSERT INTO publicacoes (nomePublicador, tituloPub, conteudoPub, cbServico, imagemPub, preco) VALUES (?,?,?,?,?,?)";
			
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			pstmt.setString(1, nomePublicador);
			pstmt.setString(2, tituloPub);
			pstmt.setString(3, conteudoPub);
			pstmt.setString(4, cbServico);
			pstmt.setString(5, imagemPub);
			pstmt.setString(6, preco);
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


