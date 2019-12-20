/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package runner;

import modelos.ConexionTest;
import modelos.ModeloProductoTest;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

/**
 *
 * @author BRAYAN LIPE
 */
public class TestRunner {
    
    public TestRunner() {
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

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
    // @Test
    // public void hello() {}
        public static void main(String[] args) {	
                  Result result_conexion =  JUnitCore.runClasses(ConexionTest.class);
                  result_conexion.getFailures().forEach((failure) -> {
                      System.out.println(failure.toString());
                  });
                  
                  Result result_modeloProd = JUnitCore.runClasses(ModeloProductoTest.class);					
                  result_modeloProd.getFailures().forEach((failure) -> {
                      System.out.println(failure.toString());
                  });
                  
                  if(result_conexion.wasSuccessful() & result_modeloProd.wasSuccessful() )
                      System.out.println("Conexion Test y ModeloProducto Test was Succesfully :)" );
                  else{
                      fail("Test Not Succesfully");
                  }
   }
}
