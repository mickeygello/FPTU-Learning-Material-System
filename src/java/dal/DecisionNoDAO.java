package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.DecisionNo;

public class DecisionNoDAO extends DBContext {

    public DecisionNo getAllDecisionByID(String decisionNo) {
        String sql = "select * from decisionno where decision_No = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, decisionNo);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new DecisionNo(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public void editDecisionNo(String decision_no, String decisionName, String approvedDate, String note, String createDate, String fileName) {
        String sql = "update decisionno\n"
                + "set decisionName = ?,\n"
                + "    approvedDate = ?,\n"
                + "    note = ?,\n"
                + "    createDate = ?,\n"
                + "    fileName = ?\n"
                + "where decision_No = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, decisionName);
            ps.setString(2, approvedDate);
            ps.setString(3, note);
            ps.setString(4, createDate);
            ps.setString(5, fileName);
            ps.setString(6, decision_no);

            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        DecisionNoDAO dao = new DecisionNoDAO();
//        DecisionNo d = dao.getAllDecisionByID("333/QĐ-ĐHFPT");
//        System.out.println(d);
        dao.editDecisionNo("703/QĐ-ĐH-FPT", "Ban hành điều chỉnh đề cương kì Summer 2023", "08/17/2022", "", "08/19/2022", "");
        System.out.println("Success!");
    }
}
