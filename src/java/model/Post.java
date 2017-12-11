/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Kcomic
 */
public class Post {
    private int id;
    private String first_name;
    private String email;
    private String date;
    private String name;
    private String pic_base64;
    private String type;
    private String place;
    private String detail;
    private String status;
    private String time;
    private String validate;
    
    public Post(int id, String first_name, String email, String date, String name, String pic_base64, String type, String place, String detail, String status, String time) {
        this.id = id;
        this.first_name = first_name;
        this.email = email;
        this.date = date;
        this.name = name;
        this.pic_base64 = pic_base64;
        this.type = type;
        this.place = place;
        this.detail = detail;
        this.status = status;
        this.time = time;
    
    }

    public Post(int id, String first_name, String email, String date, String name, String pic_base64, String type, String place, String detail, String status, String time, String validate) {
        this.id = id;
        this.first_name = first_name;
        this.email = email;
        this.date = date;
        this.name = name;
        this.pic_base64 = pic_base64;
        this.type = type;
        this.place = place;
        this.detail = detail;
        this.status = status;
        this.time = time;
        this.validate = validate;
    }

    public String getValidate() {
        return validate;
    }

    public void setValidate(String validate) {
        this.validate = validate;
    }

    
    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPic_base64() {
        return pic_base64;
    }

    public void setPic_base64(String pic_base64) {
        this.pic_base64 = pic_base64;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }
    
}
