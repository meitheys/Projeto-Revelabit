<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Topo</title>

	<!-- JQuerry -->
    <script src="https://code.jquery.com/jquery-1.12.4.js" integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU=" crossorigin="anonymous"> </script>

	<!--  CSS -->
	<link rel="stylesheet" href="estilos/estilos.css">
	<link rel="stylesheet" href="estilos/estilosMenu.css">
	
	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

	

	<!--  Animate CSS -->	
	<link rel="stylesheet" href="js/animate/animate.min.css">	
	<!--  WOW -->	
	<script src="js/wow/wow.js"></script>
	<script src="js/wow/wow.min.js"></script>

	
	<!-- Fotorama -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <link  href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>

	<!-- Ajax -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script type="text/javascript"></script>
   
    <script>   
    function mcc(v){
    	  v = v.replace(/\D/g,""); // Permite apenas dígitos
    	  v = v.replace(/(\d{4})/g, "$1."); // Coloca um ponto a cada 4 caracteres
    	  v = v.replace(/\.$/, ""); // Remove o ponto se estiver sobrando
    	  v = v.substring(0, 19)// Limita o tamanho

    	  return v;
    	}
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
    function mascaraCPF(){ 
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
	
	 <Script>
		
		/* Set the width of the side navigation to 250px and the left margin of the page content to 250px and add a black background color to body */
		function openNav() {
		  document.getElementById("mySidenav").style.width = "250px";
		  document.getElementById("main").style.marginRight = "250px";
		  document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
		}

		/* Set the width of the side navigation to 0 and the left margin of the page content to 0, and the background color of body to white */
		function closeNav() {
		  document.getElementById("mySidenav").style.width = "0";
		  document.getElementById("main").style.marginRight = "0";
		  document.body.style.backgroundColor = "white";
		}
		
		</Script>
	
		<script>
 	<% 
 	 	
 	//Obter a sessão
	String pegar = "";
	Object obj = session.getAttribute("Usuario");
	Object obj2 = session.getAttribute("Anunciante");
	
 	//Validar
 	if(obj==null && obj2==null){
 		response.sendRedirect("login.jsp");
 	}else{
 		
 	}
 	 
 	if(obj==null){
 		pegar = "Anunciante";
 	}else{
 		pegar = "Usuario";
 	}
 	
 	%>

 	 </script>
	
	<script>
    wow = new WOW(
      {
        animateClass: 'animated',
        offset:       100,
        callback:     function(box) {
          console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
        }
      }
    );
    wow.init();
    document.getElementById('moar').onclick = function() {
      var section = document.createElement('section');
      section.className = 'section--purple wow fadeInDown';
      this.parentNode.insertBefore(section, this);
    };
  </script>
  
</head>
<body>

	<header id="header">

	<div>
	<a href ="index.jsp"><img src="imagens/logo.png" class="logo"/></a>
	</div>
	
	<div id="teste">
		<ul class="nav navbar-nav" id="dropdown1">
        	<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Publicações <span class="glyphicon glyphicon-user pull-right"></span></a>
        <ul class="dropdown-menu">
            <li><a href="aulas.jsp">Aulas <span class="glyphicon glyphicon-cog pull-right"></span></a></li>
            <li class="divider"></li>
            <li><a href="consultoria.jsp">Consultoria <span class="glyphicon glyphicon-stats pull-right"></span></a></li>
            <li class="divider"></li>
            <li><a href="saude.jsp">Saúde <span class="badge pull-right">  </span></a></li>
            <li class="divider"></li>
            <li><a href="manutencao.jsp">Manutenção <span class="glyphicon glyphicon-heart pull-right"></span></a></li>
            <li class="divider"></li>    
        </ul>
        	</li>
        </ul>
	</div>
	
	<div id="teste2">
	<ul class="nav navbar-nav" id="dropdown1">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Publique já <span class="glyphicon glyphicon-user pull-right"></span></a>
          <ul class="dropdown-menu">
            <li><a href="anuncie.jsp">Publique Seu Serviço <span class="glyphicon glyphicon-cog pull-right"></span></a></li>
            <li class="divider"></li>
          </ul>
        </li>
      </ul>
	</div>
	
	<div id="teste3">
	<ul class="nav navbar-nav" id="dropdown1">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Sobre Nós <span class="glyphicon glyphicon-user pull-right"></span></a>
          <ul class="dropdown-menu">
            <li><a href="conheca.jsp">Conheça a Empresa <span class="glyphicon glyphicon-cog pull-right"></span></a></li>
            <li class="divider"></li>      
          </ul>
        </li>
      </ul>
	</div>
	
	
	
	<hr class="linha">

	<div>
	<img src="imagens/menuToggle.png" id="menuTog">
	
	<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="cadastro.jsp">Cadastrar</a>
 
  <a href="cadastrarAnunciante.jsp">Cadastrar-se como Anunciante</a>
  <a href="<%out.println(pegar+".jsp"); %>">Seus Dados</a>
  <a href="conheca.jsp">Conheça a Empresa</a>
  <a href="requisicoes/sair.jsp">Sair</a>
  
</div>

<img src="imagens/menuToggle.png" onclick="openNav()"  id="menuTog">

<div id="main">
 
</div>

	
	
	</div>

	</header>


