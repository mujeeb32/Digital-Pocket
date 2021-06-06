
package models;

public class Post {
    private int doc_id;
    private int uid;
    private String doc_type;
    private int doc_size;
    private String doc_location;
    private String doc_filename;
    
    private int userId;
    public Post() {
    }

    public Post(int uid, String doc_type, int doc_size, String doc_location, String doc_filename) {
        this.uid = uid;
        this.doc_type = doc_type;
        this.doc_size = doc_size;
        this.doc_location = doc_location;
        this.doc_filename = doc_filename;
    }

    public int getDoc_id() {
        return doc_id;
    }

    public int getUid() {
        return uid;
    }

    public String getDoc_type() {
        return doc_type;
    }

    public int getDoc_size() {
        return doc_size;
    }

    public String getDoc_location() {
        return doc_location;
    }

    public String getDoc_filename() {
        return doc_filename;
    }

    public int getUserId() {
        return userId;
    }

    public void setDoc_id(int doc_id) {
        this.doc_id = doc_id;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setDoc_type(String doc_type) {
        this.doc_type = doc_type;
    }

    public void setDoc_size(int doc_size) {
        this.doc_size = doc_size;
    }

    public void setDoc_location(String doc_location) {
        this.doc_location = doc_location;
    }

    public void setDoc_filename(String doc_filename) {
        this.doc_filename = doc_filename;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
    
}
