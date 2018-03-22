
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList,Modelo.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style\css.css" rel="stylesheet" type="text/css">
        <link href="style\bootstrap.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Interfaz Admin</h1>
         <h3>
            <table border="1" width="700" align="center" class="table table-bordered"> 
                <tr>
                    <th>Inventario</th>                    
                    <th>Registrar</th> 
                    <th>Ventas</th> 
                    <th>Reportes</th>  
                    <th>Log usuarios</th>  
                </tr>                
            </table>            
        </h3>
        
        <h1 align="center">Productos</h1>
        <table border="0" width="700" align="center" class="table table-bordered">
            <%
            ArrayList<Productos> lista=ProductoDB.obtenerproductos();
                int salto=0;
                for(int i=0;i<lista.size();i++){
                    Productos p=lista.get(i);
                   salto++;
                   %>
                    
                        <td><img style="margin:auto;" src="img/<%=p.getImagen()%>" width="100" height="100"><br>
                            <%=p.getNombre()%><br>
                        <%=p.getPrecio()%>        <br>                                      
                        Modificar \\ Añadir
                        </td>
                   <%
                       if(salto==3){
                           %>
                            </tr>
                           <%
                            salto=0;
                       }
                       
                    }
            %>           
        </table>
    </body>
</html>
