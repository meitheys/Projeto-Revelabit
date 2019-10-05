<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<title>Finalizar compra</title>

	<%@include file="topo.jsp" %>

	<script type="text/javascript">
/* Máscaras ER */
function mascara(o,f){
    v_obj=o
    v_fun=f
    setTimeout("execmascara()",1)
}
function execmascara(){
    v_obj.value=v_fun(v_obj.value)
}
function mnumeroCompra(v){
    v=v.replace(/\D/g,"");
    v=v.replace(/^(\d{4})(\d)/g,"$1 $2");
    v=v.replace(/^(\d{4})\s(\d{4})(\d)/g,"$1 $2 $3");
    v=v.replace(/^(\d{4})\s(\d{4})\s(\d{4})(\d)/g,"$1 $2 $3 $4");
    return v;
}
function id( el ){
	return document.getElementById( el );
}
window.onload = function(){
	id('numeroCompra').onkeypress = function(){
		mascara( this, mcc );
	}
}
</script>



	

	<img src="imagens/iconeCompra.png" id="compraIcone">
	
	<form class="formularioCompra">
	
	<div class="numeroCompra">
    <label for="exampleInputPassword1"> </label>
    <input type="text" class="form-control" onkeypress="numeroCompra(this)" name="numeroCompra" id="numeroCompra" placeholder="Número do Cartão">
  	</div>
  	
  	<div class="nomeCompra">
    <label for="exampleInputPassword1"> </label>
    <input type="text" class="form-control" name="nomeCompra" id="nomeCompra" placeholder="Nome que está no cartão">
  	</div>
  	
  	<h5 class="validadeCompra">Validade</h5>
  	
  		<select class="cb1">
  		<option>Mês<option>
  		<option>Janeiro<option>
  		<option>Fevereiro<option>
  		<option>Março<option>
  		<option>Abril<option>
  		<option>Maio<option>
  		<option>Junho<option>
  		<option>Julho<option>
  		<option>Agosto<option>
  		<option>Setembro<option>
  		<option>Outubro<option>
  		<option>Novembro<option>
  		<option>Dezembro<option>  	
  		</select>  
  	
  	

  	
  	<select class="cb2">
  		<option>Ano<option>
  		<option>2019<option>
  		<option>2020<option>
  		<option>2021<option>
  		<option>2022<option>
  		<option>2023<option>
  		<option>2024<option>
  		<option>2025<option>
  		<option>2026<option>
  		<option>2027<option>
  		<option>2028<option>
  		<option>2029<option>
  		<option>2030<option>
  		<option>2031<option>
  		<option>2032<option>
  		<option>2033<option>
  		<option>2034<option>
  		<option>2035<option> 	
  	</select>
  	 	
  	<div class="CVV">
    <label for="exampleInputPassword1"> </label>
    <input type="text" class="form-control" name="CVV" maxlength="3" id="CVV" placeholder="CVV">
  	</div>
		
	<select class="cb3">
  		<option>Parcelamento<option>
  		<option>1x<option>
  		<option>2x<option>
  		<option>3x<option>
  		<option>4x<option>
  		<option>5x<option>
  		<option>6x<option>
  		<option>7x<option>
  		<option>8x<option>
  		<option>9x<option>
  		<option>10x<option>
  		<option>11x<option>
  		<option>12x<option>
  		<option>13x no Cartão REVELABIT<option>
  	</select>
	
	</form>

	<input type="radio" name="1" id="radio"  class="cbox1">Elo<img src="imagens/Cartoes/elo.png" id="fotoC1">
	<input type="radio" name="1" id="radio"  class="cbox2">Hipercard<img src="imagens/Cartoes/hipercard.png" id="fotoC2">
	<input type="radio" name="1" id="radio"  class="cbox3">Visa<img src="imagens/Cartoes/visa.png" id="fotoC3">
	<input type="radio" name="1" id="radio"  class="cbox4">Itaú<img src="imagens/Cartoes/itau.png" id="fotoC4">
	<input type="radio" name="1" id="radio"  class="cbox5">Mastercard<img src="imagens/Cartoes/mastercard.png" id="fotoC5">
	
	<br>
	<br>
	<br>
	<br>
	
	
	<a href="compraRealizada.jsp"><button  id="botaoFinalizar" class="btn btn-warning" >Finalizar compra</button></a>

	<a href="#" id="scroll" style="display: none;"><span></span></a>

</body>

	<%@include file="footer.jsp" %>


</html>