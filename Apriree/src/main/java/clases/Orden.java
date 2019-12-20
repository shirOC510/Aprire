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
public class Orden {
    
    private String orden_id;
    private String fecha_orden;
    private String fecha_envio;
    private String id_comprador;
    private String estado_orden;
    private String envio_id;

    public Orden(String orden_id, String fecha_orden, String fecha_envio, String id_comprador, String estado_orden, String envio_id) {
        this.orden_id = orden_id;
        this.fecha_orden = fecha_orden;
        this.fecha_envio = fecha_envio;
        this.id_comprador = id_comprador;
        this.estado_orden = estado_orden;
        this.envio_id = envio_id;
    }

    public void setOrden_id(String orden_id) {
        this.orden_id = orden_id;
    }

    public void setFecha_orden(String fecha_orden) {
        this.fecha_orden = fecha_orden;
    }

    public void setFecha_envio(String fecha_envio) {
        this.fecha_envio = fecha_envio;
    }

    public void setId_comprador(String id_comprador) {
        this.id_comprador = id_comprador;
    }

    public void setEstado_orden(String estado_orden) {
        this.estado_orden = estado_orden;
    }

    public void setEnvio_id(String envio_id) {
        this.envio_id = envio_id;
    }

    public String getOrden_id() {
        return orden_id;
    }

    public String getFecha_orden() {
        return fecha_orden;
    }

    public String getFecha_envio() {
        return fecha_envio;
    }

    public String getId_comprador() {
        return id_comprador;
    }

    public String getEstado_orden() {
        return estado_orden;
    }

    public String getEnvio_id() {
        return envio_id;
    }
    
    public String getLugarEnvio(Envio envio){
        String pais;
        pais = "";
        switch(envio.getRegion_envio_id()) {
        case 51:
            pais="Perú"; 
            break;
        case 1:
            pais = "EU";
            break;
        case 55:
            pais = "Brasil";
            break;
        case 44:
            pais = "UK";
            break;
            
        default:
            pais = "No se envio a ningun país";
        }
        return pais;
    }
}
