<%-- 
    Document   : pueblos
    Created on : 10-feb-2020, 21:13:32
    Author     : Alberto
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String provincia_activa = (String) request.getAttribute("provincia");
        ArrayList<String> pueblos = (ArrayList<String>) request.getAttribute("pueblos");
        ArrayList<String> provincias = (ArrayList<String>) request.getAttribute("provincias");%>
        <h1>Pueblos de Castilla-La Mancha</h1>
        <h2>Provincia Activa: <%= provincia_activa %></h2>
        <select>
            <% for(int i = 0; i< provincias.size(); i++){ %>
            <option value=""><%=provincias.get(i)%></option>
            <%}%>
        </select>
        <select>
            <% for(int i = 0; i< pueblos.size(); i++){ %>
            <option value=""><%=pueblos.get(i)%></option>
            <%}%>
        </select>
    </body>
</html>
