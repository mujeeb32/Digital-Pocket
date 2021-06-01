
package models;

import controller.UserSetDB;
import javax.servlet.http.HttpServletRequest;

public class Registration implements Business{
    public String businessLogic(HttpServletRequest request){
            String fname = request.getParameter("firstname");
            String lname = request.getParameter("lastname");
            String email = request.getParameter("email");
            String pass = request.getParameter("password");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String country = request.getParameter("country");
            String question = request.getParameter("question");
            String answer = request.getParameter("answer");
            String gender = request.getParameter("gender");
            String phone = request.getParameter("phone");
            String check= request.getParameter("check");
            int status=1;
            String g;
            if(check==null){
                g="Box not checked";
            }else{
                User user=new User(fname,lname,email,pass,city,state,country,question,answer,gender,status,phone);
                UserSetDB usd=new UserSetDB(Pojo.getConnection());
                int flag=usd.saveUser(user);
                if(flag==1){
                    g="done";
                }else if(flag==2){
                    g="exist";
                }else{
                    g="error";
                }
            }
            return g;
    }
}
