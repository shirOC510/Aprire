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
public class Usuario {
    
    private  String dni;
    private  String password;
    private  String estado;
    private  String fecha_registro;

    public Usuario(String dni, String password, String estado, String fecha_registro) {
        this.dni = dni;
        this.password = password;
        this.estado = estado;
        this.fecha_registro = fecha_registro;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public void setFecha_registro(String fecha_registro) {
        this.fecha_registro = fecha_registro;
    }

    public String getDni() {
        return dni;
    }

    public String getPassword() {
        return password;
    }

    public String getEstado() {
        return estado;
    }

    public String getFecha_registro() {
        return fecha_registro;
    }

    
    public boolean verificarLogin(){
        return "conectado".equals(this.estado);
    }
    
    
}
