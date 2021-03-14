package com.group2.group2.model;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDataContext {
    private final JdbcTemplate jdbcTemplate;

    public UserDataContext() {
        // La création du DriverManagerDataSource
        DriverManagerDataSource ds = new DriverManagerDataSource("jdbc:mysql://localhost:3306/classicmodels?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
        ds.setDriverClassName("com.mysql.jdbc.Driver");
        // La création jdbctemplate
        this.jdbcTemplate = new JdbcTemplate(ds);
    }
    public User selectByNameAndPassword(String password, String username) {
        System.out.println(password);
        System.out.println(username);
        return this.jdbcTemplate.query("select * from user where username=? AND password=?",new Object[]{username,password},new ResultSetExtractor<User>() {
            @Override
            public User extractData(ResultSet rs) throws SQLException,
                    DataAccessException {

                if(rs.next()==false){
                    return  null;
                }
                User e = new User();
                    e.setId(rs.getInt(1));
                    e.setName(rs.getString(2));
                    e.setUsername(rs.getString(3));
                    e.setPassword(rs.getString(4));
                    e.setType(rs.getInt(5));
                    e.setStatus(rs.getInt(6));
                return e;
            }
        });
    }

    private class UserMapper implements RowMapper<User> {
        @Override
        public User mapRow(ResultSet rs, int i) throws SQLException {
            return new User(rs.getInt("id"), rs.getString("name"), rs.getString("username"), rs.getString("password"), rs.getInt("type"), rs.getInt("status"));
        }
    }
}
