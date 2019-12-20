/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controles;

import clases.Producto;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author shimi
 */
public class ControladorProductoTest {
    
    public ControladorProductoTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    
    @Test
    public void testGetProductos() {
        System.out.println("getProductos");
        ControladorProducto instance = new ControladorProducto();
        String expResult = "";
        String result = instance.getProductos();
        if(expResult==result){
            fail("HTML no encontrado");
        }else{
            assertEquals(expResult, result);
        }
        assertEquals(expResult, result);

    }

    @Test
    public void testGetProducto() {
        System.out.println("getProducto");
        int id = 0;
        ControladorProducto instance = new ControladorProducto();
        Producto expResult = null;
        Producto result = instance.getProducto(id);
        if(result!=expResult){
            assertEquals(expResult, result);
        }
        else{
            fail("Fallo en la obtencion de producto");
        }
    }
    
}
