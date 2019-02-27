package com.zbf.woaibianma.web;

import com.zbf.woaibianma.core.common.CommonUtils;
import com.zbf.woaibianma.service.TreeTestServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class TestController {
    
	@Autowired
	private TreeTestServiceImpl treeTestServiceImpl;
	
	@RequestMapping("/mytest.dhtml")
	public String test(HttpServletRequest request, Model model){
		
		
		return "test/test";
	}
	
	@RequestMapping(value="/testTree.dhtml",produces="text/html;charset=utf-8")
	@ResponseBody
	public String testTree(HttpServletRequest request, Model model){
		
		Map<String,Object> filter=CommonUtils.getParameterMap(request);
		filter.put("leval",1);
		String json=treeTestServiceImpl.treeJsonMySelf(filter);
         
		return json;
		
	}
	
	
	
	
	/**
	 * 遍历回显 角色菜单（树状数据）
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/testTreeRole.dhtml",produces="text/html;charset=utf-8")
	@ResponseBody
	public String testTreeRole(HttpServletRequest request, Model model){
		
		Map<String,Object> filter=CommonUtils.getParameterMap(request);
		if(filter.get("leval")!=null){
			filter.remove("leval");
		}
		filter.put("leval",1);
		String json=treeTestServiceImpl.treeJsonMySelfRole(filter);
         
		return json;
		
	}
	
	
	
}
