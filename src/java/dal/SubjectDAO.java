/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import model.*;
import java.util.List;
import java.util.ArrayList;
import java.sql.Date;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author TUF GAMING
 */
public class SubjectDAO extends MyDAO {

    public List<Subject> getAll() {
        List<Subject> list = new ArrayList<Subject>();
        xSql = "select * from Subjects";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            Subject s = null;
            while (rs.next()) {
                int id = rs.getInt(1);
                String subject_Code = rs.getString(2);
                String subject_Name = rs.getString(3);
                String description = rs.getString(4);
                int no_credit = rs.getInt(5);
                String degree_level = rs.getString(6);
                int combo_id = rs.getInt(7);
                boolean status = rs.getBoolean(8);

                s = new Subject(id, subject_Code, subject_Name, description, no_credit, degree_level, combo_id, status);
                list.add(s);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Subject getSubject(String xSjCode) {
        Subject x = null;
        int xId;
        String xSjName;
        String xDescription;
        int xCredit;
        String xDegree_Level;
        int xCombo_id;
        boolean xStatus;
        xSql = "select * from Subjects where subject_code=?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, xSjCode);
            rs = ps.executeQuery();
            if (rs.next()) {
                xId = rs.getInt("id");
                xSjName = rs.getString("subject_name");
                xDescription = rs.getString("description");
                xCredit = rs.getInt("no_credit");
                xDegree_Level = rs.getString("degree_level");
                xCombo_id = rs.getInt("combo_id");
                xStatus = rs.getBoolean("status");
                x = new Subject(xId, xSjCode, xSjName, xDescription, xCredit, xDegree_Level, xCombo_id, xStatus);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (x);
    }

    public Subject getSubject(int xId) {
        Subject x = null;
        String xSjCode;
        String xSjName;
        String xDescription;
        int xCredit;
        String xDegree_Level;
        int xCombo_id;
        boolean xStatus;
        xSql = "select * from Subjects where id=?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, xId);
            rs = ps.executeQuery();
            if (rs.next()) {
                xSjCode = rs.getString("subject_code");
                xSjName = rs.getString("subject_name");
                xDescription = rs.getString("description");
                xCredit = rs.getInt("no_credit");
                xDegree_Level = rs.getString("degree_level");
                xCombo_id = rs.getInt("combo_id");
                xStatus = rs.getBoolean("status");
                x = new Subject(xId, xSjCode, xSjName, xDescription, xCredit, xDegree_Level, xCombo_id, xStatus);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (x);

    }

    public void delete(String xSjCode) {
        xSql = "delete from Subjects where subject_code =?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, xSjCode);
            ps.executeUpdate();
            //con.commit();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void changeStatusSubject(String sjCode, String status) {
        String sql_update = "UPDATE `swp`.`subjects` SET `status` = b'" + status + "' WHERE (`subject_code` = '" + sjCode + "')";
        try {
            PreparedStatement st = connection.prepareStatement(sql_update);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CurriculumDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Subject> getSubject(String search, String searchType) {
        ArrayList<Subject> list = new ArrayList<Subject>();
        String sql = "";
        switch (searchType) {
            case "1":
                sql = "SELECT id, subject_code, subject_name, description, no_credit, degree_level, combo_id, status FROM subjects\n"
                        + " where subject_code like '%" + search + "%'\n"
                        + " order by id asc ";
                break;
            case "2":
                sql = "SELECT id, subject_code, subject_name, description, no_credit, degree_level, combo_id, status FROM subjects\n"
                        + " where subject_name like '%" + search + "%'\n"
                        + " order by id asc";
                break;
        }

//        System.out.println(sql);
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Subject(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getInt(7), rs.getBoolean(8)));

            }
        } catch (Exception e) {
        }
        return list;
    }

    public void createSubject(String Code, String Name, String Desc, int Credit, String Degree, int comboID, boolean status) {
        String sql = "INSERT INTO `swp`.`subjects` (`subject_code`, `subject_name`, `description`, `no_credit`, `degree_level`, `combo_id`, `status`) VALUES ('" + Code + "', '" + Name + "', '" + Desc + "', '" + Credit + "', '" + Degree + "', '" + comboID + "', " + status + ");";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void update(int xId, String xSjCode, String xSjName, String xDes, int xCredit, String xDegree, int xCombo, boolean xStatus) {
        String sql = "UPDATE subjects "
                + "set subject_code = ?"
                + ", subject_name=?"
                + ", description=?"
                + ", no_credit=?"
                + ", degree_level = ?"
                + ", combo_id = ?"
                + ", status = ?\n"
                + "where id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, xSjCode);
            ps.setString(2, xSjName);
            ps.setString(3, xDes);
            ps.setInt(4, xCredit);
            ps.setString(5, xDegree);
            ps.setInt(6, xCombo);
            ps.setBoolean(7, xStatus);
            ps.setInt(8, xId);
            ps.executeUpdate();
            
        } catch (SQLException e) {
        }

    }
    
    public int countTotalSubject(String search) {
        int count = 0;
        String sql = "SELECT count(*) FROM subjects\n"
                + " where subject_code like '%" + search + "%'\n"
                + " order by id asc  ;";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println(rs.getInt(1));
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;
    }
    
    public List<Subject> SearchSubject(String search, int index, int size) {
        List<Subject> list = new ArrayList<>();
        String sql = "SELECT id, subject_code, subject_name, description, no_credit, degree_level, combo_id, status FROM subjects\n"
                + " where subject_code like '%" + search + "%' or subject_name like '%" + search + "%'\n"
                + " order by id asc limit " + (index - 1) * size + "," + size * index + ";";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Subject s = new Subject(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getBoolean(8)
                );
                list.add(s);
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static void main(String[] args) {
        SubjectDAO a = new SubjectDAO();
//        a.createSubject("tuna", "hh", "nothing here", 3, "Bachelor", 26, true);

//        a.update(49, "vdasvdvasd", "testupdate", "no description", 3, "Bachelor", 543, true);
//        Subject x = a.getSubject(49);
//        System.out.println(x.toString());
//            Subject x = a.getSubject(48);
//            System.out.println(x.toString());
//        List<Subject> list = a.getAll();
//        for(int i = 0; i < list.size(); i++){
//            System.out.println(list.get(i));
//        }

//        Subject s = new Subject();
//        s = a.getSubject("JPD113");
//        System.out.println(s.getSubject_Name());
//        a.changeStatusSubject("sss", "1");
    }
}
