
package Modelo;

import java.sql.*;
import java.util.*;
import utils.ConexionDB;

public class ProductoDB {
    //metodo para traer productos
    public static ArrayList<Productos> obtenerproductos(){
        ArrayList<Productos> lista= new ArrayList<Productos>();
        Connection cn = null;
        cn = ConexionDB.getConexion();
        CallableStatement csta = null;
        ResultSet rs = null;
        try{
            csta = cn.prepareCall("{call lista_producto()}");
            rs = csta.executeQuery();
            while(rs.next()){
                Productos p = new Productos(rs.getInt(1),rs.getString(2),rs.getDouble(3),rs.getString(4));
                lista.add(p);
            }
            
            
        }catch(Exception e){
            System.out.println("Error "+e);
        }
        
        return lista;
    }
}
