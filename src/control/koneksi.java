package control;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class koneksi {
    Connection con;
    Statement st;
    ResultSet rs;
    
    public Connection getKoneksi(){
        return con;
    }
    
    public void setKoneksi(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistemkasir","root","");
             st = con.createStatement();
             System.out.println("KONEKSI BERHASIL");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(koneksi.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(koneksi.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }
    public static void main(String[] args) {
        koneksi k = new koneksi();
        k.setKoneksi();
    }
}
