<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    
<title>Anuncie</title>    
    
	<%@include file="topo.jsp" %>

	<img src="imagens/publicacao.png" class="pub">
	
	
	<form action="requisicoes/cadastrarPub.jsp" method="post">
	
	<div class="nomePublicador">
    <label for="exampleInputPassword1"></label>
    <input type="text" class="form-control" name="nomePublicador" id="nomePublicador"  placeholder="Informe o seu nome de Anunciante" maxlenght="50">
  	</div>
	
	<div class="tituloPublicacao">
    <label for="exampleInputPassword1"></label>
    <input type="text" class="form-control" name="tituloPub" id="tituloPub"  placeholder="Titulo da Publica��o" maxlenght="70">
  	</div>
 	 	
  	<div class="input-group">
  <div class="input-group-prepend">
    <span class="input-group-text" id="span">Descri��o da Publica��o</span>
  </div>
  <textarea class="form-control" aria-label="With textarea" name="conteudoPub"  id="conteudoPub" maxlenght="125"></textarea>
	</div>
	
	<div class="input-group">
    <label for="exampleInputPassword1"></label>
    <input type="text" class="form-control" name="preco" id="preco"  placeholder="Pre�o do produto/servi�o" maxlenght="100">
  	</div>
	
	<select id=cbServico name="cbServico">
    <option>Selecione o Servi�o</option>
    <option>Sa�de</option>
    <option>Manuten��o</option>
    <option>Aulas</option>
    <option>Consultoria</option>
	</select>
	
	<div>
	<input type="file" name="imagemPub" class="imagemPub" id="file" multiple onchange="GetFileSizeNameAndType()"/>
	</div>
	
	<div id="fp"></div>
	<p>
		<div id="divTotalSize"></div>
	</p>
	
	<div>
	<button value="submit" id="botaoPublicar" class="btn btn-success">Publicar
	</div>
	
	</form>
	
	
	
	
	
</body>

	<%@include file="footer.jsp" %>

</html>