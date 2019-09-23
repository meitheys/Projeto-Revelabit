package com.chilyfacts.com;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
public class FileUploadHandler extends HttpServlet {
    private static final long serialVersionUID = 1 ;
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        doPost(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String file_name = null;
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
        if (!isMultipartContent) {
            return;
        }
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        try {
            List < FileItem > fields = upload.parseRequest(request);
            Iterator < FileItem > it = fields.iterator();
            if (!it.hasNext()) {
                return;
            }
            while (it.hasNext()) {
                FileItem fileItem = it.next();
                boolean isFormField = fileItem.isFormField();
                if (isFormField) {
                    if (file_name == null) {
                        if (fileItem.getFieldName().equals("file_name")) {
                        	file_name = fileItem.getString();
                        }
                    }
                } else {
                	
                	Connection conexao = null;
                	String url = "jdbc:mysql://localhost/projetorevelabit";
                	conexao = DriverManager.getConnection(url, "root", "");
                	
                	Class.forName("com.mysql.jdbc.Driver");
                	
                	String sql = "INSERT INTO publicacoes (nomePublicador, 	idAnunciante, tituloPub, conteudoPub, cbServico, fileItem, 	preco) VALUES (?, ?, ?, ?, ?, ?, ?)";
                	               	
                	String nomePublicador = request.getParameter("nomePublicador");
                    String tituloPub = request.getParameter("tituloPub");
                    String conteudoPub = request.getParameter("conteudoPub");
                    String cbServico = request.getParameter("cbServico");
                    String preco = request.getParameter("preco");
                    
                    
                    
                	PreparedStatement pstmt = conexao.prepareStatement(sql);
                	//pstmt.setString(1, file_name);
                	pstmt.setString(1, nomePublicador);
                	pstmt.setInt(2, 3);
                	pstmt.setString(3, tituloPub);
                	pstmt.setString(4, conteudoPub);
                	pstmt.setString(5, cbServico);
                	pstmt.setString(6, fileItem.getName());
                	pstmt.setString(7, preco);
                	pstmt.execute();
                	
                	 System.out.println(nomePublicador);
                	
                	fileItem.write(new File("C:\\Users\\entra21\\Desktop\\Matheus\\Java\\Revelabit\\WebContent\\imagens\\upload\\" + fileItem.getName()));
                    
                	  
                	
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            out.println("<script type='text/javascript'>");
            out.println("window.location.href='index.jsp?filename="+file_name+"'");
            out.println("</script>");
            out.close();
        }
    }
}