package com.zbf.woaibianma.service;

import com.zbf.woaibianma.core.entity.Page;
import com.zbf.woaibianma.entity.Role;
import com.zbf.woaibianma.mapper.RoleMapper;
import com.zbf.woaibianma.mapper.TreeTestMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

@Component
public class TestRoleServiceImpl implements TestRoleService{
    @Autowired
	private RoleMapper roleMapper;
    @Autowired
    private TreeTestMapper treeTestMapper;
    
	public void findRolePage(Page<Role> page, Map<String,Object> map){
		page.setParams(map);
		List<Role> list=roleMapper.findPage(page);
		page.setResultList ( list );
	}


	public void updateRole(Map<String, Object> map) {
		
		String ids=map.get("ids").toString();
			
		String[] idssss=ids.split(",");
		Map<String,Object> mapp=null;

		roleMapper.deleteRoleMenu(map);
		Random rand=new Random();
		for(String id:idssss){
			
			mapp=new HashMap<String,Object>();
			mapp.put("id",System.currentTimeMillis()+rand.nextInt(1000));
			mapp.put("roleId",map.get("roleId"));
			mapp.put("menuId",id);

			roleMapper.insertIntoRoleMenu(mapp);
			
		}
		
	}
	
	
	//保存用户和角色的绑定关系
	public void saveRoleAndUser(Map<String,Object> map){
		//先删除
		roleMapper.deleteRoleAndUser(map);
		//再添加
		roleMapper.insertRoleAndUser(map);
	}
}
