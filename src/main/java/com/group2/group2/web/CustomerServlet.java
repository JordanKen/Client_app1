/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.group2.group2.web;

import com.group2.group2.model.Customer;
import com.group2.group2.model.CustomerDataContext;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ChickDev03
 */
@WebServlet(name="CustomerServlet", urlPatterns={"/"})
public class CustomerServlet extends HttpServlet {

    CustomerDataContext dao;

    public CustomerServlet() {
    	this.dao = new CustomerDataContext();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String action = request.getServletPath();
        switch(action){
            case "/new":
                showNewForm(request, response);
                break;
            case "/insert":
                addCustomer(request, response);
                break;
            case "/edit":
                showEditForm(request, response);
                break;
            case "/delete":
                deleteCustomer(request, response);
                break;
            case "/update":
                editCustomer(request, response);
                break;
            default:
                listCustomer(request,response);
                break;
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		doGet(request, response);

    }

    public void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException , IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer-form.jsp");
        dispatcher.forward(request, response);
    }

    public void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException , IOException {
        int Id = Integer.parseInt(request.getParameter("id"));
        Customer selectCust = dao.selectByID(Id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer-form.jsp");
        request.setAttribute("user", selectCust);
        dispatcher.forward(request, response);
    }

    public void addCustomer(HttpServletRequest request, HttpServletResponse response)
            throws ServletException , IOException {
        String name = request.getParameter("customerUserName1");
        String firstName = request.getParameter("customerFirstName1");
        String lastName = request.getParameter("customerLastName1");
        String phone = request.getParameter("phone1");
        String address1 = request.getParameter("addressLine11");
        String address2 = request.getParameter("addressLine21");
        String city = request.getParameter("city1");
        String state = request.getParameter("state1");
        String postalCode = request.getParameter("postalCode1");
        String creditlimit = request.getParameter("creditLimit1");
        Customer customer = new Customer();
        customer.setCustomerNumber(0);
        customer.setCustomerName(name);
        customer.setContactFirstName(firstName);
        customer.setContactLastName(lastName);
        customer.setPhone(phone);
        customer.setAddressLine1(address1);
        customer.setAddressLine2(address2);
        customer.setCity(city);
        customer.setState(state);
        customer.setPostalCode(postalCode);
        customer.setCreditLimit(creditlimit);
        System.out.println(customer);
        dao.insert(customer);
        response.sendRedirect("listCustomer");
    }

    public void editCustomer(HttpServletRequest request, HttpServletResponse response)
            throws ServletException , IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        System.out.println(request.getParameter("id"));
        String name = request.getParameter("customerUserName");
        String firstName = request.getParameter("customerFirstName");
        String lastName = request.getParameter("customerLastName");
        String phone = request.getParameter("phone");
        String address1 = request.getParameter("addressLine1");
        String address2 = request.getParameter("addressLine2");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String postalCode = request.getParameter("postalCode");
        String creditlimit = request.getParameter("creditLimit");
        Customer customer = new Customer();
        customer.setCustomerNumber(id);
        customer.setCustomerName(name);
        customer.setContactFirstName(firstName);
        customer.setContactLastName(lastName);
        customer.setPhone(phone);
        customer.setAddressLine1(address1);
        customer.setAddressLine2(address2);
        customer.setCity(city);
        customer.setState(state);
        customer.setPostalCode(postalCode);
        customer.setCreditLimit(creditlimit);
        dao.update(customer);
        response.sendRedirect("listCustomer");
    }

    public void deleteCustomer(HttpServletRequest request, HttpServletResponse response)
            throws ServletException , IOException {
        int id =Integer.parseInt(request.getParameter("id"));
        dao.delete(id);
        response.sendRedirect("listCustomer");
    }

    public void listCustomer(HttpServletRequest request, HttpServletResponse response)
            throws ServletException , IOException {
        Cookie[] c = request.getCookies();
        String cookieName = "type";
        if(c!=null){
            for(int e=0; e<c.length;e++){
                Cookie cookie = c[e];
                if(cookieName.equals(cookie.getName())){
                    request.setAttribute("cook", cookie.getValue());
                }
            }
        }
        List<Customer> listCustomer = dao.getAllCustomers();
        System.out.println(listCustomer);
        request.setAttribute("listCustomer", listCustomer);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/tables.jsp");
        dispatcher.forward(request, response);
    }


}
