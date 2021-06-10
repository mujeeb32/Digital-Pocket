
package controller;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
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
            ResultSet res=stmt.executeQuery("select * from documents order by doc_id asc");
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

    public List<Post> getAllPost(int uid){
        List<Post> list=new ArrayList();
        try{
            PreparedStatement pstmt=this.con.prepareStatement("select * from documents where uid=?");
            pstmt.setInt(1,uid);
            ResultSet set=pstmt.executeQuery();
            while(set.next()){
                int doc_id=set.getInt("doc_id");
                String doc_type=set.getString("doc_type");
                int doc_size=set.getInt("doc_size");
                String doc_location=set.getString("doc_location");
                Timestamp dateTime=set.getTimestamp("doc_last_modified");
                String doc_filename=set.getString("doc_filename");
                Post p=new Post(doc_id,doc_type,doc_size,doc_location,dateTime,doc_filename);
                list.add(p);
            }
        }catch(Exception ee){
            ee.printStackTrace();
        }
        return list;
    }
    public List<Post> getAllPdf(int uid,String dtype){
        List<Post> list=new ArrayList();
        try{
            PreparedStatement pstmt=this.con.prepareStatement("select * from documents where(uid=? and doc_type=?)");
            pstmt.setInt(1,uid);
            pstmt.setString(2,dtype);
            ResultSet set=pstmt.executeQuery();
            while(set.next()){
                int doc_id=set.getInt("doc_id");
                String doc_type=set.getString("doc_type");
                int doc_size=set.getInt("doc_size");
                String doc_location=set.getString("doc_location");
                Timestamp dateTime=set.getTimestamp("doc_last_modified");
                String doc_filename=set.getString("doc_filename");
                Post p=new Post(doc_id,doc_type,doc_size,doc_location,dateTime,doc_filename);
                list.add(p);
            }
        }catch(Exception ee){
            ee.printStackTrace();
        }
        return list;
    }
    public List<Post> getAllPhoto(int uid){
        List<Post> list=new ArrayList();
        try{
            PreparedStatement pstmt=this.con.prepareStatement("select * from documents where(uid=? and doc_type=?)");
            pstmt.setInt(1,uid);
            pstmt.setString(2,"Photo");
            ResultSet set=pstmt.executeQuery();
            while(set.next()){
                int doc_id=set.getInt("doc_id");
                String doc_type=set.getString("doc_type");
                int doc_size=set.getInt("doc_size");
                String doc_location=set.getString("doc_location");
                Timestamp dateTime=set.getTimestamp("doc_last_modified");
                String doc_filename=set.getString("doc_filename");
                Post p=new Post(doc_id,doc_type,doc_size,doc_location,dateTime,doc_filename);
                list.add(p);
            }
        }catch(Exception ee){
            ee.printStackTrace();
        }
        return list;
    }
}
