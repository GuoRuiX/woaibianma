package com.zbf.woaibianma.mapper;

import com.zbf.woaibianma.core.entity.Page;
import com.zbf.woaibianma.entity.Role;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface RoleMapper<Role>{

	public int insertIntoRoleMenu(Map<String, Object> map);

	public int deleteRoleMenu(Map<String, Object> map);
	
	
	//删除原来的用户和角色的绑定关系
	public int deleteRoleAndUser(Map<String, Object> map);
		
	//插入用户和角色的绑定关系
	public int insertRoleAndUser(Map<String, Object> map);

	List<Role> findPage(Page<Role> page);
}
