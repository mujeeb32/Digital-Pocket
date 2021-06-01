
package models;

import controller.UserSetDB;
import javax.servlet.http.HttpServletRequest;

public class Login implements Business {
    
    public User businessLogic1(HttpServletRequest request){
        String userName = request.getParameter("email");
        String userPassword = request.getParameter("password");
        UserSetDB usd=new UserSetDB(Pojo.getConnection());
        User u=usd.getUserByEmailAndPassword(userName,userPassword);
        if(u==null){
            return u;
        }
        return u;
    }

    @Override
    public String businessLogic(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
