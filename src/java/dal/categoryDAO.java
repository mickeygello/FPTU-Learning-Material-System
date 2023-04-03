/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.time.Year;
import java.util.ArrayList;
import java.util.List;
import model.Category;


public class categoryDAO extends DBContext {
//search topic / lọc syllabus ID // hoặc dowload. // sort theo student task

    public List<Category> getAllCategory(String sjcode) {
        List<Category> list = new ArrayList<>();
        String sql = "select * from categories where 1 = 1 ";
        if (sjcode != null && !sjcode.equals("")) {
          sql += " and category_name like '%" + sjcode +"%'";

        }
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
           
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                Category c = new Category();
                c.setId(rs.getInt(1));
                c.setCategoryName(rs.getString(2));
                c.setCategoryDetail(rs.getString(3));
                c.setStatus(rs.getInt(4));
                list.add(c);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public Category getByIDCategory(int mcode) {

        String sql = "select * from categories where id = ? ";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setInt(1, mcode);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Category c = new Category();
                c.setId(rs.getInt(1));
                c.setCategoryName(rs.getString(2));
                c.setCategoryDetail(rs.getString(3));
               c.setStatus(rs.getInt(4));
                return c;
            }
        } catch (Exception e) {
        }
        return null;
    }

    

    public void insert(Category c) {
        String sql = "INSERT INTO categories\n"
                + "(category_name,category_detail,status )\n"
                + "VALUES (?,?,?);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
//            System.out.println(c.getCategoryName());
            st.setString(1, c.getCategoryName());
//            System.out.println(c.getCategoryDetail());
            st.setString(2, c.getCategoryDetail());
//            System.out.println(c.getStatus());
            st.setInt(3, c.getStatus());
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void update(Category c) {
        String sql = "UPDATE categories SET category_name = ?, status = ?  Where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
           
            st.setString(1, c.getCategoryName());
           
            st.setInt(2, c.getStatus());
            st.setInt(3, c.getId());
            st.executeUpdate();
        } catch (SQLException e) {
        }

    }

   

    public boolean isLengthValid(String str, int minLength, int maxLength) {
        int length = str.length();
        return length >= minLength && length <= maxLength;
    }

    public boolean isYearValid(int year) {
        int currentYear = LocalDate.now().getYear();
        return Year.of(year).isBefore(Year.of(currentYear));
    }

    public void delete(int id) {
        String sql = "UPDATE categories\n"
                + "SET status = 0\n"
                + "WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
        }

    }

    public static void main(String[] args) {
        categoryDAO cd = new categoryDAO();
        List<Category> list = cd.getAllCategory("general");
        for (Category category : list) {
            System.out.println(category.toString());
        }
        Category c = cd.getByIDCategory(1);
        System.out.println(c.toString());
        System.out.println("===========================");
        
        Category c2 = new Category(6,"General knowledge and skills 22", 1);
        cd.insert(c2);
//            cd.update(c2);

        

    }
}
