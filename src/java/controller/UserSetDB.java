
package controller;
import models.User;
import java.sql.*;
public class UserSetDB {
    private Connection con;

    public UserSetDB(Connection con) {
        this.con = con;
    }
    private int flag=0;
    public int saveUser(User user){
        
        try{
            String query1="insert into login_master(email,password,status)values(?,?,?)";
            String query2="insert into country(country_code,country_name)values(?,?)";
            String query3="insert into state(state_id,state_name,country_code)values(?,?,?)";
            String query4="insert into city(city_id,city_name,state_id)values(?,?,?)";
            String query5="insert into user_master(uid,firstname,lastname,phone_no,city_id,email,gender)values(?,?,?,?,?,?,?)";
            String query6="insert into password_recovery(rec_question,rec_password,email)values(?,?,?)";
           
            PreparedStatement pstm=con.prepareStatement("select * from login_master where email =?");
            pstm.setString(1, user.getEmail());
            ResultSet rs = pstm.executeQuery();
            if(rs.next()){
                return 2;
            }else{
                PreparedStatement pstmt1 = this.con.prepareStatement(query1);
                pstmt1.setString(1, user.getEmail());
                pstmt1.setString(2, user.getPass());
                pstmt1.setInt(3, user.getStatus());
                pstmt1.executeUpdate();
            
                PreparedStatement pm1=con.prepareStatement("select * from country where country_name=?");
                pm1.setString(1,user.getCountry());
                ResultSet rs1 = pm1.executeQuery();
                if(rs1.next()){
                    user.setCountry_code(rs1.getInt("country_code"));
                }else{
                    PreparedStatement pstmt2 = this.con.prepareStatement(query2);
                    pstmt2.setInt(1, user.getCountry_code());
                    pstmt2.setString(2,user.getCountry());
                    pstmt2.executeUpdate();
                }
                
                int state_id=1;
                Statement st1=this.con.createStatement();
                ResultSet rs2=st1.executeQuery("select * from state");
                while(rs2.next()){
                    state_id=rs2.getInt("state_id");
                }
                state_id++;
                user.setState_id(state_id);
                PreparedStatement pm2=this.con.prepareStatement("select * from state where state_name=? and country_code =?");
                pm2.setString(1,user.getState());
                pm2.setInt(2, user.getCountry_code());
                ResultSet rs3 = pm2.executeQuery();
                if(rs3.next()){
                    user.setState_id(rs3.getInt("state_id"));
                }else{
                        PreparedStatement pstmt3 = this.con.prepareStatement(query3);
                        pstmt3.setInt(1, user.getState_id());
                        pstmt3.setString(2, user.getState());
                        pstmt3.setInt(3, user.getCountry_code());
                        pstmt3.executeUpdate();
                }
                
                int city_id=1;
                Statement st11=this.con.createStatement();
                ResultSet rs22=st11.executeQuery("select * from city");
                while(rs22.next()){
                    city_id=rs22.getInt("city_id");
                }
                city_id++;
                user.setCity_id(city_id);
                PreparedStatement pm3=con.prepareStatement("select * from city where city_name=? and state_id=?");
                pm3.setString(1,user.getCity());
                pm3.setInt(2, user.getState_id());
                ResultSet rs4 = pm3.executeQuery();
                if(rs4.next()){
                    user.setCity_id(rs4.getInt("city_id"));
                }else{
                        PreparedStatement pstmt4 = this.con.prepareStatement(query4);
                        pstmt4.setInt(1, user.getCity_id());
                        pstmt4.setString(2, user.getCity());
                        pstmt4.setInt(3, user.getState_id());
                        pstmt4.executeUpdate();
                }
                        Statement stmt=this.con.createStatement();
                        ResultSet res=stmt.executeQuery("select * from user_master");
                        int p=0;
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
                        flag=1;
        }
        }catch(Exception ee){
            ee.printStackTrace();
        }
        return flag;
    }
    
    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;

        try {

            String query = "select * from login_master where email =? and password=? and status=1";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);

            ResultSet set = pstmt.executeQuery();

            if (set.next()) {
                user = new User();
                user.setEmail(set.getString("email"));
                user.setPass(set.getString("password"));
                PreparedStatement pstmt1=con.prepareStatement("select * from user_master where email =?");
                pstmt1.setString(1, email);
                ResultSet set1 = pstmt1.executeQuery();
                if(set1.next()){
                    user.setGender(set1.getString("gender"));
                    user.setFname(set1.getString("firstname"));
                    user.setLname(set1.getString("lastname"));
                    user.setPhone(set1.getString("phone_no"));
                    user.setUid(set1.getInt("uid"));
                    user.setImg(set1.getString("profile"));
                    int city_id=set1.getInt("city_id");
                    int uid=set1.getInt("uid");
                    
                    PreparedStatement pstmt2=con.prepareStatement("select * from city where city_id =?");
                    pstmt2.setInt(1, city_id);
                    ResultSet set2 = pstmt2.executeQuery();
                    if(set2.next()){
                        user.setCity(set2.getString("city_name"));
                        int state_id=set2.getInt("state_id");

                        PreparedStatement pstmt3=con.prepareStatement("select * from state where state_id =?");
                        pstmt3.setInt(1, state_id);
                        ResultSet set3 = pstmt3.executeQuery();
                        if(set3.next()){
                            user.setState(set3.getString("state_name"));
                            int country_code=set3.getInt("country_code");
                
                            PreparedStatement pstmt4=con.prepareStatement("select * from country where country_code =?");
                            pstmt4.setInt(1, country_code);
                            ResultSet set4 = pstmt4.executeQuery();
                            if(set4.next()){   
                            user.setCountry(set4.getString("country_name"));
                            }
                        }
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }
    
    public boolean userUpdate(User user){
        boolean flag1=false;
        try{
            String query="update user_master set firstname=?,lastname=?,phone_no=?,profile=? where uid=?";
            PreparedStatement pstmt1=con.prepareStatement(query);
            pstmt1.setString(1,user.getFname());
            pstmt1.setString(2,user.getLname());
            pstmt1.setString(3,user.getPhone());
            pstmt1.setString(4,user.getImg());
            pstmt1.setInt(5,user.getUid());
            pstmt1.executeUpdate();
            String query1="update login_master set password=? where email=?";
            PreparedStatement pstmt2=con.prepareStatement(query1);
            pstmt2.setString(1,user.getPass());
            pstmt2.setString(2,user.getEmail());
            pstmt2.executeUpdate();
            flag1=true;
        }catch(Exception ee){
            ee.printStackTrace();
        }
        return flag1;
    }
}
