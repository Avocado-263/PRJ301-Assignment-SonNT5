/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import com.oracle.wls.shaded.org.apache.bcel.generic.AALOAD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Class;
import model.Student;

/**
 *
 * @author thanh
 */
public class ClassDB extends DBContext<Class> {

    public ArrayList<Class> searchClassByID(String id) {
        ArrayList<Class> clas = new ArrayList<>();
        try {
            String sql = "select c.c_id, cl.name from class_member c, student s, class cl\n"
                    + "where c.s_id = s.s_id and cl.c_id = c.c_id and s.s_id = N'?'";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, id);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
//                Student st = new Student();
//                st.setId(rs.getString("s.s_id"));
//                st.setName(rs.getString("s.full_name"));
//                st.setGender(rs.getString("s.gender"));
//                st.setAddress(rs.getString("s.address"));
//                st.setDob(rs.getDate("s.dob"));               
                Class cls = new Class();
                cls.setId(rs.getString("c_id"));
                cls.setName(rs.getString("name"));
                clas.add(cls);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ClassDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return clas;

    }

    @Override
    public ArrayList<Class> list() {
        ArrayList<Class> clas = new ArrayList<>();
        try {
            String sql = "select c_id, [name] from class";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Class cl = new Class();
                cl.setId(rs.getString("c_id"));
                cl.setName(rs.getString("name"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ClassDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return clas;

    }

    @Override
    public Class get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Class model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Class model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Class model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
