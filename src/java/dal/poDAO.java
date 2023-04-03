package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.PO;

public class poDAO extends DBContext {

    public PO getAllPOBycloName(String cloName) {
        String sql = "select * from PO where cloName =  ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, cloName);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new PO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt("syllabusID"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public List<PO> getAllPOID(String syllabusID) {
        List<PO> list = new ArrayList<>();
        String sql = "select * from PO where syllabusID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, syllabusID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
//                return new PO(rs.getInt(1), 
//                            rs.getString(2), 
//                            rs.getString(3),
//                            rs.getInt(4));
                list.add(new PO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public void updatePO(String cloName, String cloDetails, String loDetails, String syllabusID) {
        String sql = "update PO\n"
                + "set cloDetails = ?,\n"
                + " loDetails = ?, \n"
                + " syllabusID = ?\n"
                + "where cloName = ?;";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, cloDetails);
            ps.setString(2, loDetails);
            ps.setString(3, syllabusID);
            ps.setString(4, cloName);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void deletePO(String cloName) {
        String sql = "delete from PO where cloName = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, cloName);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void insertSyllabus(String cloDetails, String loDetails, String syllabusID) {
        String sql = "INSERT INTO PO (cloDetails, loDetails, syllabusID) VALUES(?, ?, ?);";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, cloDetails);
            ps.setString(2, loDetails);
            ps.setString(3, syllabusID);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public int countPO(String syllabusID) {
        try {
            String sql = "select COUNT(cloName) from po where syllabusID = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, syllabusID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }

    public static void main(String[] args) {
        poDAO dao = new poDAO();
//          List<PO> list = dao.getAllPOID("7");
//          List<PO> list = dao.getAllPO();
//        for (PO p : list) {
//            System.out.println(p);
//        }

//        PO p = dao.getAllPOBycloName("1");
//        System.out.println(p);
//        dao.updatePO("9", "CLO5", "aaaUses streams to read and write data from/to different types of aaaaaaaaaa", "7");
//        dao.deletePO("7");
//        dao.insertSyllabus("CLO9", "abc", "7");
        int p = dao.countPO("7");
        System.out.println(p);
        System.out.println("update success !!!");

    }
}
