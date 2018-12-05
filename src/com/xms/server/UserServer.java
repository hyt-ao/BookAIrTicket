package com.xms.server;

import com.xms.pojo.User;

public interface UserServer {
	public User findUsersByUserID(int id);
	public void updateUserByID(User user);
}
