package com.zbf.woaibianma.web;

import com.zbf.woaibianma.core.common.CommonUtils;
import com.zbf.woaibianma.core.entity.Page;
import com.zbf.woaibianma.entity.Role;
import com.zbf.woaibianma.service.TestRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;


@Controller
public class TestRoleController {
    @Autowired
	private TestRoleService testRoleService;
	
	@RequestMapping("/roleList.dhtml")
	public String roleList(HttpServletRequest request){

			   Page<Role> page=new Page<Role>();
			   Map<String,Object> filter=CommonUtils.getParameterMap(request);
			   testRoleService.findRolePage(page, filter);
		       page.setUrl ( "roleList.dhtml" );
			   request.setAttribute("page",page);
			   
		
		return "view/role/roleList";
	}
	
	@RequestMapping("/roleUpdate.dhtml")
	@ResponseBody
	public String roleUpdate(HttpServletRequest request){
		
		
		Map<String,Object> filter=CommonUtils.getParameterMap(request);
		String str=filter.get ( "roleId" ).toString ().replaceAll ( ",","" );
		filter.put ( "roleId",str );

		testRoleService.updateRole(filter);
		
		return "ok";
		
	}
	
	/**
	 * 用户管理页面  弹出层 分页代码
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/bindRolePage.dhtml",produces="text/html;charset=utf-8")
	public String bindRolePage(HttpServletRequest request){

			   Page<Role> page=new Page<Role>();	   
			   Map<String,Object> filter=CommonUtils.getParameterMap(request);
			   page.setUrl("/bindRolePage.dhtml");
			   testRoleService.findRolePage(page, filter);
			  
			   request.setAttribute("page",page);
			   request.setAttribute("roleName",filter.get("roleName")==null?"":filter.get("roleName"));
			   request.setAttribute("userId",filter.get("userId")==null?"":filter.get("userId"));

		return "user/rolePage2";
	}
	
	/**
	 * 保存用户和角色的绑定关系
	 * @return
	 */
	@RequestMapping("/saveRoleAndUser.dhtml")
	@ResponseBody
	public String saveRoleAndUser(HttpServletRequest request){
		 //拿到并把请求参数封装到map中
		 Map<String,Object> filter=CommonUtils.getParameterMap(request);
		 filter.put("id",System.currentTimeMillis());
		 
		 testRoleService.saveRoleAndUser(filter);
		 
		 return "ok";
	}
	
	//分页数据
	@RequestMapping("/getRolePage.dhtml")
	@ResponseBody
	public Page<Role> getRolePage(HttpServletRequest request){
		Page<Role> page=new Page<Role>();
		Map<String,Object> filter=CommonUtils.getParameterMap(request);
		if(filter.get ( "pageNumber" )!=null){
            page.setPageNo ( Integer.valueOf ( filter.get ( "pageNumber" ).toString () ) );
		}
		if(filter.get ( "pageSize" )!=null){
			page.setPageSize ( Integer.parseInt ( filter.get ( "pageSize" ).toString () ) );
		}
		testRoleService.findRolePage(page, filter);
		page.setUrl ( "" );

		return page;

	}


}
