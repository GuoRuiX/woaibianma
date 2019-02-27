package com.zbf.woaibianma.web.user;

import com.zbf.woaibianma.core.common.CommonUtils;
import com.zbf.woaibianma.core.common.UID;
import com.zbf.woaibianma.core.entity.Page;
import com.zbf.woaibianma.entity.User;
import com.zbf.woaibianma.mapper.JiaoAnUserMapper;
import com.zbf.woaibianma.service.JiaoAnUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * 作者：LCG
 * 创建时间：2018/11/30 16:21
 * 描述：
 */
@Controller
public class JiaoAnUserController {

    @Autowired
    private JiaoAnUserService jiaoAnUserService;

    @RequestMapping("/userList.dhtml")
    public String userList(HttpServletRequest request,Model model){

        Map<String,Object> maps=CommonUtils.getParameterMap ( request );
        Page<User> userPage=new Page<User> ();
        if(maps.get ( "pageNo" )!=null){
            userPage.setPageNo ( Integer.valueOf ( maps.get ( "pageNo" ).toString () ) );
        }
        if(maps.get ( "pageSize" )!=null){
            userPage.setPageSize ( Integer.valueOf ( maps.get ( "pageSize" ).toString () ) );
        }
        userPage.setParams ( maps );
        jiaoAnUserService.getUserPage ( userPage );
        model.addAttribute ( "page", userPage);

        return "view/user/userList";
    }

    /**
     * Ajax分页
     * @param request
     * @param model
     * @return
     */
    @RequestMapping("/userListAjax.dhtml")
    @ResponseBody
    public Page<User> userListAjax(HttpServletRequest request, Model model){

        Map<String,Object> maps=CommonUtils.getParameterMap ( request );
        Page<User> userPage=new Page<User> ();
        if(maps.get ( "pageNo" )!=null){
            userPage.setPageNo ( Integer.valueOf ( maps.get ( "pageNo" ).toString () ) );
        }
        if(maps.get ( "pageSize" )!=null){
            userPage.setPageSize ( Integer.valueOf ( maps.get ( "pageSize" ).toString () ) );
        }
        userPage.setParams ( maps );
        jiaoAnUserService.getUserPage ( userPage );
        return userPage;
    }

    /**
     * 添加用户
     * @param request
     * @return
     */
    @RequestMapping("/addUser.dhtml")
    @ResponseBody
    public String addUser(HttpServletRequest request){
        Map<String,Object> maps=CommonUtils.getParameterMap ( request );
        //获取ID的工具类
        UID.next ();
        return "ok";
    }


    /**
     * 更新用回信息
     * @return
     */
    @RequestMapping("/updateUser.dhtml")
    @ResponseBody
    public String updateUserInfo(HttpServletRequest request){

        Map<String,Object> maps=CommonUtils.getParameterMap ( request );

        return "ok";
    }

    /**
     * 更新用回信息
     * @return
     */
    @RequestMapping("/deleteUserInfo.dhtml")
    @ResponseBody
    public String deleteUserInfo(HttpServletRequest request){

        Map<String,Object> maps=CommonUtils.getParameterMap ( request );

        return "ok";
    }


}
