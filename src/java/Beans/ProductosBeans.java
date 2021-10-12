
package Beans;

public class ProductosBeans {
    
    private int id_productos;
    private String nom;
    private int cod_marca;
    private int cod_proveedor;
    private String modelo;
    private int stock;
    private double prec_f;
    private double descuento;
    private double precio_v;
    private String unidad_t;
    private String tiempo_g;
    private String fecha_ingreso;

    public ProductosBeans(int id_productos, String nom, int cod_marca, int cod_proveedor, String modelo, int stock, double prec_f, double descuento, double precio_v, String unidad_t, String tiempo_g,String fecha_ingreso) {
        this.id_productos = id_productos;
        this.nom = nom;
        this.cod_marca = cod_marca;
        this.cod_proveedor = cod_proveedor;
        this.modelo = modelo;
        this.stock = stock;
        this.prec_f = prec_f;
        this.descuento = descuento;
        this.precio_v = precio_v;
        this.unidad_t = unidad_t;
        this.tiempo_g = tiempo_g;
     this.fecha_ingreso=fecha_ingreso;
    }


    public int getId_productos() {
        return id_productos;
    }

    public void setId_productos(int id_productos) {
        this.id_productos = id_productos;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getCod_marca() {
        return cod_marca;
    }

    public void setCod_marca(int cod_marca) {
        this.cod_marca = cod_marca;
    }

    public int getCod_proveedor() {
        return cod_proveedor;
    }

    public void setCod_proveedor(int cod_proveedor) {
        this.cod_proveedor = cod_proveedor;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public double getPrec_f() {
        return prec_f;
    }

    public void setPrec_f(double prec_f) {
        this.prec_f = prec_f;
    }

    public double getDescuento() {
        return descuento;
    }

    public void setDescuento(double descuento) {
        this.descuento = descuento;
    }

    public double getPrecio_v() {
        return precio_v;
    }

    public void setPrecio_v(double precio_v) {
        this.precio_v = precio_v;
    }

    public String getUnidad_t() {
        return unidad_t;
    }

    public void setUnidad_t(String unidad_t) {
        this.unidad_t = unidad_t;
    }

    public String getFecha_ingreso() {
        return fecha_ingreso;
    }

    public void setFecha_ingreso(String fecha_ingreso) {
        this.fecha_ingreso = fecha_ingreso;
    }
    
    public String getTiempo_g() {
        return tiempo_g;
    }

    public void setTiempo_g(String tiempo_g) {
        this.tiempo_g = tiempo_g;
    }
    
    
    
    
}
