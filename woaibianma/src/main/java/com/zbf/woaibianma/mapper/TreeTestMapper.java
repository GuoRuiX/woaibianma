package com.zbf.woaibianma.mapper;

import com.zbf.woaibianma.entity.Menu;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;
@Mapper
public interface TreeTestMapper {
	public List<Menu> getTreeMenus(Map<String, Object> map);
	
	public List<Map<String,Object>> getMenusMySelf(Map<String, Object> filter);
	
	public List<Map<String,Object>> getRoleListById(Map<String, Object> map);
	
	public int insertIntoRoleMenu(Map<String, Object> map);
	public int deleteRoleMenu(Map<String, Object> map);
}
