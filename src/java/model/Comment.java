/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Kawin
 */
public class Comment {
    private String email;
    private String dateTime;
    private String detail;
    private String name;
    private String postId;
    private int uploaded;

    public Comment(String email, String dateTime, String detail, String fname, String lname, String postId, int uploaded) {
        this.email = email;
        this.dateTime = dateTime;
        this.detail = detail;
        this.name = fname+" "+lname;
        this.postId = postId;
        this.uploaded = uploaded;
    }

   

  

    public int getUploaded() {
        return uploaded;
    }

    public void setUploaded(int uploaded) {
        this.uploaded = uploaded;
    }

    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDateTime() {
        return dateTime;
    }

    public void setDateTime(String dateTime) {
        this.dateTime = dateTime;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPostId() {
        return postId;
    }

    public void setPostId(String postId) {
        this.postId = postId;
    }
    
    
    

    
    
    
}
