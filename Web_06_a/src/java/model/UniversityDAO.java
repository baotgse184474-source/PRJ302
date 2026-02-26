/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import utils.DbUtils;

/**
 *
 * @author tungi
 */
public class UniversityDAO {

    public UniversityDAO() {
    }

    // có thể bỏ search và chỉ dùng filter
    public ArrayList<UniversityDTO> searchByColum(String column, String value) {
        //list chứa kết quả
        ArrayList<UniversityDTO> result = new ArrayList<>();
        try { // tránh sập khi lỗi
            Connection conn = DbUtils.getConnection(); // kết nối database trong sql
            String sql = "SELECT * FROM tblUniversity WHERE " + column + "=?"; //Viết câu SQL tìm dữ liệu
            PreparedStatement ps = conn.prepareStatement(sql); //Chuẩn bị sẵn câu SQL
            ps.setString(1, value); // 1: dấu ? thứ nhất, value: giá trị cần tìm
            // trả về toàn bộ row thõa đk where
            ResultSet rs = ps.executeQuery(); // Kết quả trả về là bảng dữ liệu
            while (rs.next()) { // duyệt từng kết quả
                //Lấy dữ liệu từ database
                String id = rs.getString("id");
                String name = rs.getString("name");
                String shortName = rs.getString("shortName");
                String description = rs.getString("description");
                int foundedYear = rs.getInt("foundedYear");
                String address = rs.getString("address");
                String city = rs.getString("city");
                String region = rs.getString("region");
                String type = rs.getString("type");
                int totalStudents = rs.getInt("totalStudents");
                int totalFaculties = rs.getInt("totalFaculties");
                boolean isDraft = rs.getBoolean("isDraft");

                // Gom tất cả dữ liệu của 1 trường thành 1 object
                UniversityDTO u = new UniversityDTO(id, name, shortName, description, foundedYear, address, city, region, type, totalStudents, totalFaculties, isDraft);
                result.add(u);
            }
        } catch (Exception e) {
        }
        return result;
    }

    // lọc theo từ khóa
    public ArrayList<UniversityDTO> filterByColum(String column, String value) {
        ArrayList<UniversityDTO> result = new ArrayList<>();
        try {
            Connection conn = DbUtils.getConnection(); // connec đến sql
            String sql = "SELECT * FROM tblUniversity WHERE " + column + " LIKE ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + value + "%"); // "%" chứa từ cần tìm
            System.out.println(ps.toString()); // In SQL ra console
            ResultSet rs = ps.executeQuery(); // Chạy câu SQL, trả về nhiều dòng kết quả
            while (rs.next()) {
                String id = rs.getString("id");
                String name = rs.getString("name");
                String shortName = rs.getString("shortName");
                String description = rs.getString("description");
                int foundedYear = rs.getInt("foundedYear");
                String address = rs.getString("address");
                String city = rs.getString("city");
                String region = rs.getString("region");
                String type = rs.getString("type");
                int totalStudents = rs.getInt("totalStudents");
                int totalFaculties = rs.getInt("totalFaculties");
                boolean isDraft = rs.getBoolean("isDraft");

                UniversityDTO u = new UniversityDTO(id, name, shortName, description, foundedYear, address, city, region, type, totalStudents, totalFaculties, isDraft);
                result.add(u);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public ArrayList<UniversityDTO> searchByID(String ID) {
        return searchByColum("id", ID);
    }

    public ArrayList<UniversityDTO> searchByName(String name) {
        return searchByColum("name", name);
    }

    // đề thi thường filter
    public ArrayList<UniversityDTO> filterByName(String name) {
        return filterByColum("name", name);
    }

}
