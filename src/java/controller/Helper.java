
package controller;


import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;


public class Helper {
    public static  boolean deleteFile(String Path){
        boolean f=false;
        try{
            File file=new File(Path);
            f=file.delete();
            
            
        }catch(Exception ee){
            ee.printStackTrace();
        }
        return f;
    }
    
    public static boolean saveFile(InputStream is,String path){
        boolean f=false;
        
        try{
            FileOutputStream fos=new FileOutputStream(path);
            int n;
            while ((n = is.read()) != -1) {
                fos.write(n);
            }
            if (is != null) {
                is.close();
            }
            if (fos != null) {
                fos.close();
            }
            f=true;
        }catch(Exception ee){
            ee.printStackTrace();
        }
        
        
    return f;
    }
}
