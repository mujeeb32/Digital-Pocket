
package models;

import java.sql.*;

public class Pojo {
    private static Connection con;
    public static Connection getConnection(){
        try{
            if(con==null){
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/digitalpocketdb", "root", "admin");
            }
        }catch(Exception ee){
            ee.printStackTrace();
        }
        return con;
    }
}
