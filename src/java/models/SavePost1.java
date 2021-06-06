
package models;

import controller.Helper;
import controller.PostSetDB;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

public class SavePost1 implements Business {

    @Override
    public String businessLogic(HttpServletRequest request) {
        String temp="";
        try{
            String doc_filename=request.getParameter("name");
            String File_extension=request.getParameter("extension");
            
            Part part=request.getPart("file");
            String doc_location=part.getSubmittedFileName();
            HttpSession session=request.getSession();
            
            User user=(User)session.getAttribute("currentUser");
            int uid=user.getUid();
            
            String path1 = request.getRealPath("/");
            String pathv=path1.substring(0,44);
            String path = pathv + "web/AllPost" + File.separator +doc_location;
            if (Helper.saveFile(part.getInputStream(), path)) {
                Path path2 = Paths.get(path);
                long bytes = Files.size(path2);
                int doc_size=(int) (bytes / 1024);
                Post p=new Post(uid,File_extension,doc_size,doc_location,doc_filename);
                PostSetDB dao=new PostSetDB(Pojo.getConnection());
                if(dao.savepost(p)){
                    temp="done";
                }else{
                    temp="error";
                }
            }
        }catch(Exception ee){
            ee.printStackTrace();
        }
        return temp;
    }
    
}
