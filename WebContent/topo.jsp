<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Topo</title>

	<!--  CSS -->
	<link rel="stylesheet" href="estilos/estilos.css">

	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

	<!-- Fotorama -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <link  href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>

	<!-- Ajax -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script type="text/javascript"></script>
    
    <!-- JQuerry -->
    <script
  	src="https://code.jquery.com/jquery-1.12.4.js"
  	integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="
  	crossorigin="anonymous">
    </script>
 	   
    <script>
    
 	// desactiva por defeito
    $('form button').html('Tens que escolher mínimo 5').prop('disabled', true);

    // controla se tem mínimo 5 escolhidos para activar
    $('form').on("click", 'input[type="radio"]', function (e) {
        if ($("form input:radio:checked").length > 0) {
            $('form button').html('Enviar').prop('disabled', false);
        } else {
            $('form button').html('Tens que escolher mínimo 5').prop('disabled', true);
        }
    });
    
    </script>
    
    <!--Mascaras para cadastro-->
   
    <script type="text/javascript">
    function mascaraTelefone(telefoneCadastro){ 
        if(telefoneAnunciante.value.length == 0)
        	telefoneAnunciante.value = '(' + telefoneAnunciante.value; 
        if(telefoneAnunciante.value.length == 3)
        	telefoneAnunciante.value = telefoneAnunciante.value + ') '; 
        if(telefoneAnunciante.value.length == 9)
        	telefoneAnunciante.value = telefoneAnunciante.value + '-';
}
	</script>

  <script type="text/javascript">
    function mascaraCPF(cpf){ 
        if(cpfAnunciante.value.length == 3)
        	cpfAnunciante.value = cpfAnunciante.value + '.'; 
        if(cpfAnunciante.value.length == 7)
        	cpfAnunciante.value = cpfAnunciante.value + '.'; 
        if(cpfAnunciante.value.length == 11)
        	cpfAnunciante.value = cpfAnunciante.value + '-';
}
    
</script>

<script>

//Pegar nome imagem

//function showname () {
   // var name = document.getElementById('fileInput'); 
   // alert('Arquivo selecionado: ' + name.files.item(0).name);
   // alert('Tamanho do arquivo selecionado: ' + name.files.item(0).size);
    //alert('Tipo do arquivo selecionado: ' + name.files.item(0).type); 	
  //};
  
  function GetFileSizeNameAndType()
        {
        var fi = document.getElementById('file'); // GET THE FILE INPUT AS VARIABLE.

        var totalFileSize = 0;

        // VALIDATE OR CHECK IF ANY FILE IS SELECTED.
        if (fi.files.length > 0)
        {
            // RUN A LOOP TO CHECK EACH SELECTED FILE.
            for (var i = 0; i <= fi.files.length - 1; i++)
            {
                //ACCESS THE SIZE PROPERTY OF THE ITEM OBJECT IN FILES COLLECTION. IN THIS WAY ALSO GET OTHER PROPERTIES LIKE FILENAME AND FILETYPE
                var fsize = fi.files.item(i).size;
                totalFileSize = totalFileSize + fsize;
                document.getElementById('fp').innerHTML =
                document.getElementById('fp').innerHTML
                +
                '<div id="informacoesImagem"> '
                +
                '<br /> ' + 'File Name is <b id="imagemPub">' + fi.files.item(i).name
                +
                '</b> and Size is <b>' + Math.round((fsize / 1024)) 
                +
                '</b> KB and File Type is <b>' + fi.files.item(i).type + "</b>.";
                +
                '</div>'
            }
        }
        document.getElementById('divTotalSize').innerHTML = 
        	'<div id="informacoesImagem2">' 
        	+
        	"Total File(s) Size is <b>" + Math.round(totalFileSize / 1024) + "</b> KB" 
        	+
        	'</div>';
    }
 
</script>
	
<script>

	function pegarId(){
		
		var numeroId = document.getElementsById("numero")
			
	}

</script>
	
<script>
          $(function(){
            $("#menu-toggle").click(function(e) {
                e.preventDefault();
                $("#wrapper").toggleClass("toggled");
            });

            $(window).resize(function(e) {
              if($(window).width()<=768){
                $("#wrapper").removeClass("toggled");
              }else{
                $("#wrapper").addClass("toggled");
              }
            });
          });
           
        </script>
	
	
	
	
	
	
</head>
<body>

	<header>

	

	<div>
	<a href ="index.jsp"><img src="imagens/logo.png" class="logo"/></a>
	</div>
	
	
	

	<div>
	<!-- Search form -->
	
	<input class="form-control" type="text" placeholder="Search" aria-label="Search" id="procurar">
	</div>
	
	

	<div class="btn-group">
  <button type="button" class="btn btn-danger">Usuário</button>
  <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="sr-only">Toggle Dropdown</span>
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="login.jsp">Já tem conta? Logar</a>
    <a class="dropdown-item" href="cadastro.jsp">Registrar-se</a>
    <a class="dropdown-item" href="cadastrarAnunciante.jsp">Torne-se um anunciante</a>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="conheca.jsp">Conheça a empresa</a>
  </div>
</div>
	
	<hr class="linha">


	</header>


