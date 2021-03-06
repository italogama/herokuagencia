<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ attribute name="name" %>
<%@ attribute name="isAdmin" type="java.lang.Boolean" %>

<% 
if(name == null || name == "") name = "Visitante";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <head>
    	 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    	<!-- Meta, title, CSS, favicons, etc. -->
    	<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    
    
        <link rel="stylesheet" href="<c:url value="/static/admin/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
        <link rel="stylesheet" href="<c:url value="/static/admin/bootstrap/css/bootstrap-responsive.min.css" />" rel="stylesheet">
        <link rel="stylesheet" href="<c:url value="/static/admin/css/theme.css" />" rel="stylesheet">
        <link rel="stylesheet" href="<c:url value="/static/admin/images/icons/css/font-awesome.css" />" rel="stylesheet">
        <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
            rel='stylesheet'>
        <script src="<c:url value="/static/vendors/jquery/dist/jquery.min.js"/>"></script>
        <script>
        $(document).ready( function() {  // or shorthand of $( function () { 
		    	carregaMenu = function() {
	    		
	    	
		    		$.ajax({
		    			url: window.location.origin+'/menu', 
		    			type: 'GET',
		    			dataType: 'json',
		    			success: function(resposta) {
				    		if (resposta) {
				    		 $('#menu_principal').html('');
			    		 
				    		 for (var i=0; i<resposta.length; i++) {
				    			 $('#menu_principal').append('<li><a href="'+resposta[i].alias.toLowerCase()+'">'+resposta[i].alias+'</a></li>');
				    		 }
		    		
				    		}
		    			}, 
		    			error: function(err) {
		    				console.log(err);
		    			}
	    			
		    		});
	    		
		    	};
	    	
		    	carregaMenu();
		});
        </script>
    </head>
    <body>
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                        <i class="icon-reorder shaded"></i></a><a class="brand" href="./homeadmin">Ag�ncia ADMIN </a>
                    <div class="nav-collapse collapse navbar-inverse-collapse">
                        <ul class="nav pull-right">
                            <li class="nav-user dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="<c:url value="/static/images/img.jpg" />" class="nav-avatar" />
                                <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                	<li><a>Logado como: <%= name %></a>
                                    <li><a href="#">Perfil</a></li>
                                    <li><a href="#">Editar Perfil</a></li>
                                    <li><a href="#">Configura��es</a></li>
                                    <li class="divider"></li>
                                    <li><a href="/logout">Deslogar</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <!-- /.nav-collapse -->
                </div>
            </div>
            <!-- /navbar-inner -->
        </div>
        <!-- /navbar -->
        <div class="wrapper">
            <div class="container">
                <div class="row">
                    <div class="span3">
                        <div class="sidebar">
                            <ul class="widget widget-menu unstyled">
                                <li class="active"><a href="../home"><i class="menu-icon icon-home"></i>Home
                                </a></li>
                                <li class="active"><a href="./homeadmin"><i class="menu-icon icon-dashboard"></i>Resumo
                                </a></li>
                                <li><a href="./usersAdm"><i class="menu-icon icon-user"></i>Usu�rios </a></li>
                                <li><a href="./viagensAdm"><i class="menu-icon icon-random"></i>Pacotes</a></li>
                                <li><a href="./pedidosAdm"><i class="menu-icon icon-ok-sign"></i>Pedidos</a></li>
                            </ul>
                            <!--/.widget-nav-->
                            
                            <ul class="widget widget-menu unstyled" id="menu_principal">
                            </ul>
                            <!--/.widget-nav-->
                            <ul class="widget widget-menu unstyled">
                                <li><a href="/logout"><i class="menu-icon icon-signout"></i>Deslogar </a></li>
                            </ul>
                        </div>
                        <!--/.sidebar-->
                    </div>
                    <!--/.span3-->
					<!-- CONTEUDO PAGE -->
                    <div class="span9">
                        <div class="content">
                        	<jsp:doBody/>
                        </div>
                    </div>
                    <!--/.span9-->
                </div>
            </div>
            <!--/.container-->
        </div>
        <!--/.wrapper-->
        <div class="footer">
            <div class="container">
                <b class="copyright">&copy; �2018 Ag�ncia - Portal </b>Todos os direitos reservados.
            </div>
        </div>
        <script src="<c:url value="/static/vendors/jquery/dist/jquery.min.js"/>"></script>
        <script src="<c:url value="/static/admin/scripts/jquery-ui-1.10.1.custom.min.js" />" type="text/javascript"></script>
        <script src="<c:url value="/static/admin/bootstrap/js/bootstrap.min.js" />" type="text/javascript"></script>
        <script src="<c:url value="/static/admin/scripts/flot/jquery.flot.js" />" type="text/javascript"></script>
        <script src="<c:url value="/static/admin/scripts/flot/jquery.flot.resize.js" />" type="text/javascript"></script>
        <script src="<c:url value="/static/admin/scripts/datatables/jquery.dataTables.js" />" type="text/javascript"></script>
        <script src="<c:url value="/static/admin/scripts/common.js" />" type="text/javascript"></script>
        <script src="<c:url value="/static/build/js/custom.min.js" />"></script>
    </body>
