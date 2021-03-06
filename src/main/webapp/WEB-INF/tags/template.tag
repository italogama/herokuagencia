<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ attribute name="name" %>
<%@ attribute name="isAdmin" type="java.lang.Boolean" %>

<% 
if(name == null || name == "") name = "Visitante";
%>


<!DOCTYPE html>
<html lang="en">
  <head	>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <base href="/">

    <title>Ag�ncia de Viagens</title>

    <!-- Bootstrap -->
    <link href="<c:url value="/static/vendors/bootstrap/dist/css/bootstrap.min.css" />" type="text/css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<c:url value="/static/vendors/font-awesome/css/font-awesome.min.css" />" type="text/css" rel="stylesheet">
    <!-- NProgress -->
    <link href="<c:url value="/static/vendors/nprogress/nprogress.css" />" type="text/css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="<c:url value="/static/vendors/bootstrap-daterangepicker/daterangepicker.css" />" type="text/css" rel="stylesheet">
    <!-- bootstrap-datetimepicker -->
    <link href="<c:url value="/static/vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css" />" type="text/css" rel="stylesheet">
	
    <!-- Custom Theme Style -->
    <link href="<c:url value="/static/build/css/custom.min.css" />" type="text/css" rel="stylesheet">
    <script src="<c:url value="/static/vendors/jquery/dist/jquery.min.js"/>"></script>
    
    
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="/home" class="site_title"><i class="fa fa-plane"></i> <span>Ag�ncia</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="<c:url value="/static/images/img.jpg" />" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Bem vindo,</span>
                <h2><%= name %></h2>
              </div>
              <div class="clearfix"></div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>Geral</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> Principal <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                    	<li><a href="/home">Index</a></li>
                      	<li><a href="/ultimasViagens">Ultimas Viagens</a></li>
                    </ul>
                  </li>
                  
                  <li><a><i class="fa fa-edit"></i> Pacotes <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu" id="menu_principal">
                      <!--  
                      <li><a href="AgenciaPortal/viagens/passagens">Passagens</a></li>
                      <li><a href="AgenciaPortal/viagens/resort">Resorts</a></li>
                      <li><a href="">Pacotes</a></li>
                      <li><a href="">Resorts</a></li>
                      <li><a href="">Cruzeiros</a></li>
                      -->
                    </ul>
                  </li>
                  
                </ul>
              </div>
            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="/logout">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="<c:url value="/static/images/img.jpg" />" alt=""><%= name %>
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                  	 <% if(isAdmin) { %>
                    <li>
                      <a href="admin/homeadmin">
                        <span class="badge bg-red pull-right">ONLY ADMIN</span>
                        <span>Administrativo</span>
                      </a>
                    </li>
					<% } %>
                    <li><a href="/profile"> Perfil</a></li>
                    
                    <li><a href="/ajuda">Ajuda</a></li>
                    <li><a href="/logout"><i class="fa fa-sign-out pull-right"></i> Deslogar</a></li>
                  </ul>
                </li>

                <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">6</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                        <span class="image"><img src="<c:url value="/static/images/img.jpg" />" alt="Profile Image" /></span>
                        <span>
                          <span>Equipe Ag�ncia</span>
                          <span class="time">3 mins atr�s</span>
                        </span>
                        <span class="message">
                          Seja bem vindo ao nosso sistema!
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="text-center">
                        <a>
                          <strong>Ver todos alertas</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
              </div>
             </div>

            <div class="clearfix"></div>
			
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                
<!--                   <div class="x_title"> -->
<!--                     <h2>Incluir tag para alterar nome da pagina acessada ##title</h2> -->
<!--                     <ul class="nav navbar-right panel_toolbox"> -->
<!--                       <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a> -->
<!--                       </li> -->
<!--                       <li class="dropdown"> -->
<!--                         <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a> -->
<!--                         <ul class="dropdown-menu" role="menu"> -->
<!--                           <li><a href="#">Settings 1</a> -->
<!--                           </li> -->
<!--                           <li><a href="#">Settings 2</a> -->
<!--                           </li> -->
<!--                         </ul> -->
<!--                       </li> -->
<!--                     </ul> -->
<!--                     <div class="clearfix"></div> -->
<!--                   </div> -->
                  <div class="x_content">
                  	<jsp:doBody/>
                  </div>
                
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Ag�ncia - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="<c:url value="/static/vendors/jquery/dist/jquery.min.js"/>"></script>
    <!-- Bootstrap -->
    <script src="<c:url value="/static/vendors/bootstrap/dist/js/bootstrap.min.js" />"></script>
    <!-- FastClick -->
    <script src="<c:url value="/static/vendors/fastclick/lib/fastclick.js" />"></script>
    <!-- NProgress -->
    <script src="<c:url value="/static/vendors/nprogress/nprogress.js" />"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="<c:url value="/static/vendors/moment/min/moment.min.js" />"></script>
    <script src="<c:url value="/static/vendors/bootstrap-daterangepicker/daterangepicker.js" />"></script>
    <!-- bootstrap-datetimepicker -->    
    <script src="<c:url value="/static/vendors/bootstrap-datetimepicker/build/js/bootstrap-datepicker.min.js" />"></script>
    <script src="<c:url value="/static/vendors/bootstrap-datetimepicker/build/js/bootstrap-datepicker.pt-BR.min.js" />"></script>
    
	<%--     <script src="<c:url value="/static/js/pacotes.js" />"></script> --%>
    <script src="<c:url value="/static/vendors/jquery.inputmask/dist/min/jquery.inputmask.bundle.min.js" />"></script>
    <script src="<c:url value="/static/vendors/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js" />"></script>
    
    <!-- Custom Theme Scripts -->
    <script src="<c:url value="/static/build/js/custom.min.js" />"></script>
    
    <script type="text/javascript">
	    $('#goDate').datepicker({
	        format: 'dd/mm/yyyy',
	        language: 'pt-BR',
	        startDate: '+0d'
	    });
    </script>
    
    <script type="text/javascript">
	    $('#backDate').datepicker({
	        format: 'dd/mm/yyyy',
	        language: 'pt-BR',
	        startDate: '+0d'
	    });
    </script>
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
			    			 $('#menu_principal').append('<li><a href="viagens/'+resposta[i].alias.toLowerCase()+'">'+resposta[i].alias+'</a></li>');
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
  </body>
  	
</html>