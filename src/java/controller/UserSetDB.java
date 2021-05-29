
package controller;
import entites.User;
import java.sql.*;
public class UserSetDB {
    private Connection con;

    public UserSetDB(Connection con) {
        this.con = con;
    }
    private boolean flag=false;
    public boolean saveUser(User user){
        
        try{
            String query1="insert into login_master(email,password,status)values(?,?,?)";
            String query2="insert into country(country_code,country_name)values(?,?)";
            String query3="insert into state(state_id,state_name,country_code)values(?,?,?)";
            String query4="insert into city(city_id,city_name,state_id)values(?,?,?)";
            String query5="insert into user_master(uid,firstname,lastname,phone_no,city_id,email,gender)values(?,?,?,?,?,?,?)";
            String query6="insert into password_recovery(rec_question,rec_password,email)values(?,?,?)";
            
            PreparedStatement pstmt1 = this.con.prepareStatement(query1);
            pstmt1.setString(1, user.getEmail());
            pstmt1.setString(2, user.getPass());
            pstmt1.setInt(3, user.getStatus());
            pstmt1.executeUpdate();
            
            PreparedStatement pstmt2 = this.con.prepareStatement(query2);
            pstmt2.setInt(1, user.getCountry_code());
            pstmt2.setString(2,user.getCountry());
            pstmt2.executeUpdate();
            
            PreparedStatement pstmt3 = this.con.prepareStatement(query3);
            pstmt3.setInt(1, user.getState_id());
            pstmt3.setString(2, user.getState());
            pstmt3.setInt(3, user.getCountry_code());
            pstmt3.executeUpdate();
            
            PreparedStatement pstmt4 = this.con.prepareStatement(query4);
            pstmt4.setInt(1, user.getCity_id());
            pstmt4.setString(2, user.getCity());
            pstmt4.setInt(3, user.getState_id());
            pstmt4.executeUpdate();
            
            Statement stmt=this.con.createStatement();
            ResultSet res=stmt.executeQuery("select * from user_master");
            int p=1;
            while(res.next()){
                p=res.getInt("uid");
            }
            p++;
            PreparedStatement pstmt5 = this.con.prepareStatement(query5);
            pstmt5.setInt(1, p);
            pstmt5.setString(2, user.getFname());
            pstmt5.setString(3, user.getLname());
            pstmt5.setString(4, user.getPhone());
            pstmt5.setInt(5, user.getCity_id());
            pstmt5.setString(6, user.getEmail());
            pstmt5.setString(7, user.getGender());
            pstmt5.executeUpdate();
            
            PreparedStatement pstmt6 = this.con.prepareStatement(query6);
            pstmt6.setString(1, user.getQuestion());
            pstmt6.setString(2, user.getAnswer());
            pstmt6.setString(3, user.getEmail());
            pstmt6.executeUpdate();
            flag=true;
        }catch(Exception ee){
            ee.printStackTrace();
        }
        return flag;
    }
    
}
