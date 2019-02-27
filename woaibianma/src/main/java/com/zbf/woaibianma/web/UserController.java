package com.zbf.woaibianma.web;

import com.zbf.woaibianma.core.common.CommonUtils;
import com.zbf.woaibianma.core.entity.Page;
import com.zbf.woaibianma.entity.User;
import com.zbf.woaibianma.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * 作者：LCG
 * 创建时间：2018/11/27 8:37
 * 描述：
 */
@Controller
@RequestMapping("/userInfo/user/")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("userlist2.dhtml")
    public String userList2(HttpServletRequest request, Model model){
        try{
            Page<User> page=new Page<User> ();
            Map<String,Object> filter=CommonUtils.getParameterMap(request);
            String path=request.getServletPath();
            page.setUrl(path);
            if(filter.get("pageNo")!=null){
                page.setPageNo(Integer.parseInt(filter.get("pageNo").toString()));
            }
            userService.findUserPage(page, filter);
            model.addAttribute("page",page);
            model.addAttribute("queryMap",filter);
        }catch(Exception e){
            e.printStackTrace();
        }
        return "view/user/usList2";
    }

}
