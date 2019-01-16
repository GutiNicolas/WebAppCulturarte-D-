<%-- 
    Document   : listadopropuestas
    Created on : Oct 12, 2018, 12:16:31 PM
    Author     : nicolasgutierrez
--%>

<%@page import="java.util.Collection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <%if (request.getAttribute("propuestas") != null) {%>
        <%@include file="/PRESENTACIONES/menu.jsp"%>
        <link rel="stylesheet" type="text/css" href="ESTILOS/listadopropuestas.css" />
        <%}%>


        <title>cultuRarte App</title>
    </head>
    <body>
        <div id="home">
            <div class="container cont3">
                <%
                    if (request.getAttribute("propuestas") != null) {
                        Collection<String> propuestas = (Collection<String>) request.getAttribute("propuestas");

                %>


                <div class="container-fluid" style="max-width: 98%">
                    

                        <%  int num=0;
                            for (String prop : propuestas) 
                        {
                            if(num==0){
                                
                        %>
                        <div class="row">
                        <div class="col single_portfolio_text" style="min-width: 50px">
                            <img src="IMAGENES/defaultprop.jpg" href="?titulo=<%=prop%>" alt="" />
                            <div class="portfolio_images_overlay text-center" href="?titulo=<%=prop%>">
                                <h6 class="clrd-font" href="?titulo=<%=prop%>"><%= prop%></h6>
                                <a href="?titulo=<%=prop%>" class="btn btn-primary">INFORMACION</a>

                            </div>

                        </div>             

                        <%}
                             if(num==1){
                             
                        %>

                        <div class="col single_portfolio_text" style="min-width: 50px">
                            <img src="IMAGENES/defaultprop.jpg" href="?titulo=<%=prop%>" alt="" />
                            <div class="portfolio_images_overlay text-center" href="?titulo=<%=prop%>">
                                <h6 class="clrd-font" href="?titulo=<%=prop%>"><%= prop%></h6>
                                <a href="?titulo=<%=prop%>" class="btn btn-primary">INFORMACION</a>

                            </div>

                        </div>             

                        <%}num++;
                            if(num==2){
                            num=0;
                            %></div><%
                            }
                            }  %>
                    
                </div>

                <%} else {%>
                <%response.sendRedirect("/culturarteWebApp/Propuesta");
                   }%> 

            </div>
        </div>
    </body>
</html>
