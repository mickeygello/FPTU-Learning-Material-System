package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Curriculum;
import model.Syllabus;

public class SyllabusDAO extends DBContext {

    public List<Syllabus> getAllSyllabus() {
        List<Syllabus> list = new ArrayList<>();
        String sql = "select * from Syllabus";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Syllabus(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getInt(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getInt(15),
                        rs.getString(16),
                        rs.getString(17),
                        rs.getString(18)
                ));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

//    public Syllabus getAllSyllabusSubject() {
//        String sql = "select subjectCode from syllabus";
//        try {
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ResultSet rs = ps.executeQuery();
//            rs.getString(1);
//        } catch (Exception e) {
//            System.out.println(e);
//        }
//        return null;
//    }
    public void deleteSyllabus(String id) {
        String sql = "delete from Syllabus where syllabusID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void insertSyllabus(String sName, String sEnglish, String noCredit, String degreeLevel, String timeAllocation,
            String preRequisite, String description, String studentTask, String tools, String scoringScale,
            String decisionNo, String isApproved, String note, String minAvgMarkToPass, String isActive,
            String approvedDate, String subjectCode) {
        String sql = "INSERT INTO Syllabus (syllabusName, syllabusEnglish, noCredit, degreeLevel, timeAllocation, preRequisite, Description, studentTask, tools, scoringScale, decisionNo, isApproved, note, minAvgMarkToPass, isActive, approvedDate, subjectCode) \n"
                + "VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?, ?);";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, sName);
            ps.setString(2, sEnglish);
            ps.setString(3, noCredit);
            ps.setString(4, degreeLevel);
            ps.setString(5, timeAllocation);
            ps.setString(6, preRequisite);
            ps.setString(7, description);
            ps.setString(8, studentTask);
            ps.setString(9, tools);
            ps.setString(10, scoringScale);
            ps.setString(11, decisionNo);
            ps.setString(12, isApproved);
            ps.setString(13, note);
            ps.setString(14, minAvgMarkToPass);
            ps.setString(15, isActive);
            ps.setString(16, approvedDate);
            ps.setString(17, subjectCode);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public Syllabus getSyllabusByID(String id) {
        String sql = "select syllabusID, subjectCode, syllabusName, isActive, isApproved, decisionNo from Syllabus where syllabusID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Syllabus(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public Syllabus getAllSyllabusByID(String id) {
        String sql = "select * from Syllabus where syllabusID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Syllabus(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getInt(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getInt(15),
                        rs.getString(16),
                        rs.getString(17),
                        rs.getString(18)
                );
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public void updateSyllabus(String id, String scode, String sname, String sActive, String sApproved, String decisionNo) {
        String sql = "update Syllabus\n"
                + "	set subjectCode = ?,\n"
                + "    syllabusName = ?,\n"
                + "    isActive = ?,\n"
                + "    isApproved = ?,\n"
                + "    decisionNo = ?\n"
                + "where syllabusID = ?;";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, scode);
            ps.setString(2, sname);
            ps.setString(3, sActive);
            ps.setString(4, sApproved);
            ps.setString(5, decisionNo);
            ps.setString(6, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void editSyllabus(String sID, String sName, String sEnglish, String noCredit, String degreeLevel, String timeAllocation,
            String preRequisite, String description, String studentTask, String tools, String scoringScale,
            String decisionNo, String isApproved, String note, String minAvgMarkToPass, String isActive,
            String approvedDate, String subjectCode) {
        String sql = "update Syllabus\n"
                + "set subjectCode = ?,\n"
                + "    syllabusName = ?,\n"
                + "    syllabusEnglish = ?,\n"
                + "    noCredit = ?,\n"
                + "    degreeLevel = ?,\n"
                + "    timeAllocation = ?,\n"
                + "    preRequisite = ?,\n"
                + "    Description = ?,\n"
                + "    studentTask = ?,\n"
                + "    tools = ?,\n"
                + "    scoringScale = ?,\n"
                + "    decisionNo = ?,\n"
                + "    isApproved = ?,\n"
                + "    note = ?,\n"
                + "    minAvgMarkToPass = ?,\n"
                + "    isActive = ?,\n"
                + "    approvedDate = ?\n"
                + "where syllabusID = ?;";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, subjectCode);
            ps.setString(2, sName);
            ps.setString(3, sEnglish);
            ps.setString(4, noCredit);
            ps.setString(5, degreeLevel);
            ps.setString(6, timeAllocation);
            ps.setString(7, preRequisite);
            ps.setString(8, description);
            ps.setString(9, studentTask);
            ps.setString(10, tools);
            ps.setString(11, scoringScale);
            ps.setString(12, decisionNo);
            ps.setString(13, isApproved);
            ps.setString(14, note);
            ps.setString(15, minAvgMarkToPass);
            ps.setString(16, isActive);
            ps.setString(17, approvedDate);
            ps.setString(18, sID);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public int countSyllabus(String sSearch) {
        try {
            String sql = "select count(*) from Syllabus where subjectCode like ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + sSearch + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }

    public List<Syllabus> SearchSy(String sSearch, int index, int size) {
        try {
            String sql = "with x as(select ROW_NUMBER() over (order by subjectCode desc) as r, syllabusID, subjectCode, syllabusName, isActive, isApproved, decisionNo from Syllabus where subjectCode like ?)\n"
                    + "select * from x where r between ?*8-7 and ?*8";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + sSearch + "%");
            ps.setInt(2, index);
            ps.setInt(3, index);
            ResultSet rs = ps.executeQuery();
            List<Syllabus> list = new ArrayList<>();
            while (rs.next()) {
                Syllabus s = new Syllabus(rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
                list.add(s);
            }
            return list;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Syllabus> SearchSyllabus(String search, int index, int size) {
        List<Syllabus> list = new ArrayList<>();
        String sql = "SELECT syllabusID, subjectCode, syllabusName, isActive, isApproved, decisionNo FROM syllabus\n"
                + " where syllabusName like '%" + search + "%' \n"
                + " order by syllabusID asc limit " + (index - 1) * size + "," + size * index + ";";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Syllabus s = new Syllabus(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));
                list.add(s);
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public int countTotalSyllabus(String search) {
        int count = 0;
        String sql = "SELECT count(*) FROM syllabus\n"
                + " where syllabusName like '%" + search + "%'\n"
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

    public static void main(String[] args) {
        SyllabusDAO dao = new SyllabusDAO();
//        List<Syllabus> list = dao.getAllSyllabus();
//        for (Syllabus s : list) {
//            System.out.println(s);
//        }
//        Syllabus s = dao.getSyllabusByID("9306");
//        Syllabus s = dao.updateSyllabus('123456', 'rrrrr', 'guide data', 'deactive', 'deapproved', '11/12/2020');
//        dao.updateSyllabus("123456", "rrrrr", "guide data", "deactive", "deapproved", "12/12/2021");
//        int count = dao.countSyllabus("d");
//        System.out.println(count);

//        List<Syllabus> list = dao.SearchSy("pro", 1, 5);
//        for (Syllabus syllabus : list) {
//            System.out.println(syllabus);
//        }
//        dao.editSyllabus("234", "guide", "guide", "2", "", "", "", "", "", "guide", "5", "5", "5", "guide", "55", "guide", "guide", "abcd");
//        System.out.println("update success ");
//          dao.updateSyllabus("19", "abcd", "Authentication", "Active", "Deapproved", " ");
//          System.out.println("update success !!!");
//            Syllabus s = dao.getAllSyllabusSubject();
//            System.out.println(s);

        dao.insertSyllabus("ooooooooo", " ", "4", " ", " ", " ", " ", " ", " ", "6", " ", "Approved", " ", "5.0", "Active", "487/QĐ-ĐHFPT", "abcd");
        System.out.println("add success !!!");
    }
}
