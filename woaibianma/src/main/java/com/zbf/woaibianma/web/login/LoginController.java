package com.zbf.woaibianma.web.login;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.zbf.woaibianma.core.common.CommonUtils;
import com.zbf.woaibianma.core.common.MD5;
import com.zbf.woaibianma.entity.Menu;
import com.zbf.woaibianma.entity.User;
import com.zbf.woaibianma.mapper.MenuMapper;
import com.zbf.woaibianma.mapper.UserMapper;
import com.zbf.woaibianma.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 作者：LCG
 * 创建时间：2018/11/26 9:38
 * 描述：
 */
@Controller
@RequestMapping("/login/loginContro/")
public class LoginController {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private MenuMapper menuMapper;
    @Autowired
    private LoginService loginService;

    @RequestMapping("shouye.dhtml")
    public String shouYe(Model model, HttpServletRequest request, ModelAndView modelAndView){
        model.addAttribute("errorLogin","");
        model.addAttribute("errorCode","");
        return "login";
    }

    /**
     * 登录认证
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("login.dhtml")
    public ModelAndView login(Model model,HttpServletRequest request,ModelAndView modelAndView){
        String userName=request.getParameter("userName");
        String passWord=request.getParameter("passWord");
        String verCode=request.getParameter("verCode");
        String sessionVerCode=(String)request.getSession().getAttribute("verCode");

        User uuuu=(User)getCurrentUser ( request );

        if(uuuu!=null){
            modelAndView.setViewName ( "main" );
            //重定向到登陆页面
            return modelAndView;
        }

        //验证用户名密码
        if(sessionVerCode==null||verCode==null||verCode.replace(" ","").equals("")){

            modelAndView.addObject ( "errorCode","验证码输入错误" );
            modelAndView.setViewName ( "login" );
            return modelAndView;
        }

        if(!(verCode.toLowerCase()).equals(sessionVerCode.toLowerCase())){//验证码错误
            modelAndView.addObject ( "errorCode","验证码输入错误" );
            modelAndView.setViewName ( "login" );
            //重定向到登陆页面
            return modelAndView;
        }
        User user=userMapper.getByUserName(userName);
        if(user==null){//用户名或者密码错误
            model.addAttribute("errorLogin","用户名或者密码错误！");
            modelAndView.addObject ( "errorLogin","用户名或者密码错误！" );
            modelAndView.setViewName ( "login" );
            //添加输错次数锁定账户的功能
            return modelAndView;
        }

        String pwd = MD5.encryptPassword ( passWord,passWord );
        if(!user.getPassWord().equals(pwd)){
            //重定向到登录页面
            modelAndView.addObject ( "errorLogin","用户名或者密码错误！" );
            modelAndView.setViewName ( "login" );
            return modelAndView;
        }


        Map<String,Object> filter=new HashMap<String,Object> ();
        filter.put("userId",user.getId());
        filter.put("leval",1);
        //获取当前用户拥有的权限
        List<String> userAuth=menuMapper.listMenuUser(filter);
        user.setUserAuthrity(userAuth);
        //将信息写入session
        request.getSession().setAttribute("user",user);
        List<Menu> menus=loginService.getMenus(filter);
        request.getSession().setAttribute("menus",menus);
        //2跳转到首页
        model.addAttribute("user",user);
        model.addAttribute("menus",menus);
        model.addAttribute("userId",user.getId());
        model.addAttribute("index","0");
        request.getSession().removeAttribute("verCode");

        modelAndView.setViewName ( "main" );
        return modelAndView;
    }

    @RequestMapping("top.dhtml")
    public String top(Model model,HttpServletRequest request){
        Map<String,Object> filter=new HashMap<String,Object>();
        filter.put("userId",request.getParameter("userId"));
        filter.put("leval",1);
        List<Menu> menus=loginService.getMenus(filter);
        model.addAttribute("menus",menus);
        return "top";
    }

    @RequestMapping("left.dhtml")
    public String left(Model model,HttpServletRequest request){
        int index=Integer.valueOf(request.getParameter("index"));
        @SuppressWarnings("unchecked")
        List<Menu> menus=(List<Menu>)request.getSession().getAttribute("menus");
        List<Menu> list=menus.get(index).getListm();
        model.addAttribute("menus",menus.get(index).getListm());
        return "left";
    }

    @RequestMapping("index.dhtml")
    public String index(Model model,HttpServletRequest request){

        return "index3";
    }

    @RequestMapping("loginOut.dhtml")
    public String loginOut(HttpServletRequest request,HttpServletResponse response){
        String sessionId=request.getSession().getId();
        request.getSession().removeAttribute(sessionId);
        Cookie[] cookies=request.getCookies();
        Cookie sCookie = null;
        String cookName ="defindSid";
        if (cookies != null && cookies.length > 0) {
            for (int i = 0; i < cookies.length; i++) {
                sCookie = cookies[i];
                if (sCookie.getName().equals(cookName)) {
                    cookies[i].setMaxAge(0);
                    cookies[i].setPath("/");
                    response.addCookie(cookies[i]);
                    break;
                }
            }
        }
        return "redirect:/login/loginContro/shouye.dhtml";
    }


    /**
     * 查询所有菜单
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("menuList.dhtml")
    public String menuList(Model model,HttpServletRequest request){

        return "baseInfo/menu";
    }

    @RequestMapping("menuDataGridList.dhtml")
    public void menuDataGridList(Model model,HttpServletRequest request,HttpServletResponse response){

        response.setContentType("text/html");
        response.setContentType("text/plain; charset=utf-8");
        User user= getCurrentUser(request);
        Map<String,Object> filter=new HashMap<String,Object>();
        filter.put("userId",user.getId());
        filter.put("leval",1);
        List<Menu> menus=loginService.getMenus(filter);
        //List<Menu> menus=(List<Menu>)request.getSession().getAttribute("menus");

        PrintWriter out=null;
        try {
            out = response.getWriter();
            out.print(this.getJson(menus));
            out.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }finally{
            if(out!=null){
                out.close();
            }
        }

    }

    public String getJson(List<Menu> list){
        JsonArray ja=this.addObject(list);
        return ja.toString();
    }

    public JsonArray addObject(List<Menu> list){
        JsonArray ja2=new JsonArray();
        for(Menu menu2:list){
            JsonObject jo2=new JsonObject();
            jo2.addProperty("id",menu2.getId());
            jo2.addProperty("menuName",menu2.getMenuName());
            jo2.addProperty("url",menu2.getUrl());
            jo2.addProperty("code1",menu2.getCode());
            jo2.addProperty("parentCode1",menu2.getParentCode());
            jo2.addProperty("leval",menu2.getLeval());

            if(menu2.getListm()!=null&&menu2.getListm().size()>0){
                JsonArray ja3=this.addObject(menu2.getListm());
                jo2.add("children",ja3);
            }

            ja2.add(jo2);
        }


        return ja2;

    }
    @RequestMapping(value="toSaveMenu.dhtml",method=RequestMethod.POST)
    public @ResponseBody
    String toSaveMenu(HttpServletRequest request){
        Map<String,Object> pam=CommonUtils.getParameterMap(request);
        loginService.saveMenu(pam);
        User user=getCurrentUser(request);

        //重新查询拥有的权限
        Map<String,Object> filter2=new HashMap<String,Object> ();
        filter2.put("userId",user.getId());
        filter2.put("leval",1);
        List<Menu> menus=loginService.getMenus ( filter2 );
        request.getSession().setAttribute("menus",menus);
        return "ok";
    }

    /**
     * 删除菜单
     * @param request
     * @return
     */
    @RequestMapping(value="deleteMenu.dhtml",method=RequestMethod.POST)
    public @ResponseBody String deleteMenu(HttpServletRequest request){
        String id=request.getParameter("id");
        User user=getCurrentUser(request);
        List<Menu> menus=(List<Menu>)request.getSession().getAttribute("menus");
        if(id!=null&&!"".equals(id)){
            List<Menu> listMenus= loginService.deleteByMenuId(Long.valueOf(id),""+user.getRoleId(),user);
            request.getSession().setAttribute("menus",listMenus);
        }
        return "ok";
    }

    @RequestMapping(value="updateMenu.dhtml",method=RequestMethod.POST)
    public @ResponseBody String updateMenu(HttpServletRequest request){
        Map<String,Object> filter=CommonUtils.getParameterMap(request);
        loginService.updateMenu(filter);
        return "ok";
    }

    public User getCurrentUser(HttpServletRequest request){
        User user=(User)request.getSession().getAttribute("user");
        return user;
    }

    public static void main(String[] args) {

        System.out.println ( MD5.encryptPassword ( "123456","123456" ));

    }

}
