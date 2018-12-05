package com.xms.mapper;

import java.util.List;

import com.xms.pojo.User;

public interface UserMapper {
	public List<User> findUsersByUserInfo() throws Exception;
	public User findUsersByUserID(int id) throws Exception;
	public void updateUserByID(User user) throws Exception;
}
