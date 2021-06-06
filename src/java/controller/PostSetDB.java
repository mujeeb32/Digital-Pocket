
package controller;
import java.sql.*;
import models.Post;
public class PostSetDB {
    private  Connection con;
    public PostSetDB(Connection con) {
        this.con = con;
    }
    
    public boolean savepost(Post p){
        boolean f=false;
        try{
            String q="insert into documents(doc_id,uid,doc_type,doc_size,doc_location,doc_filename)values(?,?,?,?,?,?)";
            PreparedStatement pstmt=this.con.prepareStatement(q);
            
            Statement stmt=this.con.createStatement();
            ResultSet res=stmt.executeQuery("select * from documents");
            int counter=0;
            while(res.next()){
                counter=res.getInt("doc_id");
            }
            counter++;
            
            pstmt.setInt(1,counter);
            pstmt.setInt(2,p.getUid());
            pstmt.setString(3, p.getDoc_type());
            pstmt.setInt(4, p.getDoc_size());
            pstmt.setString(5, p.getDoc_location());
            pstmt.setString(6,p.getDoc_filename());
            
            pstmt.executeUpdate();
            f=true;
        }catch(Exception ee){
            ee.printStackTrace();
        }
        return f;
    }

    
}
