package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Question;

public class questionDAO extends DBContext {
    
    public Question getAllQuestionByqid(String qid) {
        String sql = "select * from Question where qid = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, qid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Question(rs.getInt(1), rs.getInt(2), rs.getString(3), 
                                    rs.getString(4), rs.getInt(5));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Question> getAllQuestionID(String syllabusID) {
        List<Question> list = new ArrayList<>();
        String sql = "select * from Question where syllabusID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, syllabusID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Question(rs.getInt(1), rs.getInt(2), rs.getString(3),
                        rs.getString(4), rs.getInt(5)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public void deleteQuestion(String qid) {
        String sql = "delete from Question where qid = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, qid);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public void insertQuestion(String sessionNo, String qName, String qDetail, String syllabusID) {
        String sql = "INSERT INTO Question (sessionNo, qName, qDetail, syllabusID)  VALUES(?, ?, ?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, sessionNo);
            ps.setString(2, qName);
            ps.setString(3, qDetail);
            ps.setString(4, syllabusID);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void updateQuestion(String qid, String sessionNo, String qName, String qDetail, String syllabusID) {
        String sql = "update Question\n"
                + "set sessionNo = ?,\n"
                + " qName = ?, \n"
                + " qDetail = ?, \n"
                + " syllabusID = ?\n"
                + "where qid = ?;";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, sessionNo);
            ps.setString(2, qName);
            ps.setString(3, qDetail);
            ps.setString(4, syllabusID);
            ps.setString(5, qid);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        questionDAO dao = new questionDAO();
//        List<Question> list = dao.getAllQuestionID("7");
//        for (Question q : list) {
//            System.out.println(q);
//        }
//        dao.updateQuestion("8", "10", "abc", "abc", "7");
//        dao.deleteQuestion("11");
        dao.insertQuestion("13","abbbb" , "nnnnnnnnn", "7");
        System.out.println("success!");
    }
}
