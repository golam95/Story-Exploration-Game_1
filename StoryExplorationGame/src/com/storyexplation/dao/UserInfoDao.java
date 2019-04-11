package com.storyexplation.dao;

import java.sql.SQLException;

import com.storyexplation.model.UserInfo;

public interface UserInfoDao {

	public void add_playerInfo(UserInfo info) throws SQLException;

	public void delete_playerInfo() throws SQLException;

	public boolean check_playerName(String check_playername) throws SQLException;

}
