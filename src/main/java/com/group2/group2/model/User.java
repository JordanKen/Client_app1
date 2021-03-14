/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.group2.group2.model;

/**
 *
 * @author ChickDev03
 */
public class User {
    private int Id;
    private String Name;
    private String Username;
    private String Password;
    private int Type;
    private int Status;

    public User(){
    }

    public User(int id, String name, String username, String password, int type, int status){
       this.Id = id;
       this.Name = name;
       this.Username = username;
       this.Password = password;
       this.Type = type;
       this.Status = status;
    }
    
    public int getId(){
        return this.Id;
    }
    public void setId(int id){
        this.Id = id;
    }
    public String getName(){
        return this.Name;
    }
    public void  setName(String name){
        this.Name = name;
    }
    public String getUsername(){
        return this.Username;
    }
    public void  setUsername(String name){
        this.Username = name;
    }
    public void  setPassword(String password){
        this.Password = password;
    }

    public int getType(){
        return this.Type;
    }
    public void setType(int type){
        this.Type = type;
    }
    public int getStatus(){
        return this.Type;
    }
    public void setStatus(int status){
        this.Status = status;
    }
}
