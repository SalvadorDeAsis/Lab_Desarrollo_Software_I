<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html>
<html>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Sistema</title>
    <style>
        .login{
            border:1px solid #444;
            max-width: 30%;
            margin: 100px auto;
            padding: 35px;
            border-radius: 25px
        }
        .etiqueta,.textbox, .btn-submit{
            display: block;
            margin-bottom: 10px
        }
        .textbox{
            width: 100%;
            padding: 10px 0;
            text-indent: 3px
        }
        .btn-submit{
            background-color: #1d8097;
            color:#fff;
            padding: 10px;
            border: none
        }
        .btn-submit:hover{
            background-color: #155d74;
            cursor: pointer
        }
    </style>

    <body>
        <div class="content">
            <div class="login">
                <h1>Sistema 1.0</h1>
                <c:set var="fechaActual" value="<%= new java.util.Date() %>" />
                <c:set var="formatoFecha" value="dd/MM/YYYY" />     
                <form method="POST" action="/SistemaElectronica/ServletPrincipal?accion=Login" id="formLogin">
                    <div id="resultLogin"></div>
                    <div class="textbox">
                        <label>
                            <strong>
                                <c:out value="Fecha actual: "/>
                                <fmt:formatDate value='${fechaActual}' pattern='${formatoFecha}' />
                            </strong>
                        </label><br>
                    </div>
                    <label class="etiqueta">Usuario:</label>            
                    <input type="text" name="tfUsuario" id="idtfUsuario" class="textbox" placeholder="Escriba el nombre del usuario">
                    <label class="etiqueta">Contrase&ntilde;a:</label>
                    <input type="password" name="tfContrasenia" id="idtfContrasenia" class="textbox" placeholder="Escriba la contraseña">
                    <input type="submit" value="Iniciar Sesi&oacute;n" class="btn-submit">
                </form>  
            </div>
        </div>
        
        
<!--
        <form method="POST" action="/SistemaElectronica/ServletPrincipal?accion=Login" id="formLogin">
            <div id="resultLogin"></div>    
            <div><h1>Sistema 1.0</h1></div>           
            <%-- Crear objeto de la clase Date y formatear la fecha --%>
            <c:set var="fechaActual" value="<%= new java.util.Date() %>" />
            <c:set var="formatoFecha" value="dd/MM/YYYY" />         
            <%-- Imprimir fecha --%>            
            <div><label><strong>
                <c:out value="Fecha actual: "/>
                <fmt:formatDate value='${fechaActual}' pattern='${formatoFecha}' />
            </strong></label></div><br>
            <div><label>Usuario:</label></div>            
            <div><input type="text" name="tfUsuario" id="idtfUsuario"></div><br>
            <div><label>Contrase&ntilde;a:</label></div>
            <div><input type="password" name="tfContrasenia" id="idtfContrasenia" ></div><br>
            <div><input type="submit" value="Iniciar Sesi&oacute;n"></div>
        </form>
-->
    </body>
</html>