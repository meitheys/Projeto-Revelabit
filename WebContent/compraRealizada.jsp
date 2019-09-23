<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    
<title>Compra Finalizada</title>    
    
<%@include file="topo.jsp" %>
	
<img src="imagens/concluido.png" class="compraConcluida">

<!-- <h2 class="pCadastro">Compra Finalizada com Sucesso!</h2> -->

<div class="alert alert-secondary" role="alert" id=compraFim>

<h4 class="alert-heading">Compra Finalizada!</h4>

<p>Compra feita com sucesso! O serviço deve ser entregue em até 30 dias, se o serviço for malfeito ou vir a apresentar defeitos, você tem até 15 dias para ter seu dinheiro de volta.</p>

<hr>

<p class="mb-0">Aproveite sua compra!</p>

</div>

<a href="index.jsp"><button  id="botaoVolta" class="btn btn-warning btn-lg" >Continuar comprando</button></a>

</body>

<%@include file="footer.jsp" %>
	
</html>