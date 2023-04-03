/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.*;

/**
 *
 * @author Admin
 */
public class CurriculumDAO extends DBContext {

    public ArrayList<Curriculum> getCurriculumAdmin(String search, int index, int size) {
        ArrayList<Curriculum> list = new ArrayList<Curriculum>();
        String sql = "SELECT id,Name, Code, SUBSTRING(Description, 1, 100),DecisionNo, TotalCredit,active FROM curriculum\n"
                + " where  Code like '%" + search + "%' or Name like '%" + search + "%' \n"
                + " order by id asc limit " + (index - 1) * size + "," + size * index + ";";
        System.out.println(sql);
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Curriculum(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5), rs.getInt(6), rs.getBoolean(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<Curriculum> getCurriculum(String search, int index, int size) {
        ArrayList<Curriculum> list = new ArrayList<Curriculum>();
        String sql = "SELECT id,Name, Code, SUBSTRING(Description, 1, 100),DecisionNo, TotalCredit,active FROM curriculum\n"
                + " where active = true and ( Code like '%" + search + "%' or  Name like '%" + search + "%' )\n"
                + " order by id asc limit " + (index - 1) * size + "," + size * index + ";";
        System.out.println(sql);
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Curriculum(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5), rs.getInt(6), rs.getBoolean(7)));

            }
        } catch (Exception e) {
        }
        return list;
    }

    public Curriculum getCurriculum(String id) {
        String sql = "SELECT * FROM curriculum\n"
                + " where id = '" + id + "'";
        System.out.println(sql);
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Curriculum(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5), rs.getInt(6), rs.getBoolean(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public int countTotalCurriculum(String search) {
        int count = 0;
        String sql = "SELECT count(*) FROM curriculum\n"
                + " where Code like '%" + search + "%' or Name like '%" + search + "%'\n"
                + " order by id asc  ;";

        try {
            System.out.println(sql);
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            System.out.println("ok");
            while (rs.next()) {
                System.out.println(rs.getInt(1));
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;
    }

    public void deleteCurriculum(String id) {
        String sql_update = "DELETE FROM  curriculum WHERE id = " + id;
        try {
            PreparedStatement stm = connection.prepareStatement(sql_update);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CurriculumDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void changeStatusCurriculum(String id, String status) {
        String sql_update = "UPDATE `swp`.`curriculum` SET `active` = b'" + status + "' WHERE (`id` = '" + id + "')";
        try {
            PreparedStatement stm = connection.prepareStatement(sql_update);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CurriculumDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        new CurriculumDAO().addCurriculum("name", "code", "desc", "2022-11-11", "154");
    }

    public void addCurriculum(String name, String code, String desc, String decision, String credit) {
        String sql = "INSERT INTO `swp`.`curriculum` (`Name`, `Code`, `Description`, `DecisionNo`, `TotalCredit`,`active`) VALUES ('" + name + "', '" + code + "', '" + desc + "', '" + decision + "', '" + credit + "','1');";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public void editCurriculum(String name, String code, String desc, String decision, String credit, String id) {
        String sql = "UPDATE `swp`.`curriculum` \n"
                + " SET `Name` = '" + name + "', `Code` = '" + code + "', `Description` = ?, `DecisionNo` = '" + decision + "', `TotalCredit` = '" + credit + "'\n"
                + " WHERE (`id` = '" + id + "');";
        try {
            System.out.println(sql);
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, desc);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CurriculumDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    //PLO
    public ArrayList<PLO> getAllPLO() {
        ArrayList<PLO> list = new ArrayList<>();
        String sql = "SELECT * from plotable";
        System.out.println(sql);
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new PLO(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public PLO getPLO(String pid) {
        String sql = "SELECT * from plotable where id= "+ pid;
        System.out.println(sql);
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new PLO(rs.getInt(1), rs.getString(2), rs.getString(3));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public ArrayList<PLO> getPLOByCurriId(String cid) {
        ArrayList<PLO> list = new ArrayList<>();
        String sql = "SELECT * FROM  swp.plotable p,swp.maps_po_curri m\n"
                + "where m.poid = p.id and m.curriculumid = " + cid;
        System.out.println(sql);
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new PLO(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void addPLO(String name, String desc) {
        String sql = "INSERT INTO `swp`.`plotable` (`name`, `description`) VALUES ('" + name + "', '" + desc + "');";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public void mapPLO(String cid, String pid) {
        String sql = "INSERT INTO `swp`.`maps_po_curri` (`curriculumid`, `poid`) VALUES ('" + cid + "', '" + pid + "');";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
//ELective

    public ArrayList<Elective> getAllELective() {
        ArrayList<Elective> list = new ArrayList<>();
        String sql = "SELECT * from elective";
        System.out.println(sql);
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Elective(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public Elective getELective(String eid) {
        String sql = "SELECT * from elective where id =" + eid;
        System.out.println(sql);
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Elective(rs.getInt(1), rs.getString(2), rs.getString(3));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public ArrayList<Elective> getELectiveByCurriId(String cid) {
        ArrayList<Elective> list = new ArrayList<>();
        String sql = "SELECT * FROM  swp.elective e, swp.map_elective_curi m \n"
                + "where e.id = m.electiveid and m.curriculumid =  " + cid;
        System.out.println(sql);
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Elective(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void addELective(String name, String sub) {
        String sql = "INSERT INTO `swp`.`elective` (`name`, `subject`) VALUES  ('" + name + "', '" + sub + "');";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    public void editELective(String name, String sub,String id) {
        String sql = "UPDATE `swp`.`elective` SET `name` = '" + name + "', `subject` = '" + sub + "' WHERE (`" + id + "` = '1');";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public void mapELective(String cid, String eid) {
        String sql = "INSERT INTO `swp`.`map_elective_curi` (`electiveid`, `curriculumid`) VALUES ('" + eid + "', '" + cid + "');";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    //Combo
    public ArrayList<Combo> getAllCombo() {
        ArrayList<Combo> list = new ArrayList<>();
        String sql = "SELECT * from combo";
        System.out.println(sql);
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Combo(rs.getInt(1), rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Combo getCombo(String cid) {
        String sql = "SELECT * from combo where id = " + cid;
        System.out.println(sql);
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Combo(rs.getInt(1), rs.getString(2));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public ArrayList<Combo> getComboByCurriId(String cid) {
        ArrayList<Combo> list = new ArrayList<>();
        String sql = "SELECT * FROM  swp.combo e, swp.maps_curri_combo m \n"
                + "where e.id = m.comboid and m.curriulumid =  " + cid;
        System.out.println(sql);
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Combo(rs.getInt(1), rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void addCombo(String name) {
        String sql = "INSERT INTO `swp`.`combo` (`name`) VALUES ('" + name + "');";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
     public void editCombo(String name,String id) {
        String sql = "UPDATE `swp`.`combo` SET `name` = '" + name + "' WHERE (`id` = '" + id + "');";
         System.out.println(sql);
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public void mapCombo(String cid, String comid) {
        String sql = "INSERT INTO `swp`.`maps_curri_combo` (`curriulumid`, `comboid`) VALUES  ('" + cid + "', '" + comid + "');";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
