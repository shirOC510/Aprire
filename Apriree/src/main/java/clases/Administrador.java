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
public class Administrador {
    
    private String dni_admin;
    private String nombre_admin;
    private String password_admi;
    private String email;

    public Administrador(String dni_admin, String nombre_admin, String password_admi, String email) {
        this.dni_admin = dni_admin;
        this.nombre_admin = nombre_admin;
        this.password_admi = password_admi;
        this.email = email;
    }

    public void setDni_admin(String dni_admin) {
        this.dni_admin = dni_admin;
    }

    public void setNombre_admin(String nombre_admin) {
        this.nombre_admin = nombre_admin;
    }

    public void setPassword_admi(String password_admi) {
        this.password_admi = password_admi;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDni_admin() {
        return dni_admin;
    }

    public String getNombre_admin() {
        return nombre_admin;
    }

    public String getPassword_admi() {
        return password_admi;
    }

    public String getEmail() {
        return email;
    }
    
    
}
