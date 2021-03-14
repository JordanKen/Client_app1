/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.group2.group2.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.group2.group2.model.Customer;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 * @author ChickDev03
 */
public class CustomerDataContext {
    private final JdbcTemplate jdbcTemplate;

    public CustomerDataContext() {
        // La création du DriverManagerDataSource
        DriverManagerDataSource ds = new DriverManagerDataSource("jdbc:mysql://localhost:3306/classicmodels?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
        ds.setDriverClassName("com.mysql.jdbc.Driver");
        // La création jdbctemplate
        this.jdbcTemplate = new JdbcTemplate(ds);
    }

    public List<Customer> getAllCustomers() {

        return this.jdbcTemplate.query("select * from 	customers", new ResultSetExtractor<List<Customer>>() {
            @Override
            public List<Customer> extractData(ResultSet rs) throws SQLException,
                    DataAccessException {

                List<Customer> list = new ArrayList<Customer>();
                while (rs.next()) {
                    Customer e = new Customer();
                    e.setCustomerNumber(rs.getInt(1));
                    e.setCustomerName(rs.getString(2));
                    e.setContactLastName(rs.getString(3));
                    e.setContactFirstName(rs.getString(4));
                    e.setPhone(rs.getString(5));
                    e.setAddressLine1(rs.getString(6));
                    e.setAddressLine2(rs.getString(7));
                    e.setCity(rs.getString(8));
                    e.setState(rs.getString(9));
                    e.setPostalCode(rs.getString(10));
                    e.setCreditLimit(rs.getString(12));
                    list.add(e);
                    System.out.println(e.getCustomerName());
                }
                return list;
            }
        });
    }


    public void insert(Customer p) {
        jdbcTemplate.update("insert into customers(customerName, contactLastName, contactFirstName, phone, addressLine1, addressLine2,city, state, postalCode, creditLimit ) values(?,?,?,?,?,?,?,?,?,?)",
                new Object[]{p.getCustomerName(), p.getContactLastName(), p.getContactLastName(), p.getPhone(), p.getAddressLine1(), p.getAddressLine2(), p.getCity(), p.getState(), p.getPostalCode(), p.getCreditLimit()});
    }

    public Customer selectByID(int customerNumber) {
        Customer produit = this.jdbcTemplate.queryForObject("select * from customers where customerNumber=?", new Object[]{customerNumber}, new CustomerMapper());
        return produit;
    }

    public void update(Customer p) {
        jdbcTemplate.update("update customers set customerName=?,  contactLastName=?, contactFirstName=?, phone=?, addressLine1=?, addressLine2=?, city=?, state=?, postalCode=?, creditLimit=? where customerNumber=?",
                new Object[]{p.getCustomerName(), p.getContactLastName(), p.getContactFirstName(), p.getPhone(), p.getAddressLine1(), p.getAddressLine2(), p.getCity(), p.getState(), p.getPostalCode(), p.getCreditLimit(), p.getCustomerNumber()});
    }

    public void delete(int customerNumber) {
        jdbcTemplate.update("delete from Products where customerNumber=?",
                new Object[]{customerNumber});
    }

    private class CustomerMapper implements RowMapper<Customer> {
        @Override
        public Customer mapRow(ResultSet rs, int i) throws SQLException {
            return new Customer(rs.getInt("customerNumber"), rs.getString("customerName"), rs.getString("contactLastName"), rs.getString("contactFirstName"), rs.getString("phone"), rs.getString("addressLine1"), rs.getString("addressLine2"), rs.getString("city"), rs.getString("state"), rs.getString("postalCode"), rs.getString("creditLimit"));
        }
    }
}
