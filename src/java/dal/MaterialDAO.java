/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.Year;
import java.util.ArrayList;
import java.util.List;
import model.Material;
import model.Subject;
import model.Syllabus;

public class MaterialDAO extends DBContext {

    public List<Material> getAllMaterial(String syllabusID) {
        List<Material> list = new ArrayList<>();
        String sql = "select * from Materials where syllabus_id = ? and status = 1";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, syllabusID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Material(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9), rs.getInt(10),
                        rs.getString(11), getSyllabus(rs.getInt(12)), rs.getInt(13)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    
    public List<Material> getAllAssessmentBySjCode(String sjcode, int syllabusID, int materialDescription, int publishedDate, String active, int index, int size) {
        List<Material> list = new ArrayList<>();
        String sql = "select * from Materials where 1=1";
         if (sjcode != null && !sjcode.equals("")) {
            sql += " and material_description like '%" + sjcode + "%'" + " or syllabus_id like '%" + sjcode + "%'";
        }
        if (active != null) {
            sql += " and status = 1";
        }
        if (syllabusID != 0) {
            sql += " and syllabusID = " + syllabusID;
        }
       
        if (materialDescription != 0 && publishedDate == 0) {
            if (materialDescription == 1) {
                sql += " order by material_description";
            } else {
                sql += " order by material_description desc";
            }
        } else if (publishedDate != 0 && materialDescription == 0) {
            if (publishedDate == 1) {
                sql += " order by published_date";
            } else {
                sql += " order by published_date desc";
            }

        } else if ((materialDescription != 0) && (publishedDate != 0)) {
            if (materialDescription == 1 && publishedDate == 1) {
                sql += " order by published_date , material_description";
            } else {
                sql += " order by published_date , material_description desc";
            }
        }

        if (materialDescription == 0 && publishedDate == 0) { // nếu mà ko chọn cái nào tức là hai cái đều bằng 0 mới dungf
            sql += " order by id asc limit " + (index - 1) * size + "," + size;
        } else {
            sql += " , id asc limit " + (index - 1) * size + "," + size;
        }
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            // thiếu subject code
//            ps.setString(1, sjcode);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Material(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9), rs.getInt(10),
                        rs.getString(11), getSyllabus(rs.getInt(12)), rs.getInt(13)));

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Material> getAllMateriallBySjCode(String sjcode, String active, int index, int size) {
        List<Material> list = new ArrayList<>();
        String sql = "select * from Materials where 1=1";
        if (sjcode != null && !sjcode.equals("")) {
            sql += " and material_description like '%" + sjcode + "%'" + " or syllabus_id like '%" + sjcode + "%'";
        }
        if (active != null) {
            sql += " and status = 1";
        }
        sql += " order by id asc limit " + (index - 1) * size + "," + size;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Material m = new Material();

                list.add(new Material(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9), rs.getInt(10),
                        rs.getString(11), getSyllabus(rs.getInt(12)), rs.getInt(13)));

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public int countTotalMaterials(String active) {
        String sql = "SELECT count(*) FROM materials where 1=1 ";
        if (active != null) {
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

    public Material getByIDMaterial(int mcode) {

        String sql = "select * from Materials where id = ? ";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setInt(1, mcode);
            ResultSet rs = ps.executeQuery();

//    private int id;
//    private String subject_Code;
//    private String subject_Name;
//    private String description;
//    private int no_credit;
//    private String degree_level;
//    private int combo_id;
//    private boolean status;
            if (rs.next()) {
                return new Material(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9), rs.getInt(10),
                        rs.getString(11), getSyllabus(rs.getInt(12)), rs.getInt(13));
            }
        } catch (Exception e) {
        }
        return null;
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

//    public Subject getSubject(String xSjCode) {
//
//        String sql = "select * from Subjects where subject_code = ?";
//        try {
//            PreparedStatement ps = connection.prepareStatement(sql);
//
//            ps.setString(1, xSjCode);
//            ResultSet rs = ps.executeQuery();
//
////    private int id;
////    private String subject_Code;
////    private String subject_Name;
////    private String description;
////    private int no_credit;
////    private String degree_level;
////    private int combo_id;
////    private boolean status;
//            if (rs.next()) {
//                return new Subject(rs.getInt(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getInt(5), rs.getString(6), rs.getInt(7), rs.getBoolean(8));
//            }
//        } catch (Exception e) {
//        }
//        return null;
//    }
    public void insert(Material m) {
        String sql = "INSERT INTO materials(material_description,author,publisher,published_date,edition,isbn,is_main,is_hard_copy,is_online,note,syllabus_id,status)\n"
                + "                VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, m.getMaterial_description());
            ps.setString(2, m.getAuthor());
            ps.setString(3, m.getPublisher());
            ps.setString(4, m.getPublished_date());
            ps.setString(5, m.getEdition());
            ps.setString(6, m.getIsbn());
            ps.setInt(7, m.getIs_main());
            ps.setInt(8, m.getIs_hard_copy());
            ps.setInt(9, m.getIs_online());
            ps.setString(10, m.getNote());
            ps.setInt(11, m.getSyllabus_id().getsID());
            ps.setInt(12, m.getStatus());
//System.out.println(m.getSubjectCode2());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void delete(int id) {
        String sql = "UPDATE materials\n"
                + "SET status = 0\n"
                + "WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
        }

    }

//    public void update(Material m) {
//        String sql = "UPDATE materials SET material_description = ?,author = ?,publisher = ?,published_date = ?,edition = ?,isbn = ?,is_main =?,is_hard_copy = ?,is_online = ?,note = ?,subject_code = ?,status` = ? WHERE `id` = ?";
//        try {
//            PreparedStatement ps = connection.prepareStatement(sql);
//             ps.setString(1, m.getMaterial_description());
//            ps.setString(2, m.getAuthor());
//            ps.setString(3, m.getPublisher());
//            ps.setString(4, m.getPublished_date());
//            ps.setString(5, m.getEdition());
//            ps.setString(6, m.getIsbn());
//            ps.setInt(7, m.getIs_main());
//            ps.setInt(8, m.getIs_hard_copy());
//            ps.setInt(9, m.getIs_online());
//            ps.setString(10, m.getNote());
//            ps.setString(11, m.getSubject_code().getSubject_Code());
//            ps.setInt(12, m.getStatus());
//            ps.setInt(13, m.getId());
//            ps.executeUpdate();
//        } catch (SQLException e) {
//        }
//
//    }
    public void update(Material m) {
        String sql = "UPDATE materials\n"
                + "SET\n"
                + "`material_description` = ?,\n"
                + "`author` = ?,\n"
                + "`publisher` = ?,\n"
                + "`published_date` = ?,\n"
                + "`edition` = ?,\n"
                + "`isbn` = ?,\n"
                + "`is_main` =?,\n"
                + "`is_hard_copy` = ?,\n"
                + "`is_online` = ?,\n"
                + "`note` = ?,\n"
                + "`syllabus_id` = ?,\n"
                + "`status` = ?\n"
                + "WHERE `id` = ?;\n";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, m.getMaterial_description());
            ps.setString(2, m.getAuthor());
            ps.setString(3, m.getPublisher());
            ps.setString(4, m.getPublished_date());
            ps.setString(5, m.getEdition());
            ps.setString(6, m.getIsbn());
            ps.setInt(7, m.getIs_main());
            ps.setInt(8, m.getIs_hard_copy());
            ps.setInt(9, m.getIs_online());
            ps.setString(10, m.getNote());
            ps.setInt(11, m.getSyllabus_id().getsID());
            ps.setInt(12, m.getStatus());
            ps.setInt(13, m.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
        }

    }

//    public List<Subject> getAllSubject(String sjcode) {
//        List<Subject> list = new ArrayList<>();
//        String sql = "select * from Subjects where 1=1 ";
//        if (sjcode != null && !sjcode.equals("")) {
//            sql += "and subject_code = " + sjcode;
//        }
//        try {
//            PreparedStatement ps = connection.prepareStatement(sql);
//            // thiếu subject code
////            ps.setString(1, sjcode);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Subject(rs.getInt(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getInt(5), rs.getString(6), rs.getInt(7), rs.getBoolean(8)));
//
//            }
//        } catch (Exception e) {
//            System.out.println(e);
//        }
//        return list;
//    }
    public List<Syllabus> getAllSyllabus(String sjcode) {
        List<Syllabus> list = new ArrayList<>();
        String sql = "select * from syllabus where 1=1 ";
        if (sjcode != null && !sjcode.equals("")) {
            int id = Integer.parseInt(sjcode);
            sql += "and syllabusID = " + id;
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

    public List<Material> searchMaterial(String value) {
        String sql = "select * from materials where 1 = 1";
        List<Material> list = new ArrayList<>();
        if (value != null && !value.equals("")) {
            sql += " and material_description like '%" + value + "%'" + " or subject_code like '%" + value + "%'";
        }
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            // thiếu subject code
//            ps.setString(1, sjcode);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Material m = new Material();

                list.add(new Material(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9), rs.getInt(10),
                        rs.getString(11), getSyllabus(rs.getInt(12)), rs.getInt(13)));

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;

    }

    public boolean isLengthValid(String str, int minLength, int maxLength) {
        int length = str.length();
        return length >= minLength && length <= maxLength;
    }

    public boolean isYearValid(int year) {
        int currentYear = LocalDate.now().getYear();
        return Year.of(year).isBefore(Year.of(currentYear));
    }

    public static void main(String[] args) {
//        List<Material> list = new ArrayList<>();
        MaterialDAO md = new MaterialDAO();
//        md.insert(new Material("alo", "nooone4", null, null, null,null, true, true, true, null, "SWP391", true));
//        int count = md.countTotalMaterials(""); // admin
//
//        String value="";
//        int valueSyllabusID = 0;
//        int valueCategory = 0;
//        int valueWeight = 0;
//        int index = 1;
//        List<Material> list = md.getAllAssessmentBySjCode(value, valueSyllabusID, valueCategory, valueWeight, "1", index, 6);
      List<Material> list = md.getAllMaterial("1");
for (Material material : list) {
            System.out.println(material.toString());
        }
//        md.delete(19);
//        Material m = md.getByIDMaterial(1);
//        System.out.println(m.toString());
//        System.out.println(md.isLengthValid("dang dinh quoc khanh", 20, 200));
//        list = md.getAllMateriallBySjCode("SWP391");
//        for (Material m : list) {
//            System.out.println(m.getMaterial_description());
//        }
    }
}
