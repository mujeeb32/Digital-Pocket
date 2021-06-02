package models;

import java.sql.Timestamp;

public class User {
    private String fname;
    private String lname;
    private String email;
    private String pass;
    private String city; 
    private String state;
    private String country;
    private String question;
    private String answer;
    private String gender;
    private String phone;
    private int uid;
    private Timestamp dateTime;
    private int city_id;
    private int state_id;
    private int country_code;
    private int status;
    private String img; 
    
    public User() {
    }

    public User(String fname, String lname, String email, String pass, String city, String state, String country, String question, String answer, String gender, int status,String phone) {
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.pass = pass;
        this.city = city;
        this.state = state;
        this.country = country;
        this.question = question;
        this.answer = answer;
        this.gender = gender;
        this.status = status;
        this.phone=phone;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getImg() {
        return img;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    public void setCity_id(int city_id) {
        this.city_id = city_id;
    }

    public void setState_id(int state_id) {
        this.state_id = state_id;
    }

    public int getUid() {
        return uid;
    }

    public Timestamp getDateTime() {
        return dateTime;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setDateTime(Timestamp dateTime) {
        this.dateTime = dateTime;
    }
    
    public void setCountry_code(int country_code) {
        this.country_code = country_code;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    

    public void setFname(String fname) {
        this.fname = fname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setState(String state) {
        this.state = state;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }
    
    public String getFname() {
        return fname;
    }

    public int getCity_id() {
        return city_id;
    }

    public int getState_id() {
        return state_id;
    }

    public int getCountry_code() {
        return country_code;
    }

    public int getStatus() {
        return status;
    }

    public String getLname() {
        return lname;
    }

    public String getEmail() {
        return email;
    }

    public String getPass() {
        return pass;
    }

    public String getCity() {
        return city;
    }

    public String getState() {
        return state;
    }

    public String getCountry() {
        return country;
    }

    public String getQuestion() {
        return question;
    }

    public String getAnswer() {
        return answer;
    }

    public String getGender() {
        return gender;
    }
    
    
}
