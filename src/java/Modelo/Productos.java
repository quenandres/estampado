
package Modelo;


public class Productos {
    private int codigoproducto;
    private String nombre;
    private double precio;
    private String imagen;

    public Productos(int codigoproducto, String nombre, double precio, String imagen) {
        this.codigoproducto = codigoproducto;
        this.nombre = nombre;
        this.precio = precio;
        this.imagen = imagen;
    }

    
    
    
    public int getCodigoproducto() {
        return codigoproducto;
    }

    public void setCodigoproducto(int codigoproducto) {
        this.codigoproducto = codigoproducto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
    
    
}
