package model;

import util.DBUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DeptDAO {
    public List<DeptVO> selectAll() {
        List<DeptVO> deptlist = new ArrayList<DeptVO>();
        Connection conn = DBUtil.getConnection();
        Statement st = null;
        ResultSet rs = null;
        String sql = "select * from departments order by dept_id";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()) {
                DeptVO dept = new DeptVO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4));
                deptlist.add(dept);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.dbClose(rs, st, conn);
        }

        return deptlist;
    }

    public int insertDept(DeptVO dept) {
        String sql = "insert into departments values(?, ?, ?, ?)";
        Connection conn = DBUtil.getConnection();
        PreparedStatement st = null;
        int result = 0;

        try {
            st = conn.prepareStatement(sql);

            st.setInt(1, dept.getDept_id());
            st.setString(2, dept.getDept_name());
            st.setInt(3, dept.getManager_id());
            st.setInt(4, dept.getLocation_id());

            result = st.executeUpdate();
            conn.commit();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.dbClose(null, st, conn);
        }
        return result;
    }
}
