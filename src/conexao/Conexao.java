package conexao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {

	//Conexão
	public static Connection obterConexao() {
		
	//Obj 
	Connection con = null;
	
	//Try
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		
		con = DriverManager.getConnection("jdbc:mysql://localhost/projetorevelabit","root","");
		
	}catch(Exception e) {
		System.out.println("falha ao conectar"+e.getMessage());	
	}
			
	//Retorno
	return con;	
		
	}
	
	
}
