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
import model.Subject;
import model.Subject;
import model.Syllabus;

public class AssessmentDAO extends DBContext {

    public List<Assessment> getAllAssessment(String syllabusID) {
        List<Assessment> list = new ArrayList<>();
        String sql = "select * from Assessments where syllabusID = ? and is_active = 1";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, syllabusID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Assessment as = new Assessment();
                as.setId(rs.getInt("id"));
                as.setSyllabusID2(getSyllabus(rs.getInt("syllabusID")));
                as.setCategory(rs.getString("category"));
                as.setType(rs.getString("type"));
                as.setPart(rs.getInt("part"));
                as.setWeight(rs.getString("weight"));
                as.setCompletionCriteria(rs.getString("completion_criteria"));
                as.setDuration(rs.getString("duration"));
                as.setClo(rs.getString("clo"));
                as.setQuestionType(rs.getString("question_type"));
                as.setNoQuestion(rs.getString("no_question"));
                as.setKnowledgeAndSkill(rs.getString("knowledge_and_skill"));
                as.setGradingGuide(rs.getString("grading_guide"));
                as.setNote(rs.getString("note"));
                as.setIsActive(rs.getInt("is_active"));

                list.add(as);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Assessment> getAllAssessmentBySjCode(String sjcode, int syllabusID, int category, int weight, String active, int index, int size) {
        List<Assessment> list = new ArrayList<>();
        String sql = "select * from Assessments where 1=1";
        if (sjcode != null && !sjcode.equals("")) {
           sql += " and ( category like '%" + sjcode + "%'" + " or completion_criteria like '%" + sjcode + "%' )";

        }
        if (syllabusID != 0) {
            sql += " and syllabusID = " + syllabusID;
        }
        if (active != null) {
            sql += " and is_active = 1";
        }
        if (category != 0 && weight == 0) {
            if (category == 1) {
                sql += " order by category";
            } else {
                sql += " order by category desc";
            }
        } else if (weight != 0 && category == 0) {
            if (weight == 1) {
                sql += " order by weight";
            } else {
                sql += " order by weight desc";
            }

        } else if ((category != 0) && (weight != 0)) {
            if (category == 1 && weight == 1) {
                sql += " order by weight, category";
            } else {
                sql += " order by weight, category desc";
            }
        }

        if (category == 0 && weight == 0) { // nếu mà ko chọn cái nào tức là hai cái đều bằng 0 mới dungf
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
                Assessment as = new Assessment();
                as.setId(rs.getInt("id"));
                as.setSyllabusID2(getSyllabus(rs.getInt("syllabusID")));
                as.setCategory(rs.getString("category"));
                as.setType(rs.getString("type"));
                as.setPart(rs.getInt("part"));
                as.setWeight(rs.getString("weight"));
                as.setCompletionCriteria(rs.getString("completion_criteria"));
                as.setDuration(rs.getString("duration"));
                as.setClo(rs.getString("clo"));
                as.setQuestionType(rs.getString("question_type"));
                as.setNoQuestion(rs.getString("no_question"));
                as.setKnowledgeAndSkill(rs.getString("knowledge_and_skill"));
                as.setGradingGuide(rs.getString("grading_guide"));
                as.setNote(rs.getString("note"));
                as.setIsActive(rs.getInt("is_active"));

                list.add(as);

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public int countTotalAssessment(String active) {
        String sql = "SELECT count(*) FROM Assessments where 1=1 ";
        if (active != null && !active.equals("")) {
            // nếu active khác null thì sẽ chuyển vào là 1 và lấy status = 1
            // nếu id = "" thì sẽ là admin
            sql += "and is_active = 1";
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

    public Assessment getByIDAssessment(int mcode) {

        String sql = "select * from Assessments where id = ? ";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setInt(1, mcode);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Assessment as = new Assessment();
                as.setId(rs.getInt("id"));
                as.setSyllabusID2(getSyllabus(rs.getInt("syllabusID")));
                as.setCategory(rs.getString("category"));
                as.setType(rs.getString("type"));
                as.setPart(rs.getInt("part"));
                as.setWeight(rs.getString("weight"));
                as.setCompletionCriteria(rs.getString("completion_criteria"));
                as.setDuration(rs.getString("duration"));
                as.setClo(rs.getString("clo"));
                as.setQuestionType(rs.getString("question_type"));
                as.setNoQuestion(rs.getString("no_question"));
                as.setKnowledgeAndSkill(rs.getString("knowledge_and_skill"));
                as.setGradingGuide(rs.getString("grading_guide"));
                as.setNote(rs.getString("note"));
                as.setIsActive(rs.getInt("is_active"));
                return as;
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

    public void insert(Assessment as) {
        String sql = "INSERT INTO Assessments (syllabusID, category,type,part,weight,completion_criteria,duration,clo,question_type,no_question, knowledge_and_skill,grading_guide,note,is_active) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
//        System.out.println(a.toString());
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, as.getSyllabusID2().getsID());
            ps.setString(2, as.getCategory());
            ps.setString(3, as.getType());
            ps.setInt(4, as.getPart());
            ps.setString(5, as.getWeight());
            ps.setString(6, as.getCompletionCriteria());
            ps.setString(7, as.getDuration());
            ps.setString(8, as.getClo());
            ps.setString(9, as.getQuestionType());
            ps.setString(10, as.getNoQuestion());
            ps.setString(11, as.getKnowledgeAndSkill());
            ps.setString(12, as.getGradingGuide());
            ps.setString(13, as.getNote());
            ps.setInt(14, as.getIsActive());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void update(Assessment as) {
        String sql = "UPDATE `assessments`\n"
                + "SET\n"
                + "`syllabusID` = ?,\n"
                + "`category` = ?,\n"
                + "`type` = ?,\n"
                + "`part` = ?,\n"
                + "`weight` = ?,\n"
                + "`completion_criteria` = ?,\n"
                + "`duration` = ?,\n"
                + "`clo` = ?,\n"
                + "`question_type` = ?,\n"
                + "`no_question` = ?,\n"
                + "`knowledge_and_skill` = ?,\n"
                + "`grading_guide` = ?,\n"
                + "`note` = ?,\n"
                + "`is_active` = ?\n"
                + "WHERE `id` = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, as.getSyllabusID2().getsID());
            ps.setString(2, as.getCategory());
            ps.setString(3, as.getType());
            ps.setInt(4, as.getPart());
            ps.setString(5, as.getWeight());
            ps.setString(6, as.getCompletionCriteria());
            ps.setString(7, as.getDuration());
            ps.setString(8, as.getClo());
            ps.setString(9, as.getQuestionType());
            ps.setString(10, as.getNoQuestion());
            ps.setString(11, as.getKnowledgeAndSkill());
            ps.setString(12, as.getGradingGuide());
            ps.setString(13, as.getNote());
            ps.setInt(14, as.getIsActive());
            ps.setInt(15, as.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
        }

    }

    public void delete(int id) {
        String sql = "delete from assessments\n"
                + "WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
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

    public static void main(String[] args) {
        AssessmentDAO ad = new AssessmentDAO();

//        List<Assessment> list = ad.getAllAssessmentBySjCode("a", 2, 0, 0, null, 1, 6); // 1: user
        List<Assessment> list = ad.getAllAssessment("1"); // 1: user
        for (Assessment a : list) {
            System.out.println(list.size());
            System.out.println(a.toString());;
        }
//        int count = ad.countTotalAssessment("");
//        System.out.println(count);
//        System.out.println("===========================");
//        Assessment as = new Assessment();
//        System.out.println("đây là thằng 1 " + ad.getByIDAssessment(1).toString());
//        System.out.println("----------------");
//        Syllabus s = new Syllabus();
//        System.out.println("Đay là thằng syllabus 1" + ad.getSyllabus(111));
        System.out.println("===========================");
//        List<Syllabus> list = ad.getAllSyllabus("");
//        for (Syllabus syllabus : list) {
//            System.out.println("List get All: " + syllabus.toString());
//        }
//        Assessment as = new Assessment(12, 222, "Assignmentssss", "on-going", 1, "15.0%", "Guided and reviewed in tutorial sessions; Cont. at home", null, "Assignment", "", "Problem(s) to solve by programming (LO1 - LO8)", "Individual or team work, guided by instructor, submission by a given deadline", "", "", 1);
//        ad.insert(as);
//ad.update(as);

    }
}
