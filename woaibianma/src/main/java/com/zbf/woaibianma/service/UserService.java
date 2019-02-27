package com.zbf.woaibianma.service;



import com.zbf.woaibianma.core.entity.Page;
import com.zbf.woaibianma.entity.User;

import java.util.Map;

public interface UserService {
   public User getUserByName(String loginName);
   
   public void insertUser(User user);
   
   public void findUserPage(Page<User> page, Map<String, Object> filter);
   
   
   public int saveAddUser(Map<String, Object> map);
}
