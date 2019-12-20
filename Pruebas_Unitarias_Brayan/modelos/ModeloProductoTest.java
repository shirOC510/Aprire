/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

import clases.Producto;
import java.util.ArrayList;
import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author BRAYAN LIPE
 */
public class ModeloProductoTest {
    
    public ModeloProductoTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }

    /**
     * Test of getAllProductos method, of class ModeloProducto.
     */
    @Test
    public void testGetAllProductos() {
            System.out.println("Test Get All Productos");
            ModeloProducto instance = new ModeloProducto();
            ArrayList<Producto> result = instance.getAllProductos();
            
            result.forEach((Producto p) -> {
                  assertNotNull(p.getNombre()); 
            });
    }

    /**
     * Test of getProducto method, of class ModeloProducto.
     */
    @Test
    public void testGetProducto() {
         
        System.out.println("Test Get Producto");
         int id = 1;
         int number = 1;

         ModeloProducto instance = new ModeloProducto();
         Producto result = instance.getProducto(id);
         
         ModeloProducto aux = new ModeloProducto();
         Producto expResult = aux.getProducto(number);
         
         ModeloProducto aux2 = new ModeloProducto();
         Producto expResult2 = new Producto();
         expResult2.setId(100);
         expResult2.setImg("null");
         expResult2.setPrecio(99999999.99);
         expResult2.setCategoria(2);
         expResult2.setStock(666);
         assertNotNull(expResult.getId());
         assertEquals(expResult.getId(), result.getId());
         assertSame(expResult.getStock(),result.getStock());
         assertNotSame(expResult2.getCategoria(),result.getCategoria());
         assertTrue(expResult2.getPrecio()>result.getPrecio());
    }
}
