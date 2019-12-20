/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author BRAYAN LIPE
 */
public class Comprador {
    private String dni_id;
    private String nombre;
    private String direccion;
    private String tarjeta_credito;
    private String envio_info;
    private float balanace_cuenta;

    public Comprador(String dni_id, String nombre, String direccion, String tarjeta_credito, String envio_info, float balanace_cuenta) {
        this.dni_id = dni_id;
        this.nombre = nombre;
        this.direccion = direccion;
        this.tarjeta_credito = tarjeta_credito;
        this.envio_info = envio_info;
        this.balanace_cuenta = balanace_cuenta;
    }

    public void setDni_id(String dni_id) {
        this.dni_id = dni_id;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public void setTarjeta_credito(String tarjeta_credito) {
        this.tarjeta_credito = tarjeta_credito;
    }

    public void setEnvio_info(String envio_info) {
        this.envio_info = envio_info;
    }

    public void setBalanace_cuenta(float balanace_cuenta) {
        this.balanace_cuenta = balanace_cuenta;
    }

    public String getDni_id() {
        return dni_id;
    }

    public String getNombre() {
        return nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public String getTarjeta_credito() {
        return tarjeta_credito;
    }

    public String getEnvio_info() {
        return envio_info;
    }

    public float getBalanace_cuenta() {
        return balanace_cuenta;
    }
    
    
}
