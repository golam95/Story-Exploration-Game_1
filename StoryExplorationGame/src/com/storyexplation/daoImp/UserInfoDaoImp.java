package com.storyexplation.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.storyexplation.dao.UserInfoDao;
import com.storyexplation.main.DBConnection;
import com.storyexplation.model.UserInfo;

public class UserInfoDaoImp implements UserInfoDao {

	@Override
	public void add_playerInfo(UserInfo add_calorie) throws SQLException {
		Connection con = DBConnection.getConnecttion();
		String sql = "Insert into progress value(?,?,?,?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setInt(1, add_calorie.getUser_id());
			ps.setString(2, add_calorie.getUser_name());
			ps.setString(3, add_calorie.getUser_completemodule());
			ps.setString(4, add_calorie.getSelecttype());
			ps.executeUpdate();
			ps.close();
		} catch (Exception ex) {
			ex.printStackTrace();

		}

	}

	@Override
	public void delete_playerInfo() throws SQLException {
		Connection con = DBConnection.getConnecttion();
		String user_delete = "Delete from progress";
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(user_delete);
			ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public boolean check_playerName(String name) throws SQLException {
		Connection con = DBConnection.getConnecttion();
		String check_user = "select * from progress where name='" + name + "'";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(check_user);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				con.close();
				return true;
			}
		} catch (SQLException ex) {
			ex.printStackTrace();

		}

		return false;
	}

}
