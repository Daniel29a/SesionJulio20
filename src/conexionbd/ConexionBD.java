
package conexionbd;

import controllers.Conexion;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author D a n i 💻
 */
public class ConexionBD {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try{
        Conexion conexion = new Conexion ();
        Connection conn = conexion.obtenerConexion();
        PreparedStatement ps = conn.prepareStatement("Select * from ciudades");
        ResultSet rs = ps.executeQuery();
        while (rs.next())
        {
            System.out.println("Conexion");
        }
          }catch(SQLException ex){
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }  
    }
    

