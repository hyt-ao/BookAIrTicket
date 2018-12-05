package com.xms.server.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xms.pojo.User;
import com.xms.server.UserServer;

@Service("userServerImpl")
public class UserServerImpl implements UserServer {
	
	@Resource(name="user")
	private User user;

	@Override
	public User findUsersByUserID(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateUserByID(User user) {
		// TODO Auto-generated method stub

	}

}
