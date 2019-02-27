package com.zbf.woaibianma.service;

import com.zbf.woaibianma.core.entity.Page;
import com.zbf.woaibianma.entity.User;
import com.zbf.woaibianma.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Component
public class UserServiceImpl implements UserService{
    @Autowired
	private UserMapper userMapper;
	
	@Override
	public User getUserByName(String loginName) {
		// TODO Auto-generated method stub
		return userMapper.getByUserName(loginName);
	}
    
	public void insertUser(User user){

		userMapper.insert(user);
		
		//User user1=this.getUserByName("zhangsan");
		
		//user1.setBuMen(""+System.currentTimeMillis());
		//userDao.update(user1);

	}
	
	public void findUserPage(Page<User> page, Map<String,Object> filter){
		page.setParams(filter);
        //userDao.findPage(page, "findUserPage", filter);

		List<User> list= userMapper.findPage(page);

		page.setResultList ( list );

	}

	@Override
	public int saveAddUser(Map<String, Object> map) {

		return userMapper.saveAddUser(map);
		
	}
}
