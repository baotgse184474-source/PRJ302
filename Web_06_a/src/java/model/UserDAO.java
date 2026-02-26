/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import utils.DbUtils;

/**
 *
 * @author tungi
 */
public class UserDAO {

    public UserDAO() {
    }

    public UserDTO searchById(String username) {
        try {
            Connection conn = DbUtils.getConnection();
            // tạo sql để gửi lên database
            String sql = "SELECT * FROM tblUsers "
                    + " WHERE userID=?";
           
            System.out.println(sql);
  
            // ko có cái này thì ko gửi đc
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, username); // thêm giá trị vào ? thứ 1, sql vẫn là ?
            // trả về bản kết quả
            ResultSet rs = pst.executeQuery(); // gửi đi hỏi database
            
            UserDTO user = null;
            // lặp từng cột, hết thì false
            while (rs.next()) {
                String userID = rs.getString("userID"); // lấy dữ liệu cột userID
                String fullName = rs.getString("fullName");
                String password = rs.getString("password");
                String roleID = rs.getString("roleID");
                boolean status = rs.getBoolean("status");
                user = new UserDTO(userID, fullName, password, roleID, status);
            }
            
            System.out.println(user);
            
            return user;
        } catch (Exception e) {
            return null;
        }
    }

    public UserDTO login(String username, String password) {
        UserDTO u = searchById(username);
        if (u != null && u.getPassword().equals(password)) {
            return u;
        }
        return null;
    }

}
