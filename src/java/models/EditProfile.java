
package models;
import models.ErrorMessage;
import controller.Helper;
import controller.UserSetDB;
import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

public class EditProfile implements Business {

    @Override
    public String businessLogic(HttpServletRequest request) {
        String UserFname = request.getParameter("firstname");
        String UserLname = request.getParameter("lastname");
        String UserEmail = request.getParameter("email");
        String UserPassword = request.getParameter("password");
        String UserCity = request.getParameter("city");
        String UserState = request.getParameter("state");
        String UserCountry = request.getParameter("country");
        String UserPhone = request.getParameter("phone"); 
        String temp="";
        try{
            Part part = request.getPart("image");
            String imageName= part.getSubmittedFileName();
            HttpSession s=request.getSession();
            User user=(User)s.getAttribute("currentUser");
            user.setEmail(UserEmail);
            user.setCity(UserCity);
            user.setCountry(UserCountry);
            user.setFname(UserFname);
            user.setLname(UserLname);
            user.setPass(UserPassword);
            user.setPhone(UserPhone);
            String oldFile = user.getImg();
            user.setImg(imageName);
            UserSetDB userd=new UserSetDB(Pojo.getConnection());
            boolean ans=userd.userUpdate(user);
            if(ans==true){
                String path1 = request.getRealPath("/");
                String pathv=path1.substring(0,44);
                String path = pathv + "web/img" + File.separator + user.getImg();
                String pathOldFile = pathv + "web/img" + File.separator + oldFile;
                if (!oldFile.equals("default.png")) {
                    boolean gt=Helper.deleteFile(pathOldFile);
                    
                }
                if (Helper.saveFile(part.getInputStream(), path)) {
                    temp="updated in databases";
                    ErrorMessage msg = new ErrorMessage("Profile details updated...", "success", "alert-success");
                    s.setAttribute("msg", msg);

                } else {
                    
                    ErrorMessage msg = new ErrorMessage("Something went wrong..", "error", "alert-danger");
                    s.setAttribute("msg", msg);
                }
                
            }else{
                temp="not updated in databases";
                ErrorMessage msg = new ErrorMessage("Something went wrong..", "error", "alert-danger");
                s.setAttribute("msg", msg);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return temp;
    }
    
}
