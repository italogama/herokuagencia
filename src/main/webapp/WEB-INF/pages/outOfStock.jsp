<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %> 
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<t:template name="${pageContext.request.userPrincipal.name}" isAdmin="${isAdmin}">
<html>
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <!-- page content -->
        <div class="col-md-12">
          <div class="col-middle">
            <div class="text-center text-center">
              <h1 class="error-number">404</h1>
              <h2>Desculpe, estamos sem estoque deste produto!</h2>
              <button type="button" class="btn btn-danger" onclick="window.history.back()">Voltar</button>
            </div>
          </div>
        </div>
        <!-- /page content -->
      </div>
    </div>
  </body>
</html>
</t:template>