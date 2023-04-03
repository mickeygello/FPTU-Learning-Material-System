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
public class PreRequisiteDAO extends MyDAO {

    public List<PreRequisite> getAll() {
        List<PreRequisite> list = new ArrayList<PreRequisite>();
        xSql = "select * from PreRequisite";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            PreRequisite s = null;
            while (rs.next()) {
                int id = rs.getInt(1);
                String sjCode = rs.getString(2);
                String reqSubject = rs.getString(3);
                String descriptions = rs.getString(4);
                s = new PreRequisite(id, sjCode, reqSubject, descriptions);
                list.add(s);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public PreRequisite getReqSubject(String xSjCode) {
        PreRequisite x = null;
        int xId;
        String xReqSubject;
        String xDescription;
        xSql = "select * from PreRequisite where sjCode=?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, xSjCode);
            rs = ps.executeQuery();
            if (rs.next()) {
                xId = rs.getInt("id");
                xReqSubject = rs.getString("reqSubject");
                xDescription = rs.getString("descriptions");
                x = new PreRequisite(xId, xSjCode, xReqSubject, xDescription);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (x);
    }

    public ArrayList<PreRequisite> getReqSubjectList(String search) {
        ArrayList<PreRequisite> list = new ArrayList<PreRequisite>();
        String sql = "SELECT id, sjCode, reqSubject, descriptions FROM PreRequisite\n"
                + " where sjCode like '%" + search + "%'\n"
                + " order by id asc ";

//        System.out.println(sql);
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new PreRequisite(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)));

            }
        } catch (Exception e) {
        }
        return list;
    }

    public void delete(int xId) {
        xSql = "delete from PreRequisite where id =?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, xId);
            ps.executeUpdate();
            //con.commit();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public PreRequisite getPreRequisite(int xId) {
        PreRequisite x = null;
        String xSjCode;
        String xPreRequisite;
        String xDescriptions;
        xSql = "select * from PreRequisite where id=?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, xId);
            rs = ps.executeQuery();
            if (rs.next()) {
                xSjCode = rs.getString("sjCode");
                xPreRequisite = rs.getString("reqSubject");
                xDescriptions = rs.getString("descriptions");
                x = new PreRequisite(xId, xSjCode, xPreRequisite, xDescriptions);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (x);
    }
    
    public void createPreRequisite(String xSjCode, String xReqSubject, String xDescription){
        String sql = "INSERT INTO `swp`.`PreRequisite` (`sjCode`, `reqSubject`, `descriptions`) VALUES ('" + xSjCode + "', '" + xReqSubject + "', '" + xDescription +"');";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void update(String xReqSubject, String xDes, int xId) {
        String sql = "UPDATE PreRequisite\n"
                + "SET\n"
                + "`reqSubject` = ?,"
                + "`descriptions` = ?,"
                + "WHERE `id` = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, xReqSubject);
            ps.setString(2, xDes);
            ps.setInt(3, xId);
            ps.executeUpdate();
        } catch (SQLException e) {
        }

    }
    
    public int countTotalPreRequisite(String search) {
        int count = 0;
        String sql = "SELECT count(*) FROM prerequisite\n"
                + " where sjCode like '%" + search + "%'\n"
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
    
        public List<PreRequisite> SearchLearningPath(String search, int index, int size) {
        List<PreRequisite> list = new ArrayList<>();
        String sql = "SELECT id, sjCode, reqSubject, descriptions FROM PreRequisite\n"
                + " where sjCode like '%" + search + "%'\n"
                + " order by id asc limit " + (index - 1) * size + "," + size * index + ";";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                PreRequisite s = new PreRequisite(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)
                );
                list.add(s);
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    

    public static void main(String[] args) {
        PreRequisiteDAO a = new PreRequisiteDAO();
//        a.createPreRequisite("accc", "DBI202", "none");
        a.update("SWP391", "sadadad", 22);
//        PreRequisite p = a.getPreRequisite(1);
//        System.out.println(p.getReqSubject());
//        ArrayList<PreRequisite> list = (ArrayList<PreRequisite>) a.getReqSubjectList("SWP");
//        for (int i = 0; i < list.size(); i++) {
//            System.out.println(list.get(i).toString());
//        }
//    a.delete(1);

//        PreRequisite p = new PreRequisite();
//        p = a.getReqSubject("SWP391");
//        System.out.println(p.getReqSubject());
    }
}
