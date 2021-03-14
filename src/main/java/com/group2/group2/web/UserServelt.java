/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.group2.group2.web;

import com.group2.group2.dao.UserDAO;
import com.group2.group2.model.Customer;
import com.group2.group2.model.User;
import com.group2.group2.model.UserDataContext;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ChickDev03
 */
@WebServlet(name="UserServelt", urlPatterns={"/user"})
public class UserServelt extends HttpServlet {

    private UserDataContext userDAO;
   

     
     public UserServelt(){
        this.userDAO = new UserDataContext();
     }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String action = request.getServletPath();
        switch(action){
            case "/login":
                login(request, response);
                break;
            default:
                SendView(request,response);
                break;
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    public void login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException , IOException {
        String password = request.getParameter("password");
        String username = request.getParameter("username");
        User result = userDAO.selectByNameAndPassword(password,username);
        if(result!=null){
            RequestDispatcher dispatcher = request.getRequestDispatcher("/");
            dispatcher.forward(request, response);
        }
        else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/user");
            dispatcher.forward(request, response);
        }
    }


    public void SendView(HttpServletRequest request, HttpServletResponse response)
            throws ServletException , IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/login.jsp");
        dispatcher.forward(request, response);
    }

}
