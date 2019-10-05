<%@page import="beans.AnuncianteBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    
<title>Anuncie</title>    
    
    
	<%@include file="topo.jsp" %>

	<%
	
	AnuncianteBean ab = (AnuncianteBean) session.getAttribute("Anunciante");
	
	
	%>

	<br>
	<br>
	<img src="imagens/publicacao.png" class="pub">	
	<br>
	<br>
	
	<form action="requisicoes/cadastrarPub.jsp" method="post" >
	
    <input type="readonly" value="<%out.println(ab.getIdAnunciante());%>" class="form-control" name="idDeAnunciar" id="idDeAnunciar"  placeholder="" maxlenght="50">
  	
	<div class="nomePublicador">
    <label for="exampleInputPassword1"></label>
    <input type="text" class="form-control" value="<%out.println(ab.getNomeAnunciante()); %>" name="nomePublicador" id="nomePublicador"  placeholder="Informe o seu nome de Anunciante" maxlenght="50">
  	</div>
	
	<div class="tituloPublicacao">
    <label for="exampleInputPassword1"></label>
    <input type="text" class="form-control" name="tituloPub" id="tituloPub"  placeholder="Titulo da Publicação" maxlenght="70">
  	</div>
 	 	
  	<div class="input-group">
  	<div class="input-group-prepend">
    <span class="input-group-text" id="span">Descrição da Publicação</span>
  	</div>
  	<textarea class="form-control" aria-label="With textarea" name="conteudoPub"  id="conteudoPub" maxlenght="900"></textarea>
	</div>
	
	<div class="input-group">
    <label for="exampleInputPassword1"></label>
    <input type="text" class="form-control" name="preco" id="preco"  placeholder="Preço do produto/serviço" maxlenght="100">
  	</div>
	
	<select id=cbServico name="cbServico">
    <option>Selecione o Serviço</option>
    <option>Saúde</option>
    <option>Manutenção</option>
    <option>Aulas</option>
    <option>Consultoria</option>
	</select> 
	
	<div>
	<input type="file" name="imagemPub" class="imagemPub" id="imagemPub" multiple onchange="GetFileSizeNameAndType()"/>
	</div>
	
	<div id="fp"></div>
	<p>
		<div id="divTotalSize"></div>
	</p>
	
	<div>
	<button value="upload" id="botaoPublicar" class="btn btn-success">Publicar
	</div>
	
	</form>
	
	<%
	
	String file_name=(String)request.getParameter("filename");
    if(file_name!=null){
 	   out.println(file_name+" File uploaded successfuly");
    }
	
	%>
	
	<a href="#" id="scroll" style="display: none;"><span></span></a>
	
</body>

	<%@include file="footer.jsp" %>

</html>