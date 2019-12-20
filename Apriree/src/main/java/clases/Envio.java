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
public class Envio {
    
    private int id_envio;
    private String tipo;
    private float costo;
    private int region_envio_id;

    public Envio(int id_envio, String tipo, float costo, int region_envio_id) {
        this.id_envio = id_envio;
        this.tipo = tipo;
        this.costo = costo;
        this.region_envio_id = region_envio_id;
    }

    public void setId_envio(int id_envio) {
        this.id_envio = id_envio;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setCosto(float costo) {
        this.costo = costo;
    }

    public void setRegion_envio_id(int region_envio_id) {
        this.region_envio_id = region_envio_id;
    }

    public int getId_envio() {
        return id_envio;
    }

    public String getTipo() {
        return tipo;
    }

    public float getCosto() {
        return costo;
    }

    public int getRegion_envio_id() {
        return region_envio_id;
    }
    
    
}
