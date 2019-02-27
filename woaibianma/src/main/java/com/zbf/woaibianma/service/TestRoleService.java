package com.zbf.woaibianma.service;

import com.zbf.woaibianma.core.entity.Page;
import com.zbf.woaibianma.entity.Role;

import java.util.Map;

public interface TestRoleService {

	public void findRolePage(Page<Role> page, Map<String, Object> map);

	public void updateRole(Map<String, Object> map);
	
	//保存用户和角色的绑定关系
	public void saveRoleAndUser(Map<String, Object> map);
}
