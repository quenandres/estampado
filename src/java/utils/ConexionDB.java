
package utils;
import java.sql.*;

public class ConexionDB {
//Metodo para conectar a la base de datos
    
    public static Connection getConexion(){
        Connection cn=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost/carrocompras","root","");  
            System.out.println("Conexion satisfactoria  ");
        }catch(Exception e){
            System.out.println("Error de conexion "+e);
        }
        return cn;
    }
    
    public static void main(String[] args) {
        getConexion();
    }
    
}
