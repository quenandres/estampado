import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ServletTutorial extends HttpServlet{
    
    public void doPost(HttpServletRequest peticion,HttpServletResponse respuesta)
    throws ServletException,IOException
    {
        String nombre = peticion.getParameter("nombre");
        PrintWriter salida = respuesta.getWriter();
        salida.println("Tu nombre es: "+nombre);
        salida.close();
    }
}

