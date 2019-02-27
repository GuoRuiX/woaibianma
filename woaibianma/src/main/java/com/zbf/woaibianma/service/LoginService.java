package com.zbf.woaibianma.service;


import com.zbf.woaibianma.core.entity.Page;
import com.zbf.woaibianma.entity.Menu;
import com.zbf.woaibianma.entity.User;

import java.util.List;
import java.util.Map;

public interface LoginService {
	public Page<User> getUserList(Page<User> page, Map<String, Object> filters);
    public User getUser();
    
    public List<Menu> getMenus(Map<String, Object> filter);
    
    public int saveMenu(Map<String, Object> map);
    
    public List<Menu> deleteByMenuId(Long id, String roleId,User user);
    
    public int updateMenu(Map<String, Object> filter);
}
