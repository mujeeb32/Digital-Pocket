
package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import models.Pojo;

public class Delete{

    
    public void DeleteCid(int cid){
        //int cid=Integer.parseInt(request.getParameter("cid"));
        String temp="error";
        try{
            Connection con=Pojo.getConnection();
            String query="delete from documents where doc_id=?";
            PreparedStatement pstmt1 = con.prepareStatement(query);
            pstmt1.setInt(1, cid);
            pstmt1.executeUpdate();
            temp="done";
        }catch(Exception ee){
            ee.printStackTrace();
        }
       
    }
    
}
