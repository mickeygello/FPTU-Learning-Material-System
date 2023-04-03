package dal;


import model.User2;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.*;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author HP
 */
public class User2DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public ArrayList<User2> getListUser() {
        ArrayList<User2> list = new ArrayList<>();
        String query = "select * from users2";
        try {
            conn = new DBContext().connection;//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new User2(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public void updateAccount(int id, String name, String email, String number) {
        String query = "update users2 \n"
                + "set uname =?, \n"
                + "uemail = ?,\n"
                + "uphone = ?\n"
                + "where ID = ?";
        try {
            conn = new DBContext().connection;//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(4, id);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, number);
            rs = ps.executeQuery();
        } catch (Exception e) {
        }
    }

    public void deleteAccount(int id) {
        String query = "delete from Account\n"
                + "where ID = ?";
        try {
            conn = new DBContext().connection;//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        User2DAO dao = new User2DAO();
        System.out.println(dao.getListUser().get(0).getUemail());;

    }
}
