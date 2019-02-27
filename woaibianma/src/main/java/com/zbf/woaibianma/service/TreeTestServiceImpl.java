package com.zbf.woaibianma.service;

import com.google.gson.Gson;
import com.zbf.woaibianma.entity.Menu;
import com.zbf.woaibianma.mapper.TreeTestMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Component
public class TreeTestServiceImpl {
    @Autowired
	private TreeTestMapper treeTestMapper;
	
	
	public String treeJson(Map<String,Object> filter){
		
		Gson gson=new Gson();
		
		List<Menu> list=treeTestMapper.getTreeMenus (filter);

		this.getOtherMenuByParentList(list, filter);
		
		return gson.toJson(list);
	}
	
	public void getOtherMenuByParentList(List<Menu> list,Map<String,Object> filter){
		
		for(Menu menu:list){
			filter.put("parentCode",menu.getCode());
			filter.put("leval",Integer.valueOf(menu.getLeval())+1);
			List<Menu> listLeval=treeTestMapper.getTreeMenus ( filter );
			
			if(listLeval.size()>0){
				menu.setListm(listLeval);
				this.getOtherMenuByParentList(listLeval,filter);
			}else{
				break;
			}
		}
		
	}
	
	
	
	//获取easyUI的要求的树状的数据结构
    public String treeJsonMySelf(Map<String,Object> filter){
		
		Gson gson=new Gson();
		
		List<Map<String,Object>> list=treeTestMapper.getMenusMySelf(filter);

		this.getOtherMenuByParentListMySelf(list, filter);
		
		return gson.toJson(list);
	}
	
     public void getOtherMenuByParentListMySelf(List<Map<String,Object>> list,Map<String,Object> filter){
		
		for(Map<String,Object> menu:list){
			filter.put("parentCode",menu.get("code"));
			filter.put("leval",Integer.valueOf(menu.get("leval").toString())+1);
			
			List<Map<String,Object>> listLeval=treeTestMapper.getMenusMySelf(filter);
			
			if(listLeval.size()>0){
				menu.put("children",listLeval);
				this.getOtherMenuByParentListMySelf(listLeval,filter);
			}else{
				break;
			}
		}
		
	}
	
     
     
     
     
     
   //获取easyUI的要求的树状的数据结构
     public String treeJsonMySelfRole(Map<String,Object> filter){
 		
 		Gson gson=new Gson();
 		
 		List<Map<String,Object>> list=treeTestMapper.getMenusMySelf(filter);

 		//查询原有的角色ID的权限菜单
 		List<Map<String,Object>> listRole=treeTestMapper.getRoleListById(filter);
 		
 		this.getOtherMenuByParentListMySelfRole(list, filter,listRole);

 		return gson.toJson(list);
 	}
 	
      public void getOtherMenuByParentListMySelfRole(List<Map<String,Object>> list,Map<String,Object> filter,List<Map<String,Object>> roleLIst){
 		
 		for(Map<String,Object> menu:list){
 			filter.put("parentCode",menu.get("code"));
 			filter.put("leval",Integer.valueOf(menu.get("leval").toString())+1);
 			
 			List<Map<String,Object>> listLeval=treeTestMapper.getMenusMySelf(filter);
 			//判断角色是否已经拥有权限信息，如果有的话设置checked属性为true===start
 			for(Map<String,Object> mr:roleLIst){
 				if(menu.get("id").toString().equals(mr.get("menuId").toString())){
 					//if(menu.get("leval").toString().equals("3")||menu.get("leval").toString().equals("4")){
 						menu.put("checked",true);
 					//}
 				}
 			}
 			//判断角色是否已经拥有权限信息，如果有的话设置checked属性为true===end
 			if(listLeval.size()>0){
 				menu.put("children",listLeval);
 				this.getOtherMenuByParentListMySelfRole(listLeval,filter,roleLIst);
 			}else{
 				break;
 			}
 		}
 		
 	}  
      
}
