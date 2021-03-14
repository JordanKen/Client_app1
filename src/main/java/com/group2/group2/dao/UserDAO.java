/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.group2.group2.dao;

import com.group2.group2.model.User;

import java.sql.*;

/**
 *
 * @author ChickDev03
 */
public class UserDAO {

    private String jdbcUrl = "jdbc:mysql://localhost:3306/classicmodels?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    private static final String SELECT_USER = "select * from user username=? AND password=?";

    protected Connection getConnection(){
    Connection connection = null;   
    try{
        Class.forName("com.mysqljdbc.Driver");
        connection = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword);
    }catch (SQLException e){
        e.printStackTrace();
    }catch(ClassNotFoundException e){
        e.printStackTrace();
    }
    return connection;
    }


    public User select(String username, String password){
        User user = null;
        try(Connection connection = getConnection();
            PreparedStatement prepareStatement = connection.prepareStatement(SELECT_USER);){
                ResultSet rs = prepareStatement.executeQuery();
                while(rs.next()){
                    int id = rs.getInt("id");
                    String name = rs.getString("name");
                    String usernam = rs.getString("username");
                    String passwor = rs.getString("password");
                    int type = rs.getInt("type");
                    int status = rs.getInt("status");
                    user = new User(id,name, username,password,type,status);
                }
            }catch(SQLException e){
                e.printStackTrace();
            }
            return user;
    }
}

