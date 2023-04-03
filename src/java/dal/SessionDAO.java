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
import model.Assessment;
import model.Material;
import model.Session;
import model.Subject;
import model.Subject;
import model.Syllabus;

public class SessionDAO extends DBContext {
//search topic / lọc syllabus ID // hoặc dowload. // sort theo student task

    public List<Session> getAllSession(String syllabusID) {
        List<Session> list = new ArrayList<>();
        String sql = "select * from session where syllabus_id = ? and status = 1";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, syllabusID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                Session s = new Session();
                s.setSesid(rs.getInt(1));
                s.setSyllabusID2(getSyllabus(rs.getInt(2)));
                s.setTopic(rs.getString(3));
                s.setLearning_teaching_type(rs.getString(4));
                s.setlO(rs.getString(5));
                s.setiTU(rs.getString(6));
                s.setStudentMaterial(rs.getString(7));
                s.setDownload(rs.getString(8));
                s.setStudentTask(rs.getString(9));
                s.setUrls(rs.getString(10));
                s.setStatus(rs.getInt(11));
                list.add(s);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Session> getAllSessionBySjCode(String sjcode, int syllabusID, String dowload, String active, int index, int size) {
        List<Session> list = new ArrayList<>();
        String sql = "select * from Session where 1=1";
        if (sjcode != null && !sjcode.equals("")) {
//             and name like '%" + describe + "%'";
//            sql += " and (material_description like '%"+sjcode+"%' or subject_code = " + sjcode+")";
//            sql += " and material_description like'%" +sjcode+"%'";
            sql += " and topic like '%" + sjcode + "%'" + " or learning_teaching_type like '%" + sjcode + "%'" + " or studentMaterial like '%" + sjcode + "%'" + " or studentTask like '%" + sjcode + "%'";
//            sql += " or subject_code = "+s
        }
        if (syllabusID != 0) {

            sql += " and syllabus_ID like '%" + syllabusID + "%'";
        }

        if (dowload != null && !dowload.equals("")) {

            sql += " and download like '%" + dowload + "%'";
        }
        if (active != null) {
            sql += " and status = 1";
        }
        sql += " order by id asc limit " + (index - 1) * size + "," + size;

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            // thiếu subject code
//            ps.setString(1, sjcode);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                Session s = new Session();
                s.setSesid(rs.getInt(1));
                s.setSyllabusID2(getSyllabus(rs.getInt(2)));
                s.setTopic(rs.getString(3));
                s.setLearning_teaching_type(rs.getString(4));
                s.setlO(rs.getString(5));
                s.setiTU(rs.getString(6));
                s.setStudentMaterial(rs.getString(7));
                s.setDownload(rs.getString(8));
                s.setStudentTask(rs.getString(9));
                s.setUrls(rs.getString(10));
                s.setStatus(rs.getInt(11));

                list.add(s);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public int countTotalSession(String active) {
        String sql = "SELECT count(*) FROM session where 1=1 ";
        if (active != null && !active.equals("")) {
            // nếu active khác null thì sẽ chuyển vào là 1 và lấy status = 1
            // nếu id = "" thì sẽ là admin
            sql += "and status = 1";
        }
        int count = 0;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;

    }

    public Session getByIDSession(int mcode) {

        String sql = "select * from Session where id = ? ";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setInt(1, mcode);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Session s = new Session();
                s.setSesid(rs.getInt(1));
                s.setSyllabusID2(getSyllabus(rs.getInt(2)));
                s.setTopic(rs.getString(3));
                s.setLearning_teaching_type(rs.getString(4));
                s.setlO(rs.getString(5));
                s.setiTU(rs.getString(6));
                s.setStudentMaterial(rs.getString(7));
                s.setDownload(rs.getString(8));
                s.setStudentTask(rs.getString(9));
                s.setUrls(rs.getString(10));
                s.setStatus(rs.getInt(11));
                s.setFilePath(rs.getString(12));
                return s;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Syllabus> getAllSyllabus(String sjcode) {
        List<Syllabus> list = new ArrayList<>();
        String sql = "select * from syllabus where 1=1 ";
        if (sjcode != null && !sjcode.equals("")) {
            sql += "and id = " + sjcode;
        }
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            // thiếu subject code
//            ps.setString(1, sjcode);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Syllabus(rs.getInt(1),
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
                        rs.getString(18)));

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public void insert(Session s) {
        String sql = "INSERT INTO `session`\n"
                + "(`syllabus_id`,`topic`,`learning_teaching_type`,`LO`,`ITU`,`studentMaterial`,`download`,`studentTask`,\n"
                + "`urls`,`status`)\n"
                + "VALUES (?,?,?,?,?,?,?,?,?,?);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, s.getSyllabusID2().getsID());
            st.setString(2, s.getTopic());
            st.setString(3, s.getLearning_teaching_type());
            st.setString(4, s.getlO());
            st.setString(5, s.getiTU());
            st.setString(6, s.getStudentMaterial());
            st.setString(7, s.getDownload());
            st.setString(8, s.getStudentTask());
            st.setString(9, s.getUrls());
            st.setInt(10, s.getStatus());
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void update(Session s) {
        String sql = "UPDATE session SET syllabus_id = ?, topic = ?, learning_teaching_type = ?, LO = ?, ITU = ?, studentMaterial = ?, download = ?, studentTask = ?, urls = ?, status = ? Where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            System.out.println(s.getSesid());
            st.setInt(1, s.getSyllabusID2().getsID());
            st.setString(2, s.getTopic());
            st.setString(3, s.getLearning_teaching_type());
            st.setString(4, s.getlO());
            st.setString(5, s.getiTU());
            st.setString(6, s.getStudentMaterial());
            st.setString(7, s.getDownload());
            st.setString(8, s.getStudentTask());
            st.setString(9, s.getUrls());
            st.setInt(10, s.getStatus());
            st.setInt(11, s.getSesid());
            st.executeUpdate();
        } catch (SQLException e) {
        }

    }

    public Syllabus getSyllabus(int xSjCode) {

        String sql = "select * from Syllabus where SyllabusID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setInt(1, xSjCode);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return new Syllabus(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
                        rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getInt(11), rs.getString(12),
                        rs.getString(13), rs.getString(14), rs.getInt(15), rs.getString(16), rs.getString(17), rs.getString(18));
            }
        } catch (Exception e) {
        }
        return null;
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
        String sql = "UPDATE session\n"
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
        SessionDAO sd = new SessionDAO();
//        List<Session> list = sd.getAllMaterial("1");
//        for (Session session : list) {
//            System.out.println(session.toString());
//        }

//        int count = sd.countTotalSession("");
//        System.out.println(count);
        System.out.println("===========================");
//        Session s = new Session(2, 4, "- Subject introduction OKi", "Offline", "LO1,2,3", "I", "This Syllabus,Student Materials", "SWP391", "Study materials", "Q&A", 1);
//        System.out.println(s.getSyllabusID());
//        sd.insert(s);
//        sd.update(s);
//        System.out.println("đây là thằng 1 " + sd.getByIDSession(1).toString());
//        System.out.println("----------------");
//        Syllabus s = new Syllabus();
//        System.out.println("Đay là thằng syllabus 1" + ad.getSyllabus(111));
        System.out.println("===========================");

    }
}
