package com.group2.group2.web;

import com.group2.group2.model.User;
import com.group2.group2.model.UserDataContext;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServelt", value = "/login")
public class LoginServelt extends HttpServlet {
    private UserDataContext userDAO;
    public LoginServelt(){
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
                login(request,response);
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
        System.out.println(password);
        System.out.println(username);
        User result = userDAO.selectByNameAndPassword(password, username);
        if (result != null) {
            int type = result.getType();
            Cookie c = new Cookie("type",String.valueOf(type));
            response.addCookie(c);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/");
            dispatcher.forward(request, response);
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/user");
            dispatcher.forward(request, response);
        }
    }
}

